/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.servlet3.cfg;

import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author Teo
 *
 */
@Configuration
@ComponentScan({ "org.tu.sofia.fdiba.cvgen.svc", "org.tu.sofia.fdiba.cvgen.dao" })
@Import(SecurityCfg.class)
@EnableTransactionManagement
public class RootCfg {
	
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource ds = new BasicDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/fdiba_cv_gen");
		ds.setUsername("fdiba_cv_gen_user");
		ds.setPassword("fdiba2017!");
		return ds;
	}
	
	@Bean
	public SessionFactory sessionFactory() {
		Properties props = new Properties();
		props.put("hibernate.format_sql", "true");
		props.put("hibernate.show_sql", "true");
		props.put("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
		return new LocalSessionFactoryBuilder(dataSource()).scanPackages("org.tu.sofia.fdiba.cvgen.entity")
				.addProperties(props).buildSessionFactory();
	}
	
	@Bean
	public HibernateTransactionManager txManager() {
		return new HibernateTransactionManager(sessionFactory());
	}
}