package org.tu.sofia.fdiba.cvgen.servlet3;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import org.tu.sofia.fdiba.cvgen.servlet3.cfg.RootCfg;
import org.tu.sofia.fdiba.cvgen.servlet3.cfg.WebCfg;

/**
 * @author Teo
 *
 */
public class ServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

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

}
