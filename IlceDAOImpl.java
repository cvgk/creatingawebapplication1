package dao;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.Il;
import model.Ilce;

public class IlceDAOImpl {
    @SuppressWarnings("unchecked")
	public List<Ilce> ilceleriBul(String iladi)
    {
    	SessionFactory factory = new Configuration().configure().buildSessionFactory();
 	    Session session = factory.openSession();
 	    session.beginTransaction();
		List<Il> iller = session.createQuery("from Il").getResultList();
 	    for(int i=0;i<iller.size();i++)
 	    {
 	    	Il il = iller.get(i);
 	    	if(iladi.equalsIgnoreCase(il.getIlAdi()))
 	    	{
 	    		List<Ilce> ilceler = session.createQuery("FROM Ilce where il_id="+il.getId()).getResultList();
 	    		session.getTransaction().commit();
 	    		session.close();
 	    		return ilceler;
 	    	}
 	    }
 	    return null;
    }
}
