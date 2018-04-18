package kurulum;

import model.Afet;
import model.Users;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Kurulum {

	public static void main(String[] args) {
		Lokasyonlar lokasyonlar = new Lokasyonlar();
		Object[] yerler = lokasyonlar.tumLokasyonlar();
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
    	Session session = factory.openSession();
        session.beginTransaction();
        for(int i=0;i<yerler.length;i++)
        {
        	session.save(yerler[i]);
        }
        Users user = new Users("1","10","11/11/2018","18/11/2018","7","kuraklik","Ankara","Mamak","Derbent",
        		"Kasif Hoca","Hacilar",
				"tatbikat","10","20","kuraklik yuzunden meydana geldi","pazarlama,otomotiv","meydan lourusse",
				"onaylandi");
        session.save(user);
        Afet afet1 = new Afet("siddetli soguklar");
        Afet afet2 = new Afet("kuraklik");
        Afet afet3 = new Afet("kitlik");
        Afet afet4 = new Afet("deprem");
        Afet afet5 = new Afet("seller");
        Afet[] array = { afet1, afet2, afet3, afet4, afet5};
        for(int j=0;j<array.length;j++)
        {
        	session.save(array[j]);
        }
        session.getTransaction().commit();
        session.close();
	}

}
