package controller.immobilier;

import java.io.IOException;
import java.util.List;

import Beans.Immobiliers;
import DAOs.ImmobiliersDAO.ImmobiliersDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ImmobilierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ImmobilierServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String query = queryFromRequestParams(request);
		List<String> proprtyType = new ImmobiliersDAOImpl().getImmobilierAttribute("type");
		List<String> villes = new ImmobiliersDAOImpl().getImmobilierAttribute("ville");	
		List<Immobiliers> proprties = new ImmobiliersDAOImpl().getImmobilierBySearchQuery(query);
		
		request.setAttribute("proprtyTypes", proprtyType);
		request.setAttribute("villes", villes);
		request.setAttribute("proprties", proprties);

		System.out.println(query);
		System.out.println(proprties);
		request.getRequestDispatcher("/view/front_office/search.jsp").forward(request, response);
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

	
	private String queryFromRequestParams(HttpServletRequest request) {
		
		String listing_type = request.getParameter("listing_type");
		String min_surface = request.getParameter("min_surface");
		String max_surface = request.getParameter("max_surface");
		String property_type = request.getParameter("property_type");
		String min_floor = request.getParameter("min_floor");
		String max_floor = request.getParameter("max_floor");
		String min_price = request.getParameter("min_price");
		String max_price = request.getParameter("max_price");
		String min_room_number = request.getParameter("min_room_nbr");
		String max_room_number = request.getParameter("max_room_nbr");
		String ville = request.getParameter("ville");
		String keyword = request.getParameter("keyword");

		StringBuilder sqlQuery = new StringBuilder();
		sqlQuery.append("SELECT * FROM immobilier.immobiliers WHERE true");

		if (max_surface != null && !max_surface.isEmpty() && min_surface != null && !min_surface.isEmpty()) {
		    sqlQuery.append(" AND (surface BETWEEN " + min_surface + " AND " + max_surface + ")");
		} else if (max_surface != null && !max_surface.isEmpty()) {
		    sqlQuery.append(" AND surface <= " + max_surface);
		} else if (min_surface != null && !min_surface.isEmpty()) {
		    sqlQuery.append(" AND surface >= " + min_surface);
		}

		if (property_type != null && !property_type.isEmpty()) {
		    sqlQuery.append(" AND type LIKE '%" + property_type + "%'");
		}

		if (listing_type != null && !listing_type.isEmpty()) {
		    sqlQuery.append(" AND listing_type = '" + listing_type + "'");
		}

		if (max_floor != null && !max_floor.isEmpty() && min_floor != null && !min_floor.isEmpty()) {
		    sqlQuery.append(" AND (nbr_etage BETWEEN " + min_floor + " AND " + max_floor + ")");
		} else if (max_floor != null && !max_floor.isEmpty()) {
		    sqlQuery.append(" AND nbr_etage <= " + max_floor);
		} else if (min_floor != null && !min_floor.isEmpty()) {
		    sqlQuery.append(" AND nbr_etage >= " + min_floor);
		}

		if (min_price != null && !min_price.isEmpty() && max_price != null && !max_price.isEmpty()) {
		    sqlQuery.append(" AND (prix BETWEEN " + min_price + " AND " + max_price + ")");
		} else if (min_price != null && !min_price.isEmpty()) {
		    sqlQuery.append(" AND prix >= " + min_price);
		} else if (max_price != null && !max_price.isEmpty()) {
		    sqlQuery.append(" AND prix <= " + max_price);
		}

		if (min_room_number != null && !min_room_number.isEmpty() && max_room_number != null && !max_room_number.isEmpty()) {
		    sqlQuery.append(" AND (room_nbr BETWEEN " + min_room_number + " AND " + max_room_number + ")");
		} else if (min_room_number != null && !min_room_number.isEmpty()) {
		    sqlQuery.append(" AND room_nbr >= " + min_room_number);
		} else if (max_room_number != null && !max_room_number.isEmpty()) {
		    sqlQuery.append(" AND room_nbr <= " + max_room_number);
		}

		if (ville != null && !ville.isEmpty()) {
		    sqlQuery.append(" AND ville LIKE '%" + ville + "%'");
		}

		if (keyword != null && !keyword.isEmpty()) {
		    sqlQuery.append(" AND (title LIKE '%" + keyword + "%' OR adresse LIKE '%" + keyword + "%')");
		}

		
		return sqlQuery.toString();
	}
	
}
