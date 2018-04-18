package dao;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.Il;
public class IlDAO {
     public List<Il> tumIlleriGoster()
     {
    	SessionFactory factory = new Configuration().configure().buildSessionFactory();
 	    Session session = factory.openSession();
 	    session.beginTransaction();
 		Query query = session.createQuery("FROM Il");
 		@SuppressWarnings("unchecked")
 		List<Il> list = query.getResultList();
 		session.getTransaction().commit();
 		session.close();
 		return list;
     }
}
