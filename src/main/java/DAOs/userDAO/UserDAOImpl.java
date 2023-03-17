package DAOs.userDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Beans.User;
import DataBase.ConnectionFactory;

public class UserDAOImpl implements UserDAO {

    private Connection connection;

    public UserDAOImpl() {
        connection = ConnectionFactory.getInstance();
    }

    @Override
    public User register(User user) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "INSERT INTO users(nom, prenom, role, tel, email, password,salt, created_at, updated_at, deleted_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            preparedStatement.setString(1, user.getNom());
            preparedStatement.setString(2, user.getPrenom());
            preparedStatement.setString(3, user.getRole());
            preparedStatement.setString(4, user.getTel());
            preparedStatement.setString(5, user.getEmail());
            preparedStatement.setString(6, user.getPassword());
            preparedStatement.setString(7, user.getSalt());
            preparedStatement.setString(8, user.getCreated_at());
            preparedStatement.setString(9, user.getUpdated_at());
            preparedStatement.setString(10, user.getDeleted_at());

            preparedStatement.executeUpdate();
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }


    @Override
    public void deleteUser(Long userId) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM users WHERE id=?");
            preparedStatement.setLong(1, userId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateUser(User user) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "UPDATE users SET nom=?, prenom=?, role=?, tel=?, avatar=?, updated_at=? WHERE id=?");

            preparedStatement.setString(1, user.getNom());
            preparedStatement.setString(2, user.getPrenom());
            preparedStatement.setString(3, user.getRole());
            preparedStatement.setString(4, user.getTel());
            preparedStatement.setString(5, user.getAvatar());
            preparedStatement.setString(6, user.getUpdated_at());
            preparedStatement.setLong(7, user.getId());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    @Override
    public User getUserByEmail(String email) {
        User user = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM users WHERE email=?");
            preparedStatement.setString(1, email);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user = new User(rs.getLong("id"), rs.getString("nom"), rs.getString("prenom"),
                        rs.getString("role"), rs.getString("tel"), rs.getString("email"),
                        rs.getString("password"),  rs.getString("salt"),rs.getString("avatar"), rs.getString("created_at"),
                        rs.getString("updated_at"), rs.getString("deleted_at"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public User getUserById(long id) {
        User user = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM users WHERE id=?");
            preparedStatement.setLong(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user = new User(rs.getLong("id"), rs.getString("nom"), rs.getString("prenom"),
                        rs.getString("role"), rs.getString("tel"), rs.getString("email"),
                        rs.getString("password"), rs.getString("salt"), rs.getString("avatar"), rs.getString("created_at"),
                        rs.getString("updated_at"), rs.getString("deleted_at"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }


}