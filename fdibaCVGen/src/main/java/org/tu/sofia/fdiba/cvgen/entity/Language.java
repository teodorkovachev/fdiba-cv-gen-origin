/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Teo
 *
 */
@Entity
@Table(name="language")
public class Language implements PersonalDetail{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name="username")
	private String userName;
	
	@Column(name="lang_name")
	private String name;
	
	@Column(name="reading")
	private byte reading;
	
	@Column(name="listening")
	private byte listening;
	
	@Column(name="writing")
	private byte writing;
	
	@Column(name="speaking")
	private byte speaking;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the reading
	 */
	public byte getReading() {
		return reading;
	}

	/**
	 * @param reading the reading to set
	 */
	public void setReading(byte reading) {
		this.reading = reading;
	}

	/**
	 * @return the listening
	 */
	public byte getListening() {
		return listening;
	}

	/**
	 * @param listening the listening to set
	 */
	public void setListening(byte listening) {
		this.listening = listening;
	}

	/**
	 * @return the writing
	 */
	public byte getWriting() {
		return writing;
	}

	/**
	 * @param writing the writing to set
	 */
	public void setWriting(byte writing) {
		this.writing = writing;
	}

	/**
	 * @return the speaking
	 */
	public byte getSpeaking() {
		return speaking;
	}

	/**
	 * @param speaking the speaking to set
	 */
	public void setSpeaking(byte speaking) {
		this.speaking = speaking;
	}

	
	
}
