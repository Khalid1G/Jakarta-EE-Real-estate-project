package controller.backoffice;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import Beans.User;
import DAOs.ImmobiliersDAO.ImmobiliersDAOImpl;

/**
 * Servlet implementation class ProfileSettingsServlet
 */
public class ProfileSettingsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileSettingsServlet() {
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
			request.setAttribute("pageName", "settings");
			request.getRequestDispatcher("/view/back_office/profileSettings.jsp").forward(request, response);
			return;
		}
		response.sendRedirect("/login");
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
