package model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Users {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	public Users() {
		super();
	}
	public Users(String sn, String gn, String baslangictarihi,
			String bitistarihi, String sure, String afetturu, String il,
			String ilce, String koy, String mahalle, String belde,
			String neden, String enlem, String boylam, String nedenaciklama,String etkilendigialanlar,
			String kaynak,String onay) {
		super();
		this.sn = sn;
		this.gn = gn;
		this.baslangictarihi = baslangictarihi;
		this.bitistarihi = bitistarihi;
		this.sure = sure;
		this.afetturu = afetturu;
		this.il = il;
		this.ilce = ilce;
		this.koy = koy;
		this.mahalle = mahalle;
		this.belde = belde;
		this.neden = neden;
		this.enlem = enlem;
		this.boylam = boylam;
		this.nedenaciklama = nedenaciklama;
		this.etkilendigialanlar = etkilendigialanlar;
		this.kaynak = kaynak;
		this.onay = onay;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNedenaciklama() {
		return nedenaciklama;
	}
	public void setNedenaciklama(String nedenaciklama) {
		this.nedenaciklama = nedenaciklama;
	}
	public String getEtkilendigialanlar() {
		return etkilendigialanlar;
	}
	public void setEtkilendigialanlar(String etkilendigialanlar) {
		this.etkilendigialanlar = etkilendigialanlar;
	}
	public String getKaynak() {
		return kaynak;
	}
	public void setKaynak(String kaynak) {
		this.kaynak = kaynak;
	}
	@Column(unique=true)
	private String sn;
	@Column(unique=true)
	private String gn;
	private String baslangictarihi ;
	private String bitistarihi;
	private String sure;
	private String afetturu;
	private String il;
	private String ilce;
	private String koy;
	private String mahalle;
	private String belde;
	private String neden;
	private String enlem ;
	private String boylam;
	private String nedenaciklama;
	private String etkilendigialanlar;
	private String kaynak;
	private String onay;
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	public String getGn() {
		return gn;
	}
	public void setGn(String gn) {
		this.gn = gn;
	}
	public String getBaslangictarihi() {
		return baslangictarihi;
	}
	public void setBaslangictarihi(String baslangictarihi) {
		this.baslangictarihi = baslangictarihi;
	}
	public String getBitistarihi() {
		return bitistarihi;
	}
	public void setBitistarihi(String bitistarihi) {
		this.bitistarihi = bitistarihi;
	}
	public String getSure() {
		return sure;
	}
	public void setSure(String sure) {
		this.sure = sure;
	}
	public String getAfetturu() {
		return afetturu;
	}
	public void setAfetturu(String afetturu) {
		this.afetturu = afetturu;
	}
	public String getIl() {
		return il;
	}
	public void setIl(String il) {
		this.il = il;
	}
	public String getIlce() {
		return ilce;
	}
	public void setIlce(String ilce) {
		this.ilce = ilce;
	}
	public String getKoy() {
		return koy;
	}
	public void setKoy(String koy) {
		this.koy = koy;
	}
	public String getMahalle() {
		return mahalle;
	}
	public void setMahalle(String mahalle) {
		this.mahalle = mahalle;
	}
	public String getBelde() {
		return belde;
	}
	public void setBelde(String belde) {
		this.belde = belde;
	}
	public String getNeden() {
		return neden;
	}
	public void setNeden(String neden) {
		this.neden = neden;
	}
	public String getEnlem() {
		return enlem;
	}
	public void setEnlem(String enlem) {
		this.enlem = enlem;
	}
	public String getBoylam() {
		return boylam;
	}
	public void setBoylam(String boylam) {
		this.boylam = boylam;
	}
	public String getOnay() {
		return onay;
	}
	public void setOnay(String onay) {
		this.onay = onay;
	}
}
