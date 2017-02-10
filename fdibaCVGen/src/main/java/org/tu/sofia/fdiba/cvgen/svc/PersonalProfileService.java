/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import java.io.InputStream;
import java.util.Collection;

import org.tu.sofia.fdiba.cvgen.entity.PersonalDetail;
import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;

/**
 * @author Teo
 *
 */
public interface PersonalProfileService {

	void saveOrUpdate(PersonalDetail detail);

	PersonalInfo getPersonalInfo();
	
	InputStream getProfilePicture();
	
	<T> Collection<T> getCollectionOf(Class<T> clazz);
	
	<T> T getById(Class<T> clazz, int id);
	
	void delete (Object obj);
	
	void saveImage(byte [] img);
}
