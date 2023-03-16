package DAOs.CommandeDAO;

import java.util.List;
import Beans.Commande;


public interface CommandeDao {
    List<Commande> getAllCommandes();
    Commande getCommandeById(Long id);
    void addCommande(Commande commande);
    void updateCommande(Commande commande);
    void deleteCommande(Long id);
}
