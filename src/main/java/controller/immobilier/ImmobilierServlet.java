package controller.immobilier;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import DAOs.ImmobiliersDAO.ImmobiliersDAOImpl;


public class ImmobilierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ImmobilierServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//    	PrintWriter out  = response.getWriter();
//    	
//        String pathInfo = request.getPathInfo();
//        if (pathInfo == null || pathInfo.equals("/")) {
//           
//        } else {
////            String productId = pathInfo.substring(1); // remove leading slash
////            out.print("with variable "+productId);
//        }
    	
    	List<String> proprtyType = new ImmobiliersDAOImpl().getImmobilierAttribute("type");
    	
    	request.setAttribute("proprtyTypes", proprtyType);
    	request.getRequestDispatcher("/view/front_office/search.jsp").forward(request, response);
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
