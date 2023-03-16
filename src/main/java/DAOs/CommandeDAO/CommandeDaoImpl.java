package DAOs.CommandeDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Beans.Commande;
import DataBase.ConnectionFactory;
public class CommandeDaoImpl implements CommandeDao {
private Connection conn;
    public CommandeDaoImpl() {
    	conn = ConnectionFactory.getInstance();
    }

    @Override
    public List<Commande> getAllCommandes() {

        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Commande> commandes = new ArrayList<>();
        try {

            String sql = "SELECT * FROM commandes";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Commande commande = new Commande(
                        rs.getLong("id"),
                        rs.getLong("client_id"),
                        rs.getLong("immobilier_id"),
                        rs.getString("type_commande"),
                        rs.getString("date_debut"),
                        rs.getString("date_fin"),
                        rs.getString("created_at"),
                        rs.getString("updated_at"),
                        rs.getString("deleted_at")
                );
                commandes.add(commande);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionFactory.closeConnexion(conn);
        }
        return commandes;
    }

    @Override
    public Commande getCommandeById(Long id) {

        PreparedStatement stmt = null;
        ResultSet rs = null;
        Commande commande = null;
        try {
            String sql = "SELECT * FROM commandes WHERE id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setLong(1, id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                commande = new Commande(
                        rs.getLong("id"),
                        rs.getLong("client_id"),
                        rs.getLong("immobilier_id"),
                        rs.getString("type_commande"),
                        rs.getString("date_debut"),
                        rs.getString("date_fin"),
                        rs.getString("created_at"),
                        rs.getString("updated_at"),
                        rs.getString("deleted_at")
                );
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionFactory.closeConnexion(conn);
        }
        return commande;
    }

    @Override
    public void addCommande(Commande commande) {

        PreparedStatement stmt = null;
        try { 
            String sql = "INSERT INTO commandes (client_id, immobilier_id, type_commande, date_debut, date_fin) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setLong(1, commande.getClientId());
            stmt.setLong(2, commande.getImmobilierId());
            stmt.setString(3, commande.getTypeCommande());
            stmt.setString(4, commande.getDateDebut());
            stmt.setString(5, commande.getDateFin());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionFactory.closeConnexion(conn);
        }
    }
    @Override
    public void deleteCommande(Long id) {

        PreparedStatement stmt = null;
        try {
            String sql = "DELETE FROM commandes WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setLong(1, id);
            stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionFactory.closeConnexion(conn);
        }
    }

    @Override
    public void updateCommande(Commande commande) {
        try {
            PreparedStatement stmt = null;
            String sql = "UPDATE commandes SET client_id=?, immobilier_id=?, type_commande=?, date_debut=?, date_fin=?, updated_at=? WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setLong(1, commande.getClientId());
            stmt.setLong(2, commande.getImmobilierId());
            stmt.setString(3, commande.getTypeCommande());
            stmt.setString(4, commande.getDateDebut());
            stmt.setString(5, commande.getDateFin());
            stmt.setString(6, commande.getUpdatedAt());
            stmt.setLong(7, commande.getId());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionFactory.closeConnexion(conn);
        }
    }

}
