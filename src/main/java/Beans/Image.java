package Beans;
public class Image {

    private Long id;
    private Long imageableOwnerId;
    private String path;
    private String createdAt;
    private String updatedAt;
    private String deletedAt;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getImageableOwnerId() {
        return imageableOwnerId;
    }

    public void setImageableOwnerId(Long imageableOwnerId) {
        this.imageableOwnerId = imageableOwnerId;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getUpdatedAt() {
        return updatedAt;
    }

    public Image(Long id, Long imageableOwnerId, String path, String createdAt, String updatedAt, String deletedAt) {
        this.id = id;
        this.imageableOwnerId = imageableOwnerId;
        this.path = path;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.deletedAt = deletedAt;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getDeletedAt() {
        return deletedAt;
    }

    public void setDeletedAt(String deletedAt) {
        this.deletedAt = deletedAt;
    }

	public Image() {
		super();
	}

	@Override
	public String toString() {
		return "Image [id=" + id + ", imageableOwnerId=" + imageableOwnerId + ", path=" + path + ", createdAt="
				+ createdAt + ", updatedAt=" + updatedAt + ", deletedAt=" + deletedAt + "]";
	}
    
    
}
