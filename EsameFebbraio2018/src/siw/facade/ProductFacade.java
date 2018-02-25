package siw.facade;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import siw.model.Product;
import siw.model.Provider;

@Stateless
public class ProductFacade {
	
	@PersistenceContext(unitName="unit-siw-project")
	private EntityManager em;

	public ProductFacade(){
	}

	public Product createProduct(String code,String name,Float price,String description, int inStock, List<Provider> providers){
		try {
			Product product = new Product(name,price,description,code,inStock);
			product.setProviders(providers);
			em.persist(product);
			return product;
		} catch (Exception e) {
			return null;
		}

	}


	public Product getProduct(Long id) {
		Query stringa_query = this.em.createQuery("SELECT p FROM Product p WHERE p.id = :id");
		stringa_query.setParameter("id", id);
		try {
			Product product = (Product)stringa_query.getSingleResult();//se rompe cambia in getResultList
			return product;
		} catch (Exception e) {
			return null;
		}
	}
	
	public Product getProduct(String code){
		Query query = this.em.createQuery("SELECT p FROM Product p WHERE p.code = :code");
		query.setParameter("code",code);
		try{
			Product product = (Product)query.getResultList().get(0);
			return product;
		} catch (Exception e){
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts() {
		Query query = this.em.createQuery("SELECT ps FROM Product ps");
		try {
			List<Product> products  = query.getResultList();
			return products;
		} catch (Exception e) {
			return null;
		}
	}


	public void updateProduct(Product product) {
		em.merge(product);	
	}

	private void deleteProduct(Product product) {
		em.remove(product);
	}
                                                                     
	public void deleteProduct(Long id) {
		Product product = em.find(Product.class, id);
		deleteProduct(product);
	}
}


