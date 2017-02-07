/**
 * 
 */
package org.tu.sofia.fdiba.cvgen.servlet3.cfg;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

/**
 * @author Teo
 *
 */
@Configuration
@EnableWebSecurity
public class SecurityCfg extends WebSecurityConfigurerAdapter {

	@Autowired
	private DataSource dataSource;

	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("select username, password, enabled from usr where username=?")
				.authoritiesByUsernameQuery("select username, role from user_role where username=?");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/**").authenticated()
			.and().formLogin().loginPage("/login")
				.failureUrl("/login?error").usernameParameter("username").passwordParameter("password")
				.loginProcessingUrl("/j_spring_security_check").and().logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/j_spring_security_logout"))
				.logoutSuccessUrl("/login?logout").and().csrf().disable();

	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/login").antMatchers("/register/**").antMatchers("/resources/**");
	}
}