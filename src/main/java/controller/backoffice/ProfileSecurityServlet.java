package controller.backoffice;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utilsBeans.PassBasedEnc;

import java.io.IOException;
import java.util.List;

import Beans.User;
import DAOs.ImmobiliersDAO.ImmobiliersDAOImpl;
import DAOs.userDAO.UserDAOImpl;

/**
 * Servlet implementation class ProfileSecurityServlet
 */
public class ProfileSecurityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileSecurityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = null;
		HttpSession session = request.getSession();
		if (session == null || session.getAttribute("user") == null) {
		    response.sendRedirect(request.getContextPath()+"/login");
		} else {
		    user = (User) session.getAttribute("user");
		    System.out.println(user);
		}
		if(user != null) {
			List<Integer> counts = new ImmobiliersDAOImpl().getCounts();
			request.setAttribute("counts", counts);
			request.setAttribute("pageName", "security");
			request.getRequestDispatcher("/view/back_office/profileSecurity.jsp").forward(request, response);
			return;
		}
		response.sendRedirect("/login");
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = null;
		HttpSession session = request.getSession();
		if (session == null || session.getAttribute("user") == null) {
		    response.sendRedirect(request.getContextPath()+"/login");
		} else {
		    user = (User) session.getAttribute("user");
		    System.out.println(user);
		}
		if(user != null) {
			String email = request.getParameter("email");
			String currentPassword = request.getParameter("currentpassword");
			String newPassword = request.getParameter("newpassword");
			String confirmPassword = request.getParameter("confirmpassword");
			
			if(currentPassword != null) {
				String saltvalue = user.getSalt();
				String encryptedpassword = user.getPassword();

				Boolean status = PassBasedEnc.verifyUserPassword(currentPassword, encryptedpassword, saltvalue);

				if (status) {
					if(email != null) {
						user.setEmail(email);
					}
					if(newPassword != null && confirmPassword != null && confirmPassword.equals(newPassword)) {
						String saltvalue_sec = PassBasedEnc.getSaltvalue(30);
						String encryptedpassword_sec = PassBasedEnc.generateSecurePassword(newPassword, saltvalue);
						user.setSalt(saltvalue_sec);
						user.setPassword(encryptedpassword_sec);
					}
				}
				new UserDAOImpl().updateUser(user);
			}
			response.sendRedirect(request.getRequestURI());
			return;
		}
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
