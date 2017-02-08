/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.dao;

import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;

/**
 * @author Teo
 *
 */
public interface PersonalInfoDAO {

	PersonalInfo get(String username);

}
