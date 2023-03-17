package controller.auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.websocket.server.PathParam;

import java.io.IOException;
import java.util.List;

import Beans.Immobiliers;
import DAOs.ImmobiliersDAO.ImmobiliersDAOImpl;

public class ImmobiliersConroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ImmobiliersConroller() {
		super();
	}

//
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//	}
//
//	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		//getALL
//		List<Immobiliers> list = new ImmobiliersDAOImpl().getAllImmobilirs();
//		System.out.println(list);

//		get by type
//		List<Immobiliers> list = new ImmobiliersDAOImpl().getImmobilierByType("office");
//		System.out.println(list);
		
//		get by ID
		Immobiliers impImmobilier = new ImmobiliersDAOImpl().getImmobilierById((long)1);
		System.out.println(impImmobilier);
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
