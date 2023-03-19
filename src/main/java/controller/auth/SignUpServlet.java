package controller.auth;

import java.io.IOException;
import java.time.LocalDateTime;

import Beans.User;
import DAOs.userDAO.UserDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utilsBeans.PassBasedEnc;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/auth/signup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String password = request.getParameter("password");
		String passwordConfirmation = request.getParameter("password_confirmation");

		String saltvalue = PassBasedEnc.getSaltvalue(30);
		String encryptedpassword = PassBasedEnc.generateSecurePassword(password, saltvalue);

		User user = new UserDAOImpl().register(new User(lname, fname, "provider", tel, email, encryptedpassword,
				saltvalue, null, LocalDateTime.now().toString(), LocalDateTime.now().toString(), null));
		HttpSession session = request.getSession();

		if (user != null) {
			session.setAttribute("auth", user);
			response.sendRedirect(request.getContextPath() + "/agent");
		} else {
			response.sendRedirect(request.getContextPath() + "/signup");
		}
		
	}

}
