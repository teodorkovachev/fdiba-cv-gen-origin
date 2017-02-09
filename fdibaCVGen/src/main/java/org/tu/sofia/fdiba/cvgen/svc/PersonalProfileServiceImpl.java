/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tu.sofia.fdiba.cvgen.dao.PersonalDetailDAO;
import org.tu.sofia.fdiba.cvgen.dao.PersonalInfoDAO;
import org.tu.sofia.fdiba.cvgen.entity.PersonalDetail;
import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;

/**
 * @author Teo
 *
 */
@Service
@Transactional
public class PersonalProfileServiceImpl implements PersonalProfileService {

	@Autowired
	private PersonalDetailDAO pdd;
	
	@Autowired
	private PersonalInfoDAO pid;
	
	@Override
	public void saveOrUpdate(PersonalDetail detail) {
		detail.setUserName(getUserName());
		pdd.saveOrUpdate(detail);
	}

	@Override
	public PersonalInfo getPersonalInfo() {
		PersonalInfo pi = pid.get(getUserName());
		return pi == null ? new PersonalInfo() : pi;
	}
	
	private String getUserName() {
		return SecurityContextHolder.getContext().getAuthentication().getName();
	}

	@Override
	public <T> Collection<T> getCollectionOf(Class<T> clazz) {
		return pdd.getCollectionByUserName(clazz, getUserName());
	}

	@Override
	public <T> T getById(Class<T> clazz, int id) {
		return pdd.getById(clazz, id);
	}

	@Override
	public void delete(Object obj) {
		pdd.delete(obj);
	}
}
