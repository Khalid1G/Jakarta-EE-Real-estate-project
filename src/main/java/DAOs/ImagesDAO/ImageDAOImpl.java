
package DAOs.ImagesDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Beans.Image;
import DataBase.ConnectionFactory;

public class ImageDAOImpl implements ImageDAO {

    private Connection connection;

    public ImageDAOImpl() {
        connection = ConnectionFactory.getInstance();
    }

    @Override
    public void addImage(Image image) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO images(imageable_owner_id, path, created_at, updated_at, deleted_at) VALUES (?, ?, ?, ?, ?)");
            preparedStatement.setLong(1, image.getImageableOwnerId());
            preparedStatement.setString(2, image.getPath());
            preparedStatement.setString(3, image.getCreatedAt());
            preparedStatement.setString(4, image.getUpdatedAt());
            preparedStatement.setString(5, image.getDeletedAt());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateImage(Image image) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE images SET imageable_owner_id=?, path=?, created_at=?, updated_at=?, deleted_at=? WHERE id=?");
            preparedStatement.setLong(1, image.getImageableOwnerId());
            preparedStatement.setString(2, image.getPath());
            preparedStatement.setString(3, image.getCreatedAt());
            preparedStatement.setString(4, image.getUpdatedAt());
            preparedStatement.setString(5, image.getDeletedAt());
            preparedStatement.setLong(6, image.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteImage(long id) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM images WHERE id=?");
            preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Image getImageById(long id) {
        Image image = new Image();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM images WHERE id=?");
            preparedStatement.setLong(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                image.setId(rs.getLong("id"));
                image.setImageableOwnerId(rs.getLong("imageable_owner_id"));
                image.setPath(rs.getString("path"));
                image.setCreatedAt(rs.getString("created_at"));
                image.setUpdatedAt(rs.getString("updated_at"));
                image.setDeletedAt(rs.getString("deleted_at"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return image;
    }

    @Override
    public List < Image > getAllImages() {
        List < Image > images = new ArrayList < > ();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM images");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Image image = new Image();
                image.setId(rs.getLong("id"));
                image.setImageableOwnerId(rs.getLong("imageable_owner_id"));
                image.setPath(rs.getString("path"));
                image.setCreatedAt(rs.getString("created_at"));
                image.setUpdatedAt(rs.getString("updated_at"));
                image.setDeletedAt(rs.getString("deleted_at"));
                images.add(image);
            }
            return images;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

	@Override
	public List<Image> getAllImagesByImmobilier(long id) {
		List < Image > images = new ArrayList < > ();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM immobilier.images where imageable_owner_id = "+id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Image image = new Image();
                image.setId(rs.getLong("id"));
                image.setImageableOwnerId(rs.getLong("imageable_owner_id"));
                image.setPath(rs.getString("path"));
                image.setCreatedAt(rs.getString("created_at"));
                image.setUpdatedAt(rs.getString("updated_at"));
                image.setDeletedAt(rs.getString("deleted_at"));
                images.add(image);
            }
            return images;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
	}

}