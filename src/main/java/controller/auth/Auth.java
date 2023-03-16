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



@WebServlet("/auth")
public class Auth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Auth() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    switch (request.getParameter("action")) {
		case "login": {
			
			String email = request.getParameter("email");
	        String password = request.getParameter("password");

	        User user = new UserDAOImpl().login(email, password);
	        HttpSession session = request.getSession();

	        if (user != null) {
	            session.setAttribute("auth", user);
	            response.sendRedirect("/view/");
	        } else {
	            response.sendRedirect("/login.jsp?error=Invalid credentials");
	        }
	        
	        break;
		}case "signup":{

			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String email = request.getParameter("email");
			String tel = request.getParameter("tel");			
	        String password = request.getParameter("password");
	        String passwordConfirmation = request.getParameter("password_confirmation");


			/*
			 * String[] mutableHash = new String[1]; Function<String, Boolean> update = hash
			 * -> { mutableHash[0] = hash; return true; };
			 * 
			 * String hashPw1 = Hashing.hash(password); System.out.println(hashPw1);
			 */
	         
	        
	        User user = new UserDAOImpl().register(new User(lname, fname, "provider", tel, email, "hashedPass", null, LocalDateTime.now().toString(), LocalDateTime.now().toString(), null));
	        HttpSession session = request.getSession();
//
	        if (user != null) {
	            session.setAttribute("auth", user);
	            response.sendRedirect("/view/");
	        } else {
	            response.sendRedirect("/login.jsp?error=Invalid credentials");
	        }
//	        
	        break;
		}
		default:
			 response.sendRedirect(request.getContextPath());
		}
	    
	}
}
