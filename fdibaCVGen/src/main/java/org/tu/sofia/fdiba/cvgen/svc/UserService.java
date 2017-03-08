/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import java.util.Collection;

import org.tu.sofia.fdiba.cvgen.entity.User;

/**
 * @author Teo
 *
 */
public interface UserService {

	void createUser(User user);
	
	Collection<User> getAll();
	
}
