/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.dao;

import java.util.Collection;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.tu.sofia.fdiba.cvgen.entity.User;

/**
 * @author Teo
 *
 */
@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void createUser(User user) {
		sessionFactory.getCurrentSession().persist(user);
	}

	@Override
	public Collection<User> getAll() {
		return sessionFactory.getCurrentSession().createCriteria(User.class).list();
	}

}
