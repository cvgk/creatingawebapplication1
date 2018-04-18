package dao;

import java.util.List;

import model.Ilce;
import model.Koy;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class KoyDAOImpl {
	@SuppressWarnings("unchecked")
	public List<Koy> ilceyeGoreKoyleriBul(String ilceadi)
    {
    	SessionFactory factory = new Configuration().configure().buildSessionFactory();
 	    Session session = factory.openSession();
 	    session.beginTransaction();
		List<Ilce> ilceler = session.createQuery("from Ilce").getResultList();
 	    for(int i=0;i<ilceler.size();i++)
 	    {
 	    	Ilce ilce = ilceler.get(i);
 	    	if(ilceadi.equalsIgnoreCase(ilce.getIlceAdi()))
 	    	{
 	    		List<Koy> m = session.createQuery("FROM Koy where ilce_id="+ilce.getId()).getResultList();
 	    		session.getTransaction().commit();
 	    		session.close();
 	    		return m;
 	    	}
 	    }
 	    return null;
    }
}
