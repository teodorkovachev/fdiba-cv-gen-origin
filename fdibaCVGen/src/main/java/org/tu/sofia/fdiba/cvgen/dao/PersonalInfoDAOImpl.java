/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;

/**
 * @author Teo
 *
 */
@Repository
public class PersonalInfoDAOImpl implements PersonalInfoDAO {

	@Autowired
	private SessionFactory sf;
	
	@Override
	public PersonalInfo get(String username) {
		return sf.getCurrentSession().get(PersonalInfo.class, username);
	}
}
