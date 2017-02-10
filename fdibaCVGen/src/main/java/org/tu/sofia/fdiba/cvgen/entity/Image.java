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
@Table(name = "img")
public class Image  implements PersonalDetail{

	@Id
	@Column(name = "username")
	private String userName;

	@Column(name = "img")
	private byte[] img;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public byte[] getImg() {
		return img;
	}

	public void setImg(byte[] img) {
		this.img = img;
	}
}