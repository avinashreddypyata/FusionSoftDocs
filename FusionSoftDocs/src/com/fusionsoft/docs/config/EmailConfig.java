package com.fusionsoft.docs.config;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
@ComponentScan(basePackages = "com.fusionsoft.docs")
@PropertySource("file:${FSDOCS_CONF_DIR}/emailconfig.properties")
public class EmailConfig {

    @Autowired
    private Environment environment;
	
    @Bean
    public JavaMailSender getMailSender(){
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
         
        //Using gmail
        mailSender.setHost(environment.getRequiredProperty("mail.hostname"));
        mailSender.setPort(Integer.parseInt(environment.getRequiredProperty("mail.hostport")));
        mailSender.setUsername(environment.getRequiredProperty("mail.username"));
        mailSender.setPassword(environment.getRequiredProperty("mail.password"));
         
        Properties javaMailProperties = new Properties();
        javaMailProperties.put("mail.smtp.starttls.enable", environment.getRequiredProperty("mail.smtp.starttls.enable"));
        javaMailProperties.put("mail.smtp.auth", environment.getRequiredProperty("mail.smtp.auth"));
        javaMailProperties.put("mail.transport.protocol", environment.getRequiredProperty("mail.transport.protocol"));
        javaMailProperties.put("mail.debug", environment.getRequiredProperty("mail.debug")); //Prints out everything on screen
         
        mailSender.setJavaMailProperties(javaMailProperties);
        return mailSender;
    }
}
