package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.Afet;


public class AfetDAOImpl implements AfetDAO {

	@Override
	public List<Afet> getList() {
	    SessionFactory factory = new Configuration().configure().buildSessionFactory();
	    Session session = factory.openSession();
	    session.beginTransaction();
		Query query = session.createQuery("FROM Afet");
		@SuppressWarnings("unchecked")
		List<Afet> list = query.getResultList();
		session.getTransaction().commit();
		session.close();
		return list;
	}

}
