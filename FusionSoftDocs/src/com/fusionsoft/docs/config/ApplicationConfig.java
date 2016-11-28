package com.fusionsoft.docs.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.fusionsoft.docs.config.SecurityConfig;
/*example*/
@EnableWebMvc
@Configuration
@ComponentScan({ "com.fusionsoft.docs.*" })
@Import(value = { SecurityConfig.class })
public class ApplicationConfig {
	 @Bean(name="multipartResolver")
	    public StandardServletMultipartResolver resolver(){
	        return new StandardServletMultipartResolver();
	    }
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/jsp/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
}