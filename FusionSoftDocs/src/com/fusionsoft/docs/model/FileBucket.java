package com.fusionsoft.docs.model;

import org.springframework.web.multipart.MultipartFile;

public class FileBucket {
	    String doctype;

		public String getDoctype() {
			return doctype;
		}

		public void setDoctype(String doctype) {
			this.doctype = doctype;
		}

		MultipartFile file;
     
	    String description;
	 
	    public MultipartFile getFile() {
	        return file;
	    }
	 
	    public void setFile(MultipartFile file) {
	        this.file = file;
	    }
	 
	    public String getDescription() {
	        return description;
	    }
	 
	    public void setDescription(String description) {
	        this.description = description;
	    }
}
