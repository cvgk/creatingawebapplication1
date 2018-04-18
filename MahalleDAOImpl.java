package dao;

import java.util.List;
import model.Koy;
import model.Mahalle;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class MahalleDAOImpl {
	@SuppressWarnings("unchecked")
	public List<Mahalle> koyeGoreMahalleyiBul(String koyadi)
    {
    	SessionFactory factory = new Configuration().configure().buildSessionFactory();
 	    Session session = factory.openSession();
 	    session.beginTransaction();
		List<Koy> koyler = session.createQuery("from Koy").getResultList();
 	    for(int i=0;i<koyler.size();i++)
 	    {
 	    	Koy koy = koyler.get(i);
 	    	if(koyadi.equalsIgnoreCase(koy.getKoyAdi()))
 	    	{
 	    		List<Mahalle> mahalleler = session.createQuery("FROM Mahalle where koy_id="+koy.getId()).getResultList();
 	    		session.getTransaction().commit();
 	    		session.close();
 	    		return mahalleler;
 	    	}
 	    }
 	    return null;
    }
}
