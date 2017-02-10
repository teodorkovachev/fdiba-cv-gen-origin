/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Teo
 *
 */
@Entity
@Table(name = "skills")
public class PersonalSkills implements PersonalDetail {
	
	@Id
	@Column(name = "username")
	private String userName;
	
	@Column(name = "com")
	private String com;
	
	@Column(name = "org")
	private String org;
	
	@Column(name = "prof")
	private String prof;
	
	@Column(name = "tech")
	private String tech;
	
	@Column(name = "oth")
	private String other;

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
	 * @return the com
	 */
	public String getCom() {
		return com;
	}

	/**
	 * @param com the com to set
	 */
	public void setCom(String com) {
		this.com = com;
	}

	/**
	 * @return the org
	 */
	public String getOrg() {
		return org;
	}

	/**
	 * @param org the org to set
	 */
	public void setOrg(String org) {
		this.org = org;
	}

	/**
	 * @return the prof
	 */
	public String getProf() {
		return prof;
	}

	/**
	 * @param prof the prof to set
	 */
	public void setProf(String prof) {
		this.prof = prof;
	}

	/**
	 * @return the tech
	 */
	public String getTech() {
		return tech;
	}

	/**
	 * @param tech the tech to set
	 */
	public void setTech(String tech) {
		this.tech = tech;
	}

	/**
	 * @return the other
	 */
	public String getOther() {
		return other;
	}

	/**
	 * @param other the other to set
	 */
	public void setOther(String other) {
		this.other = other;
	}
}