package DAOs.ImagesDAO;

import java.util.List;

import Beans.Image;

public interface ImageDAO {
    public void addImage(Image image);
    public void updateImage(Image image);
    public void deleteImage(long id);
    public Image getImageById(long id);
    public List<Image> getAllImages();
    public List<Image> getAllImagesByImmobilier(long id);
}
