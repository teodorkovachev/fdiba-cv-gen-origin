/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.tu.sofia.fdiba.cvgen.entity.Education;
import org.tu.sofia.fdiba.cvgen.entity.Language;
import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;
import org.tu.sofia.fdiba.cvgen.entity.ProfExp;
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
		model.addAttribute("profs", pps.getCollectionOf(ProfExp.class));
		model.addAttribute("langs", pps.getCollectionOf(Language.class));
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
	
	@RequestMapping(value = "/prof/new", method = RequestMethod.GET)
	public String addNewProfExp(Model model) {
		model.addAttribute("prof", new ProfExp());
		return "prof";
	}
	
	@RequestMapping(value = "/prof/save", method = RequestMethod.POST)
	public String saveProfExp(ProfExp edu) {
		pps.saveOrUpdate(edu);
		return "redirect:/personalProfile";
	}
	
	@RequestMapping(value = "/prof/edit/{id}", method = RequestMethod.GET)
	public String editProfExp(@PathVariable("id") int id, Model model) {
		model.addAttribute("prof", pps.getById(ProfExp.class, id));
		return "prof";
	}
	
	@RequestMapping(value = "/prof/delete", method = RequestMethod.GET)
	public String deleteProfExp(ProfExp edu) {
		pps.delete(edu);
		return "redirect:/personalProfile";
	}
	
	@RequestMapping(value = "/profilePic", method = RequestMethod.GET)
	public void getProfilePic(HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("image/jpeg");
		IOUtils.copy(pps.getProfilePicture(), response.getOutputStream());
	}
	
	@RequestMapping(value = "/uploadImage", method = RequestMethod.POST)
	public String uploadProfilePic(MultipartHttpServletRequest request) throws IOException {
		pps.saveImage(request.getFile("imageUpload").getBytes());
		return "redirect:/personalProfile";
	}
	
	@RequestMapping(value = "/lang/new", method = RequestMethod.GET)
	public String addNewLanguage(Model model) {
		model.addAttribute("lang", new Language());
		return "lang";
	}
	
	@RequestMapping(value = "/lang/save", method = RequestMethod.POST)
	public String saveLanguage(Language edu) {
		pps.saveOrUpdate(edu);
		return "redirect:/personalProfile";
	}
	
	@RequestMapping(value = "/lang/edit/{id}", method = RequestMethod.GET)
	public String editLanguage(@PathVariable("id") int id, Model model) {
		model.addAttribute("lang", pps.getById(Language.class, id));
		return "lang";
	}
	
	@RequestMapping(value = "/lang/delete", method = RequestMethod.GET)
	public String deleteLanguage(Language edu) {
		pps.delete(edu);
		return "redirect:/personalProfile";
	}
}
