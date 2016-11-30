package com.fusionsoft.docs.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.fusionsoft.docs.security.CustomAuthenticationProvider;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	DataSource dataSource;
	@Autowired
	private CustomAuthenticationProvider customAuthenticationProvider;
	@Autowired
    UserDetailsService CustomUserDetailsService;
	 @Bean
	    public DaoAuthenticationProvider authenticationProvider() {
	        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
	        authenticationProvider.setUserDetailsService(CustomUserDetailsService);
	        authenticationProvider.setPasswordEncoder(passwordEncoder());
	        return authenticationProvider;
	    }	
	@Bean
	public PasswordEncoder passwordEncoder(){
		PasswordEncoder encoder = new BCryptPasswordEncoder(11);
		return encoder;
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
			.antMatchers("/home").access("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
			.antMatchers("/user/*").access("hasRole('ROLE_USER')")
			.antMatchers("/admin/*").access("hasRole('ROLE_ADMIN')")
			.and()
				.formLogin().loginPage("/login")
				.defaultSuccessUrl("/home")
				.failureUrl("/login?error")
				.usernameParameter("username").passwordParameter("password")				
			.and()
				.logout().logoutSuccessUrl("/login?logout"); 
		  http
	      .csrf().disable();
		
		
		http.exceptionHandling().accessDeniedPage("/login?denied");
		
	}	
	
}