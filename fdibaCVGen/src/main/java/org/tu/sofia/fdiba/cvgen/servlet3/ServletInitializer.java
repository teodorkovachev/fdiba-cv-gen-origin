package org.tu.sofia.fdiba.cvgen.servlet3;

import java.io.File;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import org.tu.sofia.fdiba.cvgen.servlet3.cfg.RootCfg;
import org.tu.sofia.fdiba.cvgen.servlet3.cfg.WebCfg;

/**
 * @author Teo
 *
 */
public class ServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	private static final int MAX_UPL_SIZE = 5 * 1024 * 1024;
	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { RootCfg.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { WebCfg.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}
	
	@Override
	protected void customizeRegistration(ServletRegistration.Dynamic registration) {

		// upload temp file will put here
		File uploadDirectory = new File(System.getProperty("java.io.tmpdir"));

		// register a MultipartConfigElement
		MultipartConfigElement multipartConfigElement = new MultipartConfigElement(uploadDirectory.getAbsolutePath(),
				MAX_UPL_SIZE, MAX_UPL_SIZE * 2, MAX_UPL_SIZE / 2);

		registration.setMultipartConfig(multipartConfigElement);

	}

}
