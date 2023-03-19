package DAOs.ImmobiliersDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import Beans.Immobiliers;
import Beans.User;
import DAOs.ImagesDAO.ImageDAOImpl;
import DataBase.ConnectionFactory;

public class ImmobiliersDAOImpl implements ImmobiliersDAO {

	private Connection connection;

	public ImmobiliersDAOImpl() {
		connection = ConnectionFactory.getInstance();
	}

	@Override
	public List<Immobiliers> getAllImmobilirs() {
		List<Immobiliers> immobiliers = new ArrayList<>();
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM immobiliers");

			while (resultSet.next()) {
				Immobiliers immobilier = new Immobiliers(resultSet.getLong("id"), resultSet.getString("title"),
						resultSet.getString("adresse"), resultSet.getString("surface"), resultSet.getString("pay"),
						resultSet.getString("ville"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"), resultSet.getLong("proprietaire_id"),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"),
						resultSet.getString("created_at"), resultSet.getString("updated_at"),
						resultSet.getString("deleted_at"));
				immobiliers.add(immobilier);
			}

			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			System.out.println("Error executing query: " + e.getMessage());
		}
		return immobiliers;
	}

	@Override
	public List<String> getImmobilierAttribute(String attr) {
		List<String> resu = new ArrayList<>();
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT distinct " + attr + " FROM immobiliers;");

			while (resultSet.next()) {
				resu.add(resultSet.getString(attr));
			}

			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			System.out.println("Error executing query: " + e.getMessage());
		}
		return resu;
	}

	@Override
	public Immobiliers getImmobilierById(Long id) {
		Immobiliers immobilier = null;
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM immobiliers WHERE id = ?");
			preparedStatement.setLong(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				immobilier = new Immobiliers(resultSet.getLong("id"), resultSet.getString("title"),
						resultSet.getString("adresse"), resultSet.getString("surface"), resultSet.getString("pay"),
						resultSet.getString("ville"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"), resultSet.getLong("proprietaire_id"),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"),
						resultSet.getString("created_at"), resultSet.getString("updated_at"),
						resultSet.getString("deleted_at"));
			}

			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			System.out.println("Error executing query: " + e.getMessage());
		}
		return immobilier;
	}

	@Override
	public List<Immobiliers> getImmobilierByUser(Long proprietaireId) {
		List<Immobiliers> immobilierList = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT * FROM immobiliers WHERE proprietaire_id = ? AND deleted_at IS NULL");
			preparedStatement.setLong(1, proprietaireId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Immobiliers immobilier = new Immobiliers(resultSet.getLong("id"), resultSet.getString("title"),
						resultSet.getString("adresse"), resultSet.getString("surface"), resultSet.getString("pay"),
						resultSet.getString("ville"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"), resultSet.getLong("proprietaire_id"),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"),
						resultSet.getString("created_at"), resultSet.getString("updated_at"),
						resultSet.getString("deleted_at"));
				immobilierList.add(immobilier);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return immobilierList;
	}

	@Override
	public void updateImmobilier(Immobiliers immobilier) {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"UPDATE immobiliers SET adresse=?, pay=?, ville=?, surface=?, nbr_etage=?, type=?, description=?, prix=?, disponibilite=?, proprietaire_id=?,bathroomNumber=? WHERE id=?");
			preparedStatement.setString(1, immobilier.getAdresse());
			preparedStatement.setString(2, immobilier.getPay());
			preparedStatement.setString(3, immobilier.getVille());
			preparedStatement.setString(4, immobilier.getSurface());
			preparedStatement.setInt(5, immobilier.getNbr_etage());
			preparedStatement.setString(6, immobilier.getType());
			preparedStatement.setString(7, immobilier.getDescription());
			preparedStatement.setDouble(8, immobilier.getPrix());
			preparedStatement.setBoolean(9, immobilier.getDisponibilite());
			preparedStatement.setLong(10, immobilier.getProprietaire_id());
			preparedStatement.setLong(12, immobilier.getId());
			preparedStatement.setInt(13, immobilier.getBathroomNumber());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void addImmobilier(Immobiliers immobilier, User user) {
		Connection connection = ConnectionFactory.getInstance();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"INSERT INTO immobiliers(adresse, pay, ville, surface, nbr_etage, type, description, prix, disponibilite, proprietaire_id, created_at,bathroomNumber) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)");
			preparedStatement.setString(1, immobilier.getAdresse());
			preparedStatement.setString(2, immobilier.getPay());
			preparedStatement.setString(3, immobilier.getVille());
			preparedStatement.setString(4, immobilier.getSurface());
			preparedStatement.setInt(5, immobilier.getNbr_etage());
			preparedStatement.setString(6, immobilier.getType());
			preparedStatement.setString(7, immobilier.getDescription());
			preparedStatement.setDouble(8, immobilier.getPrix());
			preparedStatement.setBoolean(9, immobilier.getDisponibilite());
			preparedStatement.setLong(10, user.getId());
			preparedStatement.setString(11, LocalDateTime.now().toString());
			preparedStatement.setInt(12, immobilier.getBathroomNumber());

			int result = preparedStatement.executeUpdate();
			if (result > 0) {
				System.out.println("Property added successfully!");
			} else {
				System.out.println("Failed to add property!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionFactory.closeConnexion(connection);
		}

	}

	@Override
	public void deleteImmobilier(Long id) {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM immobiliers WHERE id=?");
			preparedStatement.setLong(1, id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Immobiliers> getImmobilierByType(String type) {
		List<Immobiliers> immobiliers = new ArrayList<>();
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM immobiliers where type='" + type + "'");

			while (resultSet.next()) {
				Immobiliers immobilier = new Immobiliers(resultSet.getLong("id"), resultSet.getString("title"),
						resultSet.getString("adresse"), resultSet.getString("surface"), resultSet.getString("pay"),
						resultSet.getString("ville"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"), resultSet.getLong("proprietaire_id"),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"),
						resultSet.getString("created_at"), resultSet.getString("updated_at"),
						resultSet.getString("deleted_at"));
				immobiliers.add(immobilier);
			}

			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			System.out.println("Error executing query: " + e.getMessage());
		}
		return immobiliers;
	}

	@Override
	public List<Immobiliers> getImmobilierByCity(String city) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Immobiliers> getImmobilierByKeyWord(String KeyWord) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Immobiliers> getImmobilierByListingType(String listingType) {
		List<Immobiliers> immobiliers = new ArrayList<>();
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement
					.executeQuery("SELECT * FROM immobilier.immobiliers where listing_type = '" + listingType + "'");

			while (resultSet.next()) {
				Immobiliers immobilier = new Immobiliers(resultSet.getLong("id"), resultSet.getString("title"),
						resultSet.getString("adresse"), resultSet.getString("surface"), resultSet.getString("pay"),
						resultSet.getString("ville"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"), resultSet.getLong("proprietaire_id"),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"),
						resultSet.getString("created_at"), resultSet.getString("updated_at"),
						resultSet.getString("deleted_at"));
				immobiliers.add(immobilier);
			}

			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			System.out.println("Error executing query: " + e.getMessage());
		}
		return immobiliers;
	}

}
