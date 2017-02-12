/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Satellite
 *
 */
@Controller
@RequestMapping(value = "/getPdfView")
public class PdfViewController {

	@RequestMapping(method = RequestMethod.GET)
	public String getPdfView() {
		return "test";
	}
}
