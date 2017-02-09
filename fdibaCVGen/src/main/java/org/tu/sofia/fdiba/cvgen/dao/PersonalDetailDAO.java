/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.dao;

import java.util.Collection;

import org.tu.sofia.fdiba.cvgen.entity.PersonalDetail;

/**
 * @author Teo
 *
 */
public interface PersonalDetailDAO {
	
	void saveOrUpdate(PersonalDetail detail);
	
	<T> Collection<T> getCollectionByUserName(Class<T> clazz, String userName);
	
	<T> T getById(Class<T> clazz, int id);
	
	void delete(Object obj);
}
