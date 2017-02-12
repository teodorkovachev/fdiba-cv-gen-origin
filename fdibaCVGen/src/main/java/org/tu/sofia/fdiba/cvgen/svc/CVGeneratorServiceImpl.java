/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tu.sofia.fdiba.cvgen.dao.PersonalDetailDAO;
import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;

/**
 * @author Teo
 *
 */
@Service
@Transactional
public class CVGeneratorServiceImpl implements CVGeneratorService {

	@Autowired
	private PersonalDetailDAO pdd;
	
	@Override
	public Map<String, ?> getCVMap(String userName) {

		PersonalInfo pInfo = pdd.getByUserName(PersonalInfo.class, userName);

		Map<String, String> modelMap = new HashMap<>();
		modelMap.put("userName", userName);
		modelMap.put("fullName", pInfo.getfName() + " " + pInfo.getmName() + " " + pInfo.getlName());
		modelMap.put("address", pInfo.getAddress());
		modelMap.put("phoneNum", pInfo.getPhoneNum());
		modelMap.put("email", pInfo.getEmail());
		return modelMap;
	}

}
