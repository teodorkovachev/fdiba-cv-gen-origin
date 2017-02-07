/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.entity;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @author Teo
 *
 */
@Entity
@Table(name="usr")
public class User {
	
	@Id
	@Column(name="username")
	private String userName;
	
	@Column(name="password")
	private String password;
	
	@Column(name="enabled")
	private boolean enabled = true;
	
	@OneToMany(mappedBy = "username", cascade = CascadeType.PERSIST)
	private Collection<UserRole> userRoles;
	
	@Transient
	private Collection<String> userRolesStr;
	
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the enabled
	 */
	public boolean isEnabled() {
		return enabled;
	}
	/**
	 * @param enabled the enabled to set
	 */
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	/**
	 * @return the userRoles
	 */
	public Collection<String> getUserRolesStr() {
		return userRolesStr;
	}
	/**
	 * @param userRoles the userRoles to set
	 */
	public void setUserRolesStr(Collection<String> userRolesStr) {
		this.userRolesStr = userRolesStr;
		userRoles = new ArrayList<>();
		for(String userRoleStr : userRolesStr){
			userRoles.add(new UserRole(this, userRoleStr));
		}
	}
	/**
	 * @return the userRoles
	 */
	public Collection<UserRole> getUserRoles() {
		return userRoles;
	}
	/**
	 * @param userRoles the userRoles to set
	 */
	public void setUserRoles(Collection<UserRole> userRoles) {
		this.userRoles = userRoles;
	}
}