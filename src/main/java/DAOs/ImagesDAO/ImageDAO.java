package DAOs.ImagesDAO;

import java.util.List;

import Beans.Image;

public interface ImageDAO {
    public void addImage(Image image);
    public void updateImage(Image image);
    public void deleteImage(Long id);
    public Image getImageById(Long id);
    public List<Image> getAllImages();
}
