package com.fusionsoft.docs.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fusionsoft.docs.dao.UserDao;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Email;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.FileBucket;
import com.fusionsoft.docs.model.Immigration;
import com.fusionsoft.docs.model.Profile;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	public UserDao userDao;
	 @Autowired
	JavaMailSender mailSender;
	 @Autowired
	    private PasswordEncoder passwordEncoder;
	 
	@Override
	public void updateprofile(Profile profile, int id) {
		// TODO Auto-generated method stub
		userDao.updateprofile(profile, id);
		
	}
	@Override
	public void deleteprofile(int userid) {
		// TODO Auto-generated method stub
		userDao.deleteprofile(userid);
		
	}
	@Override
	public Profile findprofile(int userid) {
		// TODO Auto-generated method stub
		Profile profile = userDao.findprofile(userid);
		return profile;
	}
	@Override
	public List<Profile> findalluserprofiles() {
		
		List<Profile> profiles = userDao.findalluserprofiles();
		// TODO Auto-generated method stub
		return profiles;
	}
    public void  emailapplicant(Email email){
    	MimeMessagePreparator preparator = getMessagePreparator(email);
    	 
        try {
            mailSender.send(preparator);
            System.out.println("Message Sent.....");
        } catch (MailException ex) {
            System.err.println(ex.getMessage());
        }
	}
    private MimeMessagePreparator getMessagePreparator(Email email) {
    	 MimeMessagePreparator preparator = new MimeMessagePreparator() {
    		 
             public void prepare(MimeMessage mimeMessage) throws Exception {
                 mimeMessage.setFrom("techfusionsoft@gmail.com");
                 mimeMessage.setRecipient(Message.RecipientType.TO,
                         new InternetAddress(email.getProfileemail()));
                 mimeMessage.setText(email.getMessage());
                 mimeMessage.setSubject("Update In FusionSoft Application");
             }
         };
         return preparator;
	}
	public byte[] readBytesFromFile(String filePath) throws IOException {
        File inputFile = new File(filePath);
        FileInputStream inputStream = new FileInputStream(inputFile);
         
        byte[] fileBytes = new byte[(int) inputFile.length()];
        inputStream.read(fileBytes);
        inputStream.close();
         
        return fileBytes;
    }
	@Override
	public HashMap<String,List> findparticulardocuments(int userid) {
		// TODO Auto-generated method stub
		HashMap<String,List> documents = new HashMap<String,List>();
		documents.put("experiencedocuments", userDao.findparticulardocuments(userid, "experience"));
		documents.put("educationaldocuments", userDao.findparticulardocuments(userid, "educational"));
		documents.put("miscellaneousdocuments",userDao.findparticulardocuments(userid, "miscellaneous"));
		return documents;
	}
	@Override
	public CustomUser findCustomUser(int userid) {
		// TODO Auto-generated method stub
		CustomUser customuser = userDao.findCustomUser(userid);
		return customuser;
	}
	@Override
	public int saveDocument(FileBucket fileBucket, CustomUser customuser) {
		Document document = new Document();
		MultipartFile multipartfile = fileBucket.getFile();
		document.setDoctitle(multipartfile.getOriginalFilename());
		document.setDocformat(multipartfile.getContentType());
		try {
			document.setAttachment(multipartfile.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		document.setKeywords(fileBucket.getDescription());
		document.setDoctype(fileBucket.getDoctype());
		document.setCustomuser(customuser);
		int userid = userDao.savedocument(document);
		
		return userid;
	}
	@Override
	public Document finddocument(int docid) {
		Document document = userDao.finddocument(docid);
		return document;
	}
	@Override
	public void deletedoc(int docid) {
		userDao.deletedoc(docid);
		
	}
	@Override
	public int finduseridbydocid(int docid) {
		// TODO Auto-generated method stub
		int userid = userDao.finduseridbydocid(docid);
		return userid;
	}
	@Override
	
	 
	public String generateRandomPassword()
	  {
		 Random RANDOM = new SecureRandom();
		int PASSWORD_LENGTH = 5;
	      String letters = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ23456789+@";

	      String pw = "";
	      for (int i=0; i<PASSWORD_LENGTH; i++)
	      {
	          int index = (int)(RANDOM.nextDouble()*letters.length());
	          pw += letters.substring(index, index+1);
	      }
	      return pw;
	  }
	public Map<Integer, String> saveProfile(Profile profile) {
		// TODO Auto-generated method stub
		Map<Integer,String> useridpassword = new HashMap<Integer, String>();
		
		CustomUser customuser = new CustomUser();
		customuser.setUsername(profile.getEmail());
		String password = generateRandomPassword();
		customuser.setPassword(passwordEncoder.encode(password));
		customuser.setUserrole(2);
		customuser.setFirstlogin(1);
		profile.setCustomuser(customuser);
		customuser.setProfile(profile);
        int userid = userDao.saveProfile(customuser);
        useridpassword.put(userid, password);
        return useridpassword;
	}
	@Override
	public int saveexperience(Profile profile,Experience experience) {
		// TODO Auto-generated method stub
		experience.setProfile(profile);
		int userid = userDao.saveexperience(experience);
		return userid;
	}
	@Override
	public int saveeducation(Profile profile, Education education) {
		// TODO Auto-generated method stub
		education.setProfile(profile);
		int userid = userDao.saveeducation(education);
		return userid;
	}
	@Override
	public Immigration findimmigration(int id) {
		// TODO Auto-generated method stub
		Immigration immigration = userDao.findimmigration(id);
		return immigration;
	}
	@Override
	public void saveimmigration(Profile profile, Immigration immigration) {
		// TODO Auto-generated method stub
		immigration.setProfile(profile);
		userDao.saveimmigration(immigration);
	}
	@Override
	public List<Experience> findexperiences(int id) {
		// TODO Auto-generated method stub
		List<Experience> experiences = userDao.findexperiences(id);		
		return experiences;
	}
	@Override
	public List<Education> findqualifications(int id) {
		// TODO Auto-generated method stub
		List<Education> educationqualifications = userDao.findqualifications(id);
		return educationqualifications;
	}
	@Override
	public void deleteexperience(int expid) {
		// TODO Auto-generated method stub
		userDao.deleteexperience(expid);
	}
	@Override
	public void updateimmigration(Immigration immigration) {
		// TODO Auto-generated method stub
		userDao.updateimmigration(immigration);
		
	}
	@Override
	public void deleteeducation(int eduid) {
		// TODO Auto-generated method stub
		userDao.deleteeducation(eduid);
		
	}
	@Override
	public void updatefirstlogin(int id) {
		// TODO Auto-generated method stub
		userDao.updatefirstlogin(id);
	}
}
