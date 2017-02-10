/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.dao;

import java.util.Collection;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.tu.sofia.fdiba.cvgen.entity.PersonalDetail;

/**
 * @author Teo
 *
 */
@Repository
public class PersonalDetailDAOImpl implements PersonalDetailDAO {

	@Autowired
	private SessionFactory sf;
	
	@Override
	public void saveOrUpdate(PersonalDetail detail) {
		sf.getCurrentSession().saveOrUpdate(detail);
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public <T> Collection<T> getCollectionByUserName(Class<T> clazz, String userName) {
		return sf.getCurrentSession().createCriteria(clazz).add(Restrictions.eq("userName", userName)).list();
	}

	@Override
	public <T> T getById(Class<T> clazz, int id) {
		return sf.getCurrentSession().get(clazz, id);
	}

	@Override
	public void delete(Object obj) {
		sf.getCurrentSession().delete(obj);
	}

	@Override
	public <T> T getByUserName(Class<T> clazz, String userName) {
		return sf.getCurrentSession().get(clazz, userName);
	}

}
