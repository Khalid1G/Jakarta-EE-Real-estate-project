package DAOs.ImmobiliersDAO;


import java.util.List;

import Beans.Immobiliers;
import Beans.User;


public interface ImmobiliersDAO {
    public void addImmobilier(Immobiliers immobiliers, User user);
    public void updateImmobilier(Immobiliers immobiliers);
    public void deleteImmobilier(Long id);
    public Immobiliers getImmobilierById(Long id);
    public Immobiliers getImmobiliersByUser(Long proprietaireId);
    public List<Immobiliers> getAllImmobilirs();
	List<Immobiliers> getImmobilierByUser(Long proprietaireId);
}
