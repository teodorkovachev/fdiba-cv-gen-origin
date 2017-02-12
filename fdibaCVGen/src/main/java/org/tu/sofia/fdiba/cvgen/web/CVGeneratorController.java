/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.web;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.allcolor.yahp.converter.CYaHPConverter;
import org.allcolor.yahp.converter.IHtmlToPdfTransformer;
import org.allcolor.yahp.converter.IHtmlToPdfTransformer.CConvertException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.tu.sofia.fdiba.cvgen.svc.CVGeneratorService;

/**
 * @author Satellite
 *
 */
@Controller
@RequestMapping(value = "/generateCV")
public class CVGeneratorController {
	
	@Autowired
	private CVGeneratorService service;
	
	@RequestMapping(value = "/pdf", method = RequestMethod.GET)
	public void generatePDF(HttpServletResponse response) throws MalformedURLException, CConvertException, IOException {

		CYaHPConverter converter = new CYaHPConverter();
		
		Map<String, String> properties = new HashMap<>();
		properties.put(IHtmlToPdfTransformer.PDF_RENDERER_CLASS, IHtmlToPdfTransformer.FLYINGSAUCER_PDF_RENDERER);
		
		response.setContentType("application/pdf");
		
		response.flushBuffer();

		converter.convertToPdf(
				new URL("http://localhost:8080/generateCV/generate?usrName="
						+ SecurityContextHolder.getContext().getAuthentication().getName()),
				IHtmlToPdfTransformer.A4P, new ArrayList<>(), response.getOutputStream(), properties);
	}
	
	@RequestMapping(value = "/doc", method = RequestMethod.GET)
	public String generateDOC(HttpServletRequest request, HttpServletResponse response, Model model) {
		response.setContentType("application/msword");
		response.setHeader("Content-Disposition", "inline; filename=word.doc");
		model.addAttribute("exportToWord", "YES");
		return generate(SecurityContextHolder.getContext().getAuthentication().getName(), model);
	}
	
	@RequestMapping(value = "/generate", method = RequestMethod.GET)
	public String generate(@RequestParam String usrName, Model model) {
		model.addAllAttributes(service.getCVMap(usrName));
		return "euroPassTemplate";
	}
}
