/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.dao;

import java.util.Collection;

import org.tu.sofia.fdiba.cvgen.entity.User;

/**
 * @author Teo
 *
 */
public interface UserDAO {
	void createUser(User user);

	Collection<User> getAll();
}
