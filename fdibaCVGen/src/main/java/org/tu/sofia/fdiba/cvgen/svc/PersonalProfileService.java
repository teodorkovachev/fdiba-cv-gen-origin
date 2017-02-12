/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import java.io.InputStream;
import java.util.Collection;

import org.tu.sofia.fdiba.cvgen.entity.PersonalDetail;

/**
 * @author Teo
 *
 */
public interface PersonalProfileService {

	void saveOrUpdate(PersonalDetail detail);

	InputStream getProfilePicture(String usrName);
	
	<T> Collection<T> getCollectionOf(Class<T> clazz);
	
	<T> T getById(Class<T> clazz, int id);
	
	<T> T getByUserName(Class<T> clazz) throws InstantiationException, IllegalAccessException;
	
	void delete (Object obj);
	
	void saveImage(byte [] img);
}
