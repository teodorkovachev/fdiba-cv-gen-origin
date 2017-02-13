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
import org.tu.sofia.fdiba.cvgen.entity.Education;
import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;
import org.tu.sofia.fdiba.cvgen.entity.ProfExp;

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

		Map<String, Object> modelMap = new HashMap<>();
		modelMap.put("userName", userName);
		modelMap.put("fullName", pInfo.getfName() + " " + pInfo.getmName() + " " + pInfo.getlName());
		modelMap.put("address", pInfo.getAddress());
		modelMap.put("phoneNum", pInfo.getPhoneNum());
		modelMap.put("email", pInfo.getEmail());
		modelMap.put("nationality", getDescriptionByCountryAbbreviation(pInfo.getNational()));
		modelMap.put("birthDate", pInfo.getBirth());
		modelMap.put("educations", pdd.getCollectionByUserName(Education.class, userName));
		modelMap.put("profs", pdd.getCollectionByUserName(ProfExp.class, userName));
		return modelMap;
	}
	
	private String getDescriptionByCountryAbbreviation(String abbr) {
		String description;
		switch (abbr) {
		case "DE":
			description = "German";
			break;
		case "GB":
			description = "British";
			break;
		case "IN":
			description = "Indian";
			break;
		default:
			description = "Bulgarian";
			break;
		}
		return description;
	}
}
