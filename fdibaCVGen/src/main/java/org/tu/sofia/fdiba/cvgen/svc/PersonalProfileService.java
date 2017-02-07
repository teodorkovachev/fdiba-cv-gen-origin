/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import org.tu.sofia.fdiba.cvgen.entity.PersonalDetail;

/**
 * @author Teo
 *
 */
public interface PersonalProfileService {
	void saveOrUpdate(PersonalDetail detail);
}
