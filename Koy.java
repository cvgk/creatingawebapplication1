package model;

import java.io.Serializable;
import javax.persistence.*;
@Entity
public class Koy implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
    private String koyAdi;
    @ManyToOne
    private Ilce ilce;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getKoyAdi() {
		return koyAdi;
	}
	public void setKoyAdi(String koyAdi) {
		this.koyAdi = koyAdi;
	}
	public Ilce getIlce() {
		return ilce;
	}
	public void setIlce(Ilce ilce) {
		this.ilce = ilce;
	}
	@Override
	public String toString()
	{
		return koyAdi;
	}
	public Koy() {
		super();
	}
	public Koy(String koyAdi, Ilce ilce) {
		super();
		this.koyAdi = koyAdi;
		this.ilce = ilce;
	}
}
