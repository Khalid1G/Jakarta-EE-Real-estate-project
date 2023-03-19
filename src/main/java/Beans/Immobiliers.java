package Beans;

import java.util.List;

public class Immobiliers {
    private Long id;
    private String title;
    private String adresse;
    private String pay;
    private String ville;
    private int surface;
    private int bathroomNumber;
    private int nbr_etage;
    private String type;
    private String description;
    private Double prix;
    private Boolean disponibilite;
    private Long proprietaire_id;
    private String listing_type;
    private int room_nbr;
    private String created_at;
    private String updated_at;
    private String deleted_at;
    private List<Image> images;

    public int getRoom_nbr() {
		return room_nbr;
	}

	public void setRoom_nbr(int room_nbr) {
		this.room_nbr = room_nbr;
	}

	public Long getId() {
        return id;
    }


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setId(Long id) {
        this.id = id;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getPay() {
        return pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public int getSurface() {
        return surface;
    }



    public void setSurface(int surface) {
        this.surface = surface;
    }


    public Immobiliers(Long id, String title, String adresse, String pay, String ville, int surface, int bathroomNumber,
			int nbr_etage, String type, String description, Double prix, Boolean disponibilite, Long proprietaire_id,
			String listing_type, List<Image> images,int room_nbr, String created_at, String updated_at, String deleted_at) {
		super();
		this.id = id;
		this.title = title;
		this.adresse = adresse;
		this.pay = pay;
		this.ville = ville;
		this.surface = surface;
		this.bathroomNumber = bathroomNumber;
		this.nbr_etage = nbr_etage;
		this.type = type;
		this.description = description;
		this.prix = prix;
		this.room_nbr = room_nbr;
		this.disponibilite = disponibilite;
		this.proprietaire_id = proprietaire_id;
		this.listing_type = listing_type;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.deleted_at = deleted_at;
		this.images = images;
	}

	public List<Image> getImages() {
		return images;
	}

	public void setImages(List<Image> images) {
		this.images = images;
	}

	public int getNbr_etage() {
        return nbr_etage;
    }

    public void setNbr_etage(int nbr_etage) {
        this.nbr_etage = nbr_etage;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrix() {
        return prix;
    }

    public void setPrix(Double prix) {
        this.prix = prix;
    }

    public Boolean getDisponibilite() {
        return disponibilite;
    }

    public void setDisponibilite(Boolean disponibilite) {
        this.disponibilite = disponibilite;
    }

    public Long getProprietaire_id() {
        return proprietaire_id;
    }

    public void setProprietaire_id(Long proprietaire_id) {
        this.proprietaire_id = proprietaire_id;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public int getBathroomNumber() {
        return bathroomNumber;
    }

    public void setBathroomNumber(int bathroomNumber) {
        this.bathroomNumber = bathroomNumber;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }

    public String getDeleted_at() {
        return deleted_at;
    }

    public void setDeleted_at(String deleted_at) {
        this.deleted_at = deleted_at;
    }

	public String getListing_type() {
		return listing_type;
	}

	public void setListing_type(String listing_type) {
		this.listing_type = listing_type;
	}

	@Override
	public String toString() {
		return "Immobiliers [id=" + id + ", title=" + title + ", adresse=" + adresse + ", pay=" + pay + ", ville="
				+ ville + ", surface=" + surface + ", bathroomNumber=" + bathroomNumber + ", nbr_etage=" + nbr_etage
				+ ", type=" + type + ", description=" + description + ", prix=" + prix + ", disponibilite="
				+ disponibilite + ", proprietaire_id=" + proprietaire_id + ", listing_type=" + listing_type
				+ ", room_nbr=" + room_nbr + ", created_at=" + created_at + ", updated_at=" + updated_at
				+ ", deleted_at=" + deleted_at + ", images=" + images + ", getId()=" + getId() + ", getTitle()="
				+ getTitle() + ", getAdresse()=" + getAdresse() + ", getPay()=" + getPay() + ", getVille()="
				+ getVille() + ", getSurface()=" + getSurface() + ", getImages()=" + getImages() + ", getNbr_etage()="
				+ getNbr_etage() + ", getType()=" + getType() + ", getDescription()=" + getDescription()
				+ ", getPrix()=" + getPrix() + ", getDisponibilite()=" + getDisponibilite() + ", getProprietaire_id()="
				+ getProprietaire_id() + ", getCreated_at()=" + getCreated_at() + ", getUpdated_at()=" + getUpdated_at()
				+ ", getBathroomNumber()=" + getBathroomNumber() + ", getDeleted_at()=" + getDeleted_at()
				+ ", getListing_type()=" + getListing_type() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

    
    
}
