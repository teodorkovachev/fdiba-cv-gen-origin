/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;
import org.tu.sofia.fdiba.cvgen.svc.PersonalProfileService;

/**
 * @author Teo
 *
 */
@Controller
@RequestMapping("/personalProfile")
public class PersonalProfileController {
	
	@Autowired
	private PersonalProfileService pps;
	
	@RequestMapping(method = RequestMethod.GET)
	public String personalProfilePage(Model model) {
		model.addAttribute("personalInfo", pps.getPersonalInfo());
		return "personalProfile";
	}
	
	@ResponseBody
	@RequestMapping(value="/updatePersonalInfo", method=RequestMethod.POST)
	public String updatePersonalInfo(PersonalInfo info){
		pps.saveOrUpdate(info);
		return "Success";
	}
}
