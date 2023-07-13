package entity;


public class Favourite {
    private String pID;
    private Product items = new Product();
    private int id;
    private String status;

    public Favourite() {
    }   

    public Favourite(String pID, int id, String status) {
        this.pID = pID;
        this.id = id;
        this.status = status;
    }

    public Favourite(int id, Product items , String status, String pID) {
        this.id = id;
        this.status = status;
        this.items = items;
        this.pID = pID;
    }   

    public String getpID() {
        return pID;
    }

    public void setpID(String pID) {
        this.pID = pID;
    }

    public Product getItems() {
        return items;
    }

    public void setItems(Product items) {
        this.items = items;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
     public String toString() {
        return "Favourite{" + "ID=" + id + ", items=" + items + ", pid=" + pID + ", status=" + status + '}';
    }

}