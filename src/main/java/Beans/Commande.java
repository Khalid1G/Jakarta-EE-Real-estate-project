package Beans;
public class Commande {

    private Long id;
    private Long clientId;
    private Long immobilierId;
    private String typeCommande;
    private String dateDebut;
    private String dateFin;
    private String createdAt;
    private String updatedAt;
    private String deletedAt;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getClientId() {
        return clientId;
    }

    public void setClientId(Long clientId) {
        this.clientId = clientId;
    }

    public Long getImmobilierId() {
        return immobilierId;
    }

    public void setImmobilierId(Long immobilierId) {
        this.immobilierId = immobilierId;
    }

    public Commande(Long id, Long clientId, Long immobilierId, String typeCommande, String dateDebut, String dateFin, String createdAt, String updatedAt, String deletedAt) {
        this.id = id;
        this.clientId = clientId;
        this.immobilierId = immobilierId;
        this.typeCommande = typeCommande;
        this.dateDebut = dateDebut;
        this.dateFin = dateFin;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.deletedAt = deletedAt;
    }

    public String getTypeCommande() {
        return typeCommande;
    }

    public void setTypeCommande(String typeCommande) {
        this.typeCommande = typeCommande;
    }

    public String getDateDebut() {
        return dateDebut;
    }

    public void setDateDebut(String dateDebut) {
        this.dateDebut = dateDebut;
    }

    public String getDateFin() {
        return dateFin;
    }

    public void setDateFin(String dateFin) {
        this.dateFin = dateFin;
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

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getDeletedAt() {
        return deletedAt;
    }

    public void setDeletedAt(String deletedAt) {
        this.deletedAt = deletedAt;
    }
}
