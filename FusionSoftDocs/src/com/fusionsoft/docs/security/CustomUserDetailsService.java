package com.fusionsoft.docs.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.fusionsoft.docs.dao.UserDao;
import com.fusionsoft.docs.model.CustomUser;

@Service
public class CustomUserDetailsService implements UserDetailsService {
 
     @Autowired
     private UserDao userDao;

    public CustomUser loadUserByUsername(String username) throws UsernameNotFoundException {
        return userDao.findUserByUsername(username);
   }
    }