/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Teo
 *
 */
@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping
	public String home(){
		return "home";
	}
}
