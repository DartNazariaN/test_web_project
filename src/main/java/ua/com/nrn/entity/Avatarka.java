package ua.com.nrn.entity;

import javax.persistence.*;

@Entity
public class Avatarka {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    String nameAva;
    String rout;

    @OneToOne(fetch=FetchType.LAZY, cascade = CascadeType.ALL)
    private User user;

    public Avatarka() {
    }

    public Avatarka(String nameAva, String rout, User user) {
        this.nameAva = nameAva;
        this.rout = rout;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameAva() {
        return nameAva;
    }

    public void setNameAva(String nameAva) {
        this.nameAva = nameAva;
    }

    public String getRout() {
        return rout;
    }

    public void setRout(String rout) {
        this.rout = rout;
    }

    @Override
    public String toString() {
        return "Avatarka{" +
                "id=" + id +
                ", nameAva='" + nameAva + '\'' +
                ", rout='" + rout + '\'' +
                '}';
    }
}
