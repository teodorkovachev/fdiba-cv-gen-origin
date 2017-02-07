/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Teo
 *
 */
@Entity
@Table(name = "user_role")
public class UserRole {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_role_id")
	private int userRoleId;
	
	
	@ManyToOne
	@JoinColumn(name = "username")
	private User username;

	@Column(name = "role")
	private String role;

	public UserRole(){
	}

	UserRole(User username, String role) {
		this.username = username;
		this.role = role;
	}
}