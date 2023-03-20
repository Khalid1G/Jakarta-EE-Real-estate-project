package DAOs.ImmobiliersDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import Beans.Image;
import Beans.Immobiliers;
import DAOs.ImagesDAO.ImageDAOImpl;
import DAOs.userDAO.UserDAOImpl;
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
						resultSet.getString("adresse"), resultSet.getString("pay"), resultSet.getString("ville"),
						resultSet.getInt("surface"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"),
						new UserDAOImpl().getUserById(resultSet.getLong("proprietaire_id")),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"), resultSet.getString("created_at"),
						resultSet.getString("updated_at"), resultSet.getString("deleted_at"));
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
						resultSet.getString("adresse"), resultSet.getString("pay"), resultSet.getString("ville"),
						resultSet.getInt("surface"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"),
						new UserDAOImpl().getUserById(resultSet.getLong("proprietaire_id")),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"), resultSet.getString("created_at"),
						resultSet.getString("updated_at"), resultSet.getString("deleted_at"));
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
					.prepareStatement("SELECT * FROM immobiliers WHERE proprietaire_id = ? AND deleted_at IS NULL order by created_at desc");
			preparedStatement.setLong(1, proprietaireId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Immobiliers immobilier = new Immobiliers(resultSet.getLong("id"), resultSet.getString("title"),
						resultSet.getString("adresse"), resultSet.getString("pay"), resultSet.getString("ville"),
						resultSet.getInt("surface"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"),
						new UserDAOImpl().getUserById(resultSet.getLong("proprietaire_id")),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"), resultSet.getString("created_at"),
						resultSet.getString("updated_at"), resultSet.getString("deleted_at"));
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
			preparedStatement.setInt(4, immobilier.getSurface());
			preparedStatement.setInt(5, immobilier.getNbr_etage());
			preparedStatement.setString(6, immobilier.getType());
			preparedStatement.setString(7, immobilier.getDescription());
			preparedStatement.setDouble(8, immobilier.getPrix());
			preparedStatement.setBoolean(9, immobilier.getDisponibilite());
			preparedStatement.setLong(10, immobilier.getProprietaire().getId());
			preparedStatement.setLong(12, immobilier.getId());
			preparedStatement.setInt(13, immobilier.getBathroomNumber());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void addImmobilier(Immobiliers immobilier) {
		Connection connection = ConnectionFactory.getInstance();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"INSERT INTO immobiliers (title,adresse ,pay, ville, surface, nbr_etage, type, description, prix, disponibilite, proprietaire_id, bathroomNumber, listing_type,room_nbr, created_at, updated_at) "
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, immobilier.getTitle());
			preparedStatement.setString(2, immobilier.getAdresse());
			preparedStatement.setString(3, immobilier.getPay());
			preparedStatement.setString(4, immobilier.getVille());
			preparedStatement.setInt(5, immobilier.getSurface());
			preparedStatement.setInt(6, immobilier.getNbr_etage());
			preparedStatement.setString(7, immobilier.getType());
			preparedStatement.setString(8, immobilier.getDescription());
			preparedStatement.setDouble(9, immobilier.getPrix());
			preparedStatement.setBoolean(10, immobilier.getDisponibilite());
			preparedStatement.setLong(11, immobilier.getProprietaire().getId());
			preparedStatement.setInt(12, immobilier.getBathroomNumber());
			preparedStatement.setString(13, immobilier.getListing_type());
			preparedStatement.setInt(14, immobilier.getRoom_nbr());
			preparedStatement.setString(15, LocalDateTime.now().toString());
			preparedStatement.setString(16, LocalDateTime.now().toString());
			int result = preparedStatement.executeUpdate();
			if (result > 0) {
				System.out.println("Property added successfully!");
				PreparedStatement p = connection.prepareStatement("select max(id) as total from immobiliers");
				ResultSet rs = p.executeQuery();
				Long prop_id = null;
				if(rs.next()) {
					prop_id = rs.getLong("total");
					for (Image image : immobilier.getImages()) {
						PreparedStatement ps = connection.prepareStatement("insert into images (imageable_owner_id, path, created_at, updated_at) values (?,?,?,?)");
						ps.setLong(1, prop_id);
						ps.setString(2, image.getPath());
						ps.setString(3, LocalDateTime.now().toString());
						ps.setString(4, LocalDateTime.now().toString());
						ps.executeUpdate();
						
					}
					System.out.println("Property's images added successfully!");
				}
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
						resultSet.getString("adresse"), resultSet.getString("pay"), resultSet.getString("ville"),
						resultSet.getInt("surface"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"),
						new UserDAOImpl().getUserById(resultSet.getLong("proprietaire_id")),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"), resultSet.getString("created_at"),
						resultSet.getString("updated_at"), resultSet.getString("deleted_at"));
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
						resultSet.getString("adresse"), resultSet.getString("pay"), resultSet.getString("ville"),
						resultSet.getInt("surface"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"),
						new UserDAOImpl().getUserById(resultSet.getLong("proprietaire_id")),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"), resultSet.getString("created_at"),
						resultSet.getString("updated_at"), resultSet.getString("deleted_at"));
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
	public List<Immobiliers> getImmobilierBySearchQuery(String query) {

		List<Immobiliers> immobiliers = new ArrayList<>();
		StringBuilder sqlQuery = new StringBuilder();
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);

			while (resultSet.next()) {
				Immobiliers immobilier = new Immobiliers(resultSet.getLong("id"), resultSet.getString("title"),
						resultSet.getString("adresse"), resultSet.getString("pay"), resultSet.getString("ville"),
						resultSet.getInt("surface"), resultSet.getInt("bathroomNumber"), resultSet.getInt("nbr_etage"),
						resultSet.getString("type"), resultSet.getString("description"), resultSet.getDouble("prix"),
						resultSet.getBoolean("disponibilite"),
						new UserDAOImpl().getUserById(resultSet.getLong("proprietaire_id")),
						resultSet.getString("listing_type"),
						new ImageDAOImpl().getAllImagesByImmobilier(resultSet.getLong("id")),
						resultSet.getInt("room_nbr"), resultSet.getString("created_at"),
						resultSet.getString("updated_at"), resultSet.getString("deleted_at"));
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
	public List<Integer> getCounts() {
		try {
			String query = "SELECT COUNT(*) AS total_properties, SUM(CASE WHEN disponibilite = 1 THEN 1 ELSE 0 END) AS available_properties,SUM(CASE WHEN disponibilite = 0 THEN 1 ELSE 0 END) AS unavailable_properties FROM immobilier.immobiliers";
			PreparedStatement ps = connection.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				List<Integer> list = new ArrayList<Integer>();
				list.add(rs.getInt("total_properties"));
				list.add(rs.getInt("available_properties"));
				list.add(rs.getInt("unavailable_properties"));
				return list;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}



}
