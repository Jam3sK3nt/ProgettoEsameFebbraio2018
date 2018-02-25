package siw.facade;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import siw.model.*;

@Stateless
public class AddressFacade {
	@PersistenceContext(unitName="unit-siw-project")
	private EntityManager em;

	public AddressFacade(){
	}
	public Address createAddress(String street, String city, String state, int zipCode, String country){
		try {
			Address address = new Address(street, city, state, zipCode, country);
			em.persist(address);
			return address;
		} catch (Exception e) {
			return null;
		}
	}
}
