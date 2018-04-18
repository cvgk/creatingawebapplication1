package model;

import java.io.Serializable;

import javax.persistence.*;
@Entity
public class Ilce implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    private String ilceAdi;
    @ManyToOne
    private Il il;
	public Ilce() {
		super();
	}
	public Ilce(String ilceAdi, Il il) {
		super();
		this.ilceAdi = ilceAdi;
		this.il = il;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIlceAdi() {
		return ilceAdi;
	}
	public void setIlceAdi(String ilceAdi) {
		this.ilceAdi = ilceAdi;
	}
	public Il getIl() {
		return il;
	}
	public void setIl(Il il) {
		this.il = il;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString()
	{
		return ilceAdi;
	}
}
