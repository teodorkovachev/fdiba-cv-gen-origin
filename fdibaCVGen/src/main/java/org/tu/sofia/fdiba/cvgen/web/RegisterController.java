/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.web;

import javax.persistence.PersistenceException;

import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.tu.sofia.fdiba.cvgen.entity.User;
import org.tu.sofia.fdiba.cvgen.svc.UserService;

/**
 * @author Teo
 *
 */
@Controller
@RequestMapping("/register")
public class RegisterController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public String registerPage() {
		return "register";
	}
	
	@ResponseBody
	@RequestMapping(value="/submit", method= RequestMethod.POST)
	public String submitRegister(User user) {
		try {
			userService.createUser(user);
		} catch (PersistenceException e) {
			if (e.getCause() instanceof ConstraintViolationException
					&& "PRIMARY".equals(((ConstraintViolationException) e.getCause()).getConstraintName())) {
				return "User with username: " + user.getUserName() + " already exists";
			} else {
				throw e;
			}
		}
		return "Successfully registered user: " + user.getUserName();
	}
}
