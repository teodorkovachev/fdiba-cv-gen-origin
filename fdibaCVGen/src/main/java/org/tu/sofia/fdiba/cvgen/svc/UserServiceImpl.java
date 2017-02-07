/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tu.sofia.fdiba.cvgen.dao.UserDAO;
import org.tu.sofia.fdiba.cvgen.entity.User;

/**
 * @author Teo
 *
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDao;
	
	@Override
	public void createUser(User user) {
		userDao.createUser(user);
	}
}
