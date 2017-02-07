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
@RequestMapping("/login")
public class AuthenticationController {

	@RequestMapping
	public String loginPage(){
		return "login";
	}
}
