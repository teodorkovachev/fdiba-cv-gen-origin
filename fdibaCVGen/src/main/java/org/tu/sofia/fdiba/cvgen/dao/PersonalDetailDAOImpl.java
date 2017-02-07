/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.dao;

import org.hibernate.SessionFactory;
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

}
