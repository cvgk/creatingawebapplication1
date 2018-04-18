package model;

import java.io.Serializable;

import javax.persistence.*;
@Entity
public class Mahalle implements Serializable {
       public Mahalle(String mahalleAdi, Koy koy) {
		super();
		this.mahalleAdi = mahalleAdi;
		this.koy = koy;
	}
    public Mahalle() {
		super();
	 }
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
   @Id
   @GeneratedValue(strategy=GenerationType.IDENTITY)
   private int id;
   private String mahalleAdi;
   @ManyToOne
   private Koy koy;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getMahalleAdi() {
	return mahalleAdi;
}
public void setMahalleAdi(String mahalleAdi) {
	this.mahalleAdi = mahalleAdi;
}
public Koy getKoy() {
	return koy;
}
public void setKoy(Koy koy) {
	this.koy = koy;
}
@Override
public String toString()
{
	return mahalleAdi;
}
}
