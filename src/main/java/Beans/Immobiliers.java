package Beans;
public class Immobiliers {
    private Long id;
    private String adresse;
    private String pay;
    private String ville;
    private String surface;
    private int bathroomNumber;
    private int nbr_etage;
    private String type;
    private String description;
    private Double prix;
    private Boolean disponibilite;
    private Long proprietaire_id;
    private String created_at;
    private String updated_at;
    private String deleted_at;

    public Long getId() {
        return id;
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

    public String getSurface() {
        return surface;
    }



    public void setSurface(String surface) {
        this.surface = surface;
    }

    public Immobiliers(Long id, String adresse,int bathroomNumber, String pay, String ville, String surface, int nbr_etage, String type, String description, Double prix, Boolean disponibilite, Long proprietaire_id, String created_at, String updated_at, String deleted_at) {
        this.id = id;
        this.adresse = adresse;
        this.pay = pay;
        this.ville = ville;
        this.surface = surface;
        this.nbr_etage = nbr_etage;
        this.bathroomNumber = bathroomNumber;
        this.type = type;
        this.description = description;
        this.prix = prix;
        this.disponibilite = disponibilite;
        this.proprietaire_id = proprietaire_id;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.deleted_at = deleted_at;
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

	@Override
	public String toString() {
		return "Immobiliers [id=" + id + ", adresse=" + adresse + ", pay=" + pay + ", ville=" + ville + ", surface="
				+ surface + ", bathroomNumber=" + bathroomNumber + ", nbr_etage=" + nbr_etage + ", type=" + type
				+ ", description=" + description + ", prix=" + prix + ", disponibilite=" + disponibilite
				+ ", proprietaire_id=" + proprietaire_id + ", created_at=" + created_at + ", updated_at=" + updated_at
				+ ", deleted_at=" + deleted_at + "]";
	}
    
    
}
