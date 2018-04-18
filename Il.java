package model;

import java.io.Serializable;

import javax.persistence.*;
@Entity
public class Il implements Serializable {
 /**
  * 
 */
private static final long serialVersionUID = 1L;
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;
private String ilAdi;
public Il() {
	super();
}
public Il(String ilAdi) {
	super();
	this.ilAdi = ilAdi;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getIlAdi() {
	return ilAdi;
}
public void setIlAdi(String ilAdi) {
	this.ilAdi = ilAdi;
}
@Override
public String toString()
{
	return ilAdi;
}
}
