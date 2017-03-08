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
	
	private CYaHPConverter converter = new CYaHPConverter();
	
	@RequestMapping(method = RequestMethod.GET)
	public String generateCVPage() {
		return "generateCV";
	}
	
	@RequestMapping(value = "/pdf", method = RequestMethod.GET)
	public void generatePDF(@RequestParam String template, HttpServletResponse response)
			throws MalformedURLException, CConvertException, IOException {

		response.setContentType("application/pdf");

		response.flushBuffer();

		generatePdf(converter, response.getOutputStream(), template,
				SecurityContextHolder.getContext().getAuthentication().getName());
	}
	
	@RequestMapping(value = "/doc", method = RequestMethod.GET)
	public String generateDOC(@RequestParam String template, HttpServletResponse response, Model model) {
		response.setContentType("application/msword");
		response.setHeader("Content-Disposition", "inline; filename=word.doc");
		model.addAttribute("exportToWord", "YES");
		return euroPass(template, SecurityContextHolder.getContext().getAuthentication().getName(), model);
	}
	
	@RequestMapping(value = "/tempCV", method = RequestMethod.GET)
	public String euroPass(@RequestParam String template, @RequestParam String usrName, Model model) {
		model.addAllAttributes(service.getCVMap(usrName));
		return template;
	}
	
	static void generatePdf(CYaHPConverter converter, java.io.OutputStream os, String template, String userName)
			throws MalformedURLException, CConvertException {
		Map<String, String> properties = new HashMap<>();
		properties.put(IHtmlToPdfTransformer.PDF_RENDERER_CLASS, IHtmlToPdfTransformer.FLYINGSAUCER_PDF_RENDERER);

		converter.convertToPdf(
				new URL("http://localhost:8080/generateCV/tempCV?template=" + template + "&usrName=" + userName),
				IHtmlToPdfTransformer.A4P, new ArrayList<>(), os, properties);
	}
}
