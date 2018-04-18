package dao;

import java.util.List;

import javax.persistence.Query;

import model.Users;





import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class UserDAOImpl {
	
	private SessionFactory factory = new Configuration().configure().buildSessionFactory();
    private Session session;
   
    
	public void kaydet(Users user) {
	    session = factory.openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}
	public List<Users> listele()
	{
		session = factory.openSession();
		Query query = session.createQuery("FROM Users");
		@SuppressWarnings("unchecked")
		List<Users> list = query.getResultList();
		return list;
	}
	public void guncelle(String sn,String gn,String baslangictarihi,
			String bitistarihi, String sure, String afetturu, String il,
			String ilce, String koy, String mahalle, String belde,
			String neden, String enlem, String boylam, String nedenaciklama,String etkilendigialanlar,
			String kaynak,String onay)
	{
		List<Users> users = listele();
		session.beginTransaction();
		for(int i=0;i<users.size();i++)
		{
			Users user = users.get(i);
			if(user.getSn().equalsIgnoreCase(sn)&&user.getGn().equalsIgnoreCase(gn))
			{
				if(!baslangictarihi.equalsIgnoreCase("")) { user.setBaslangictarihi(baslangictarihi);}
				if(!bitistarihi.equalsIgnoreCase("")) { user.setBitistarihi(bitistarihi);}
				if(!sure.equalsIgnoreCase("")) { user.setSure(sure);}
				if(!afetturu.equalsIgnoreCase("")) { user.setAfetturu(afetturu);}
				if(!il.equalsIgnoreCase("seciniz")) {user.setIl(il);}
				if(!ilce.equalsIgnoreCase("seciniz")) { user.setIlce(ilce);}
				if(!koy.equalsIgnoreCase("seciniz")) { user.getKoy();}
				if(!mahalle.equalsIgnoreCase("seciniz")) { user.setKoy(koy);}
				if(!belde.equalsIgnoreCase("")) { user.setBelde(belde);}
				if(!neden.equalsIgnoreCase("")) { user.setNeden(neden); }
				if(!enlem.equalsIgnoreCase("")) { user.setEnlem(enlem);}
				if(!boylam.equalsIgnoreCase("")) { user.setBoylam(boylam);}
				if(!nedenaciklama.equalsIgnoreCase("")) { user.setNedenaciklama(nedenaciklama); }
				if(!etkilendigialanlar.equalsIgnoreCase("")) { user.setEtkilendigialanlar(etkilendigialanlar); }
				if(!kaynak.equalsIgnoreCase("")) { user.setKaynak(kaynak); }
				if(!onay.equalsIgnoreCase("")) { user.setOnay(onay);} 
				session.update(user);
			}
		}
		session.getTransaction().commit();
		session.close();
	}
	public void delete(Users user)
	{
		session = factory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("FROM Users");
		@SuppressWarnings("unchecked")
		List<Users> list = query.getResultList();
		for(int i=0;i<list.size();i++)
		{
			Users u = list.get(i);
			if(u.getSn().equalsIgnoreCase(user.getSn())&&u.getGn().equalsIgnoreCase(user.getGn()))
			{
				session.delete(u);
			}
		}
		session.getTransaction().commit();
		session.close();
	}
}
