package controller.backoffice;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.util.List;

import Beans.User;
import DAOs.ImmobiliersDAO.ImmobiliersDAOImpl;
import DAOs.userDAO.UserDAOImpl;

/**
 * Servlet implementation class ProfileSettingsServlet
 */
@MultipartConfig(
		  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		  maxFileSize = 1024 * 1024 * 10,      // 10 MB
		  maxRequestSize = 1024 * 1024 * 100   // 100 MB
		)
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
		User user = null;
		HttpSession session = request.getSession();
		if (session == null || session.getAttribute("user") == null) {
		    response.sendRedirect(request.getContextPath()+"/login");
		} else {
		    user = (User) session.getAttribute("user");
		    System.out.println(user);
		}
		if(user != null) {
			try {
				user.setNom(new java.util.Scanner(request.getPart("lname").getInputStream()).nextLine());
				user.setPrenom(new java.util.Scanner(request.getPart("fname").getInputStream()).nextLine());
				 /* Receive file uploaded to the Servlet from the HTML5 form */
			    Part filePart = request.getPart("avatar");
			    String fileName = filePart.getSubmittedFileName();
			    for (Part part : request.getParts()) {
			      part.write("C:\\Users\\Khalid\\Music\\" + fileName);
//			      part.write("C:\\images\\" + fileName);
			    }
			    user.setAvatar(fileName);
				new UserDAOImpl().updateUser(user);
				response.sendRedirect(request.getRequestURI());
				return;
			} catch (Exception e) {
				e.printStackTrace();
			}
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
