package DAOs.ImmobiliersDAO;

import java.util.List;

import Beans.Immobiliers;
import Beans.User;

public interface ImmobiliersDAO {
	
	public void addImmobilier(Immobiliers immobiliers, User user);
	public void updateImmobilier(Immobiliers immobiliers);
	public void deleteImmobilier(Long id);
	public Immobiliers getImmobilierById(Long id);
	public List<Immobiliers> getImmobilierByType(String type);
	public List<Immobiliers> getImmobilierByCity(String city);
	public List<Immobiliers> getImmobilierByKeyWord(String KeyWord);
	public List<Immobiliers> getAllImmobilirs();
	public List<Immobiliers> getImmobilierByUser(Long proprietaireId);
	public List<Immobiliers> getImmobilierByListingType(String listingType);
	public List<?> getImmobilierAttribute(String attr);
}
