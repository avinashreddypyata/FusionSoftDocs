package com.fusionsoft.docs.config;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class FirstAdminPassowrdEncode {
	public static void main(String[] args) {

		int i = 0;
		while (i < 10) {
			String password = "tom";
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String hashedPassword = passwordEncoder.encode(password);

			System.out.println(hashedPassword);
			i++;
		}

	  }
	}
