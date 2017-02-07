/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tu.sofia.fdiba.cvgen.dao.PersonalDetailDAO;
import org.tu.sofia.fdiba.cvgen.entity.PersonalDetail;

/**
 * @author Teo
 *
 */
@Service
@Transactional
public class PersonalProfileServiceImpl implements PersonalProfileService {

	@Autowired
	private PersonalDetailDAO pdd;
	
	@Override
	public void saveOrUpdate(PersonalDetail detail) {
		detail.setUserName(SecurityContextHolder.getContext().getAuthentication().getName());
		pdd.saveOrUpdate(detail);
	}
}
