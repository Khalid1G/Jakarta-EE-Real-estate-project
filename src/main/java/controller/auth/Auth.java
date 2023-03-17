package controller.auth;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/auth")
public class Auth extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Auth() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		switch (request.getParameter("action")) {
		case "login": {

			String email = request.getParameter("email");
			String password = request.getParameter("password");

			User user = new UserDAOImpl().getUserByEmail(email);
			if (user != null) {

				String saltvalue = user.getSalt();
				String encryptedpassword = user.getPassword();

				Boolean status = PassBasedEnc.verifyUserPassword(password, encryptedpassword, saltvalue);

				if (status) {
					HttpSession session = request.getSession();
					session.setAttribute("auth", user);
					response.sendRedirect("/view/");
					System.out.println(user);
				} else {
					response.sendRedirect(request.getContextPath() +"/view/login.jsp?error=Invalid credentials");	
				}
			} else {
				response.sendRedirect(request.getContextPath() +"/view/login.jsp?error=Invalid credentials");
			}

			break;
		}
		case "signup": {

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
				response.sendRedirect("/view/");
			} else {
				response.sendRedirect("/login.jsp?error=Invalid credentials");
			}
			break;
		}
		default:
			response.sendRedirect(request.getContextPath());
		}
	}
}
