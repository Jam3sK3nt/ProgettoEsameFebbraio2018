package siw.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Main {
  
	public static void main(String[] args) {
	 EntityManagerFactory emf = Persistence.createEntityManagerFactory("esame");
	 EntityManager em = emf.createEntityManager();
	 Product p = new Product();
	 p.setCode("ffd");
	 p.setDescription("fdfdf");
	 p.setName("ciao");
	 p.setInStock(34);
	 p.setPrice(3F);
	 
	 
	 EntityTransaction et = em.getTransaction();
	 et.begin();
	 em.persist(p);
	 et.commit();
	 em.close();
	 emf.close();

	}

}
