package model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Afet {
	public Afet() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    private String afetturu;
	public Afet(String afetturu) {
		super();
		this.afetturu = afetturu;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAfetturu() {
		return afetturu;
	}
	public void setAfetturu(String afetturu) {
		this.afetturu = afetturu;
	}
	public String toString()
	{
		return afetturu;
	}
}
