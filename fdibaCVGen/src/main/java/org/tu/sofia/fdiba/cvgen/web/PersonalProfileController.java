/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.tu.sofia.fdiba.cvgen.entity.Education;
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
		model.addAttribute("educations", pps.getCollectionOf(Education.class));
		return "personalProfile";
	}
	
	@ResponseBody
	@RequestMapping(value="/updatePersonalInfo", method=RequestMethod.POST)
	public String updatePersonalInfo(PersonalInfo info){
		pps.saveOrUpdate(info);
		return "Success";
	}
	
	@RequestMapping(value = "/education/new", method = RequestMethod.GET)
	public String addNewEducation(Model model) {
		model.addAttribute("education", new Education());
		return "education";
	}
	
	@RequestMapping(value = "/education/save", method = RequestMethod.POST)
	public String saveEducation(Education edu) {
		pps.saveOrUpdate(edu);
		return "redirect:/personalProfile";
	}
	
	@RequestMapping(value = "/education/edit/{id}", method = RequestMethod.GET)
	public String editEducation(@PathVariable("id") int id, Model model) {
		model.addAttribute("education", pps.getById(Education.class, id));
		return "education";
	}
	
	@RequestMapping(value = "/education/delete", method = RequestMethod.GET)
	public String deleteEducation(Education edu) {
		pps.delete(edu);
		return "redirect:/personalProfile";
	}
}
