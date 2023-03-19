package controller.immobilier;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Beans.Immobiliers;
import DAOs.ImagesDAO.ImageDAOImpl;
import DAOs.ImmobiliersDAO.ImmobiliersDAOImpl;

public class SinglePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SinglePageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pathInfo = request.getPathInfo(); // get the path info after "/products/"
		if (pathInfo == null || pathInfo.equals("/")) {
			response.sendRedirect(request.getContextPath() + "/property");
			return;
		} else {
			try {
				long id = Long.parseLong(pathInfo.substring(1));

				Immobiliers immobilier = new ImmobiliersDAOImpl().getImmobilierById(id);
				request.setAttribute("immobilier", immobilier);
				request.getRequestDispatcher("/view/front_office/details.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
