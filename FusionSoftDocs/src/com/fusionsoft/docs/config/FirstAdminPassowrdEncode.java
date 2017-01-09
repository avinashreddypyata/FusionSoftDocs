package com.fusionsoft.docs.config;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class FirstAdminPassowrdEncode {
	public static void main(String[] args) {

	
			String password = "fsiadmin";
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String hashedPassword = passwordEncoder.encode(password);

			System.out.println(hashedPassword);


	  }
	}
