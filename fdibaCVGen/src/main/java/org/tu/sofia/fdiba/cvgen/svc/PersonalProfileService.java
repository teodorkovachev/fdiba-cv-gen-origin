/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import org.tu.sofia.fdiba.cvgen.entity.PersonalDetail;
import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;

/**
 * @author Teo
 *
 */
public interface PersonalProfileService {

	void saveOrUpdate(PersonalDetail detail);

	PersonalInfo getPersonalInfo();
}
