package controller.auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

import Beans.User;
import DAOs.userDAO.UserDAOImpl;
import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utilsBeans.PassBasedEnc;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/view/auth/login.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


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
					response.sendRedirect(request.getContextPath() + "/agent");
					System.out.println(user);
				} else {
					response.sendRedirect(request.getContextPath() + "/login?error=Invalid credentials");
				}
			} else {
				response.sendRedirect(request.getContextPath() + "/login?error=Invalid credentials");
			}


	}
}