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
		
		List<Immobiliers> Apartments = new ImmobiliersDAOImpl().getImmobilierByType("Apartment");
		List<Immobiliers> Villas = new ImmobiliersDAOImpl().getImmobilierByType("Villa");
		List<Immobiliers> Homes = new ImmobiliersDAOImpl().getImmobilierByType("Home");
		List<Immobiliers> Offices = new ImmobiliersDAOImpl().getImmobilierByType("Office");
		List<Immobiliers> Buildings = new ImmobiliersDAOImpl().getImmobilierByType("Building");
		List<Immobiliers> Townhouses = new ImmobiliersDAOImpl().getImmobilierByType("Townhouse");
		List<Immobiliers> Shops = new ImmobiliersDAOImpl().getImmobilierByType("Shop");
		List<Immobiliers> Garages = new ImmobiliersDAOImpl().getImmobilierByType("Garage");
		
		
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
