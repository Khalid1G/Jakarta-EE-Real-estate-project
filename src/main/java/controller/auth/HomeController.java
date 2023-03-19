package controller.auth;

import java.io.IOException;
import java.util.List;

import Beans.Immobiliers;
import DAOs.ImmobiliersDAO.ImmobiliersDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HomeController() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<String> villes = new ImmobiliersDAOImpl().getImmobilierAttribute("ville");		
		List<String> proprtyType = new ImmobiliersDAOImpl().getImmobilierAttribute("type");
		
		List<Immobiliers> Apartments = new ImmobiliersDAOImpl().getImmobilierByType("apartment");
		List<Immobiliers> Villas = new ImmobiliersDAOImpl().getImmobilierByType("villa");
		List<Immobiliers> Homes = new ImmobiliersDAOImpl().getImmobilierByType("home");
		List<Immobiliers> Offices = new ImmobiliersDAOImpl().getImmobilierByType("office");
		List<Immobiliers> Buildings = new ImmobiliersDAOImpl().getImmobilierByType("building");
		List<Immobiliers> Townhouses = new ImmobiliersDAOImpl().getImmobilierByType("townhouse");
		List<Immobiliers> Shops = new ImmobiliersDAOImpl().getImmobilierByType("shop");
		List<Immobiliers> Garages = new ImmobiliersDAOImpl().getImmobilierByType("garage");
		
		
		List<Immobiliers> propertiesForSells = new ImmobiliersDAOImpl().getImmobilierByListingType("for sell");
		List<Immobiliers> propertiesFeatureds = new ImmobiliersDAOImpl().getImmobilierByListingType("Featured");
		List<Immobiliers> propertiesForRents = new ImmobiliersDAOImpl().getImmobilierByListingType("For Rent");
		
		request.setAttribute("villes", villes);
		request.setAttribute("proprtyTypes", proprtyType);
		request.setAttribute("apartmentsCount", Apartments.size());
		request.setAttribute("villasCount", Villas.size());
		request.setAttribute("homesCount", Homes.size());
		request.setAttribute("officesCount", Offices.size());
		request.setAttribute("buildingsCount", Buildings.size());
		request.setAttribute("townhousesCount", Townhouses.size());
		request.setAttribute("shopsCount", Shops.size());
		request.setAttribute("garagesCount", Garages.size());
		request.setAttribute("propertiesForSells", propertiesForSells);
		request.setAttribute("propertiesFeatureds", propertiesFeatureds);
		request.setAttribute("propertiesForRents", propertiesForRents);
		
		System.out.println(propertiesForRents);
		

		request.getRequestDispatcher("/view/front_office/index.jsp").forward(request, response);
	}

}
