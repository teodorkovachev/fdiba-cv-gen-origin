/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.svc;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collection;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tu.sofia.fdiba.cvgen.dao.PersonalDetailDAO;
import org.tu.sofia.fdiba.cvgen.entity.Image;
import org.tu.sofia.fdiba.cvgen.entity.PersonalDetail;
import org.tu.sofia.fdiba.cvgen.entity.PersonalInfo;

/**
 * @author Teo
 *
 */
@Service
@Transactional
public class PersonalProfileServiceImpl implements PersonalProfileService {

	@Autowired
	private PersonalDetailDAO pdd;
	
	@Autowired
	private ServletContext servletContext;
	
	@Override
	public void saveOrUpdate(PersonalDetail detail) {
		detail.setUserName(getUserName());
		pdd.saveOrUpdate(detail);
	}

	@Override
	public PersonalInfo getPersonalInfo() {
		PersonalInfo pi = pdd.getByUserName(PersonalInfo.class, getUserName());
		return pi == null ? new PersonalInfo() : pi;
	}
	
	private String getUserName() {
		return SecurityContextHolder.getContext().getAuthentication().getName();
	}

	@Override
	public <T> Collection<T> getCollectionOf(Class<T> clazz) {
		return pdd.getCollectionByUserName(clazz, getUserName());
	}

	@Override
	public <T> T getById(Class<T> clazz, int id) {
		return pdd.getById(clazz, id);
	}

	@Override
	public void delete(Object obj) {
		pdd.delete(obj);
	}

	@Override
	public void saveImage(byte[] img) {
		Image imgEntity = new Image();
		imgEntity.setUserName(getUserName());
		imgEntity.setImg(img);
		pdd.saveOrUpdate(imgEntity);
	}
	
	@Override
	public InputStream getProfilePicture() {
		Image img = pdd.getByUserName(Image.class, getUserName());
		if (img == null) {
			return servletContext.getResourceAsStream("/resources/img/profile-pic-default.jpg");
		} else {
			return new ByteArrayInputStream(img.getImg());
		}
	}
}
