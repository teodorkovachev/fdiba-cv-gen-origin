/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.web;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collection;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletResponse;

import org.allcolor.yahp.converter.CYaHPConverter;
import org.allcolor.yahp.converter.IHtmlToPdfTransformer.CConvertException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.tu.sofia.fdiba.cvgen.svc.UserService;

/**
 * @author Teo
 *
 */
@Controller
@RequestMapping("/browseCVs")
public class BrowseCVsController {

	@Autowired
	private UserService userService;
	
	private CYaHPConverter converter = new CYaHPConverter();
	
	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model) throws InstantiationException, IllegalAccessException {
		model.addAttribute("users", userService.getAll());
		return "browseCVs";
	}
	
	@RequestMapping(value = "/download/pdf", method = RequestMethod.GET)
	public void generatePDFZip(@RequestParam Collection<String> selectedUsers, String template,
			HttpServletResponse response) throws CConvertException, IOException {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		ZipOutputStream zos = new ZipOutputStream(baos);

		for (String userName : selectedUsers) {
			addZipEntry(template, userName, zos);
		}
		
		zos.close();

		response.setContentType("application/zip");

        // set headers for the response
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=cvs.zip");
        response.setHeader(headerKey, headerValue);
		response.getOutputStream().write(baos.toByteArray());
	}
	
	@RequestMapping(value = "/download/doc", method = RequestMethod.GET)
	public void generateDocZip(@RequestParam Collection<String> selectedUsers, String template,
			HttpServletResponse response) throws IOException {

		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		ZipOutputStream zos = new ZipOutputStream(baos);

		for (String userName : selectedUsers) {
			StringBuilder html = new StringBuilder();
			java.net.URL url = new URL(
					"http://localhost:8080/generateCV/tempCV?template=" + template + "&usrName=" + userName);
			BufferedReader input = null;
			try {
				input = new BufferedReader(new InputStreamReader(url.openStream()));

				String htmlLine;
				while ((htmlLine = input.readLine()) != null) {
					html.append(htmlLine);
				}
			} finally {
				input.close();
			}

			byte[] content = html.toString().getBytes();

			ZipEntry entry = new ZipEntry(userName + ".doc");
			entry.setSize(content.length);
			try {
				zos.putNextEntry(entry);
				zos.write(content);
			} catch (IOException e) {
				System.out.println(e);
			} finally {
				try {
					zos.closeEntry();
				} catch (IOException e) {
					System.out.println(e);
				}
			}

		}

		zos.close();

		response.setContentType("application/zip");

		// set headers for the response
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=cvs.zip");
		response.setHeader(headerKey, headerValue);
		response.getOutputStream().write(baos.toByteArray());
	}
	
	private void addZipEntry(String template, String userName, ZipOutputStream zos)
			throws CConvertException, MalformedURLException {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		CVGeneratorController.generatePdf(converter, baos, template, userName);
		byte[] content = baos.toByteArray();
		
		ZipEntry entry = new ZipEntry(userName + ".pdf");
		entry.setSize(content.length);
		try {
			zos.putNextEntry(entry);
			zos.write(content);
		} catch (IOException e) {
			System.out.println(e);
		} finally {
			try {
				zos.closeEntry();
			} catch (IOException e) {
				System.out.println(e);
			}
		}
	}
}
