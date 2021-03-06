package com.fusionsoft.docs.config;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration;

// Replacement to web.xml

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.fusionsoft.docs.config.ApplicationConfig;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { ApplicationConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return null;
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}
	@Override
    protected void customizeRegistration(ServletRegistration.Dynamic registration) {
        registration.setMultipartConfig(getMultipartConfigElement());
    }
 
    private MultipartConfigElement getMultipartConfigElement(){
        MultipartConfigElement multipartConfigElement = new MultipartConfigElement(LOCATION,  MAX_FILE_SIZE,  MAX_REQUEST_SIZE, FILE_SIZE_THRESHOLD);
        return multipartConfigElement;
    }
     
    /*Variables For the Document That is Uploaded*/
//      private static final String LOCATION = "C:/Users/abhi/";
//    private static final String LOCATION = "/usr/local/tomcat9/Documents";/*Path In Server*/
      private static final String LOCATION = "Location";/*Path In Amazon Web Services Server */
 
    private static final long MAX_FILE_SIZE = 1024 * 1024 * 2000;//20 GigaBytes
    
    private static final long MAX_REQUEST_SIZE = 1024 * 1024 * 3000;//30 GigaBytes
    private static final int FILE_SIZE_THRESHOLD = 0;
}