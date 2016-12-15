package com.fusionsoft.docs.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
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
import com.fusionsoft.docs.model.Applicant;
import com.fusionsoft.docs.model.Certification;
import com.fusionsoft.docs.model.Contact;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Email;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.FileBucket;
import com.fusionsoft.docs.model.Passport;
import com.fusionsoft.docs.model.PasswordResetToken;
import com.fusionsoft.docs.model.Travel;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	public UserDao userDao;
	 @Autowired
	JavaMailSender mailSender;
	 @Autowired
	    private PasswordEncoder passwordEncoder;
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
	public HashMap<String,List<Document>> findparticulardocuments(int userid) {
		// TODO Auto-generated method stub
		HashMap<String,List<Document>> documents = new HashMap<String,List<Document>>();
		documents.put("experiencedocuments", userDao.findparticulardocuments(userid, "Experience"));
		documents.put("passportdocuments", userDao.findparticulardocuments(userid, "Passport"));
		documents.put("educationdocuments",userDao.findparticulardocuments(userid, "Education"));
		documents.put("traveldocuments",userDao.findparticulardocuments(userid, "Travel"));
		documents.put("certificatedocuments",userDao.findparticulardocuments(userid, "Certificate"));
		documents.put("otherdocuments",userDao.findparticulardocuments(userid, "Other"));
		System.out.println("The Documents in The Servvice Layer are"+userDao.findparticulardocuments(userid, "Education").size());
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
	@Override
	public int saveexperience(CustomUser customuser,Experience experience) {
		// TODO Auto-generated method stub
		experience.setCustomuser(customuser);
		int userid = userDao.saveexperience(experience);
		return userid;
	}
	@Override
	public int saveeducation(CustomUser user, Education education) {
		// TODO Auto-generated method stub
		education.setCustomuser(user);
		int userid = userDao.saveeducation(education);
		return userid;
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
	public void deleteeducation(int eduid) {
		// TODO Auto-generated method stub
		userDao.deleteeducation(eduid);
		
	}
	@Override
	public void updatefirstlogin(int id) {
		// TODO Auto-generated method stub
		userDao.updatefirstlogin(id);
	}
	@Override
	public Applicant findapplicant(int id) {
		// TODO Auto-generated method stub
		return userDao.findapplicant(id);
	}
	@Override
	public void saveapplication(CustomUser customuser, Applicant applicant) {
		// TODO Auto-generated method stub
		applicant.setCustomuser(customuser);
		userDao.saveapplication(applicant);
	}
	@Override
	public void updateapplication(Applicant applicant) {
		// TODO Auto-generated method stub
		userDao.updateapplication(applicant);
		
	}
	@Override
	public Contact findcontact(int userid) {
		// TODO Auto-generated method stub
		return userDao.findcontact(userid);
	}
	@Override
	public void savecontact(CustomUser customuser, Contact contact) {
		// TODO Auto-generated method stub
		contact.setCustomuser(customuser);
		userDao.savecontact(contact);
	}
	@Override
	public void updatecontact(Contact contact) {
		// TODO Auto-generated method stub
		userDao.updatecontact(contact);
		
	}
	@Override
	public Passport findpassport(int userid) {
		
		return userDao.findpassport(userid);
	}
	@Override
	public void savepassport(CustomUser customuser, Passport passport) {
		// TODO Auto-generated method stub
		passport.setCustomuser(customuser);
		userDao.savepassport(passport);
		
	}
	@Override
	public void updatepassport(Passport passport) {
		// TODO Auto-generated method stub
		userDao.updatepassport(passport);
	}
	@Override
	public List<Travel> findtraveldetails(int userid) {
		// TODO Auto-generated method stub
		return userDao.findtraveldetails(userid);
	}
	@Override
	public Travel findtravel(int travelid) {
		// TODO Auto-generated method stub
		return userDao.findtravel(travelid);
	}
	@Override
	public void savetravel(CustomUser customuser, Travel travel) {
		// TODO Auto-generated method stub
		travel.setCustomuser(customuser);
		userDao.savetravel(travel);
		
	}
	@Override
	public void updatetravel(Travel travel) {
		// TODO Auto-generated method stub
		userDao.updatetravel(travel);
		
	}
	
	@Override
	public List<Certification> findcertificationdetails(int userid) {
		// TODO Auto-generated method stub
		return userDao.findcertificationdetails(userid);
	}
	
	@Override
	public void savecertification(CustomUser customuser, Certification certification) {
		// TODO Auto-generated method stub
		certification.setCustomuser(customuser);
		userDao.savecertification(certification);
	}
	
	@Override
	public void updatecertification(Certification certification) {
		// TODO Auto-generated method stub
		userDao.updatecertification(certification);
		
	}
	
	@Override
	public void updateeducation(Education education) {
		// TODO Auto-generated method stub
		userDao.updateeducation(education);
	}
	@Override
	public void updateexperience(Experience experience) {
		// TODO Auto-generated method stub
		userDao.updateexperience(experience);
	}
	@Override
	public String saveapplicant(String email) {
		// TODO Auto-generated method stub
		CustomUser customuser = new CustomUser();
		customuser.setUsername(email);
		String password = generateRandomPassword();
		customuser.setPassword(passwordEncoder.encode(password));
		customuser.setUserrole(2);
		customuser.setFirstlogin(1);
        int userid = userDao.savecustomuser(customuser);
		return password;
	}
	@Override
	public List<Applicant> findallapplicants() {
		// Calling The Dao Layer for getting the all applicants from the Dao Layer
		List<Applicant> applicants = userDao.findallapplicants();
		// TODO Auto-generated method stub
		return applicants;
	}
	@Override
	public void deletetravel(int travelid) {
		// Delete The Travel Entry From The Table
		userDao.deletetravel(travelid);
		
	}
	@Override
	public Education findeducation(int eduid) {
		// TODO Auto-generated method stub
		return userDao.findeducation(eduid);
	}
	@Override
	public Experience findexperience(int expid) {
		// TODO Auto-generated method stub
		return userDao.findexperience(expid);
	}
	@Override
	public void deletecertificate(int certificationid) {
		// TODO Auto-generated method stub
		userDao.deletecertificate(certificationid);
	}
	@Override
	public Certification findcertificate(int certificationid) {
		// TODO Auto-generated method stub
		return userDao.findcertificate(certificationid);
	}
	@Override
	public CustomUser findCustomUserByEmail(String email) {
		// TODO Auto-generated method stub
		return userDao.findCustomUserByEmail(email);
	}
	@Override
	public void createPasswordResetTokenForUser(CustomUser customuser, PasswordResetToken passwordresettoken) {
		// TODO Auto-generated method stub
		Calendar calobj = Calendar.getInstance();
	    passwordresettoken.setExpiryDate(calobj.getTime());
	    System.out.println("The CustomUser Id is"+customuser.getUserid());
	    passwordresettoken.setCustomuser(customuser);
	    userDao.createPasswordResetTokenForUser(passwordresettoken);
		
	}
	@Override
	public PasswordResetToken getPasswordResetToken(String token) {
		// TODO Auto-generated method stub
		return userDao.findpasswordresettoken(token);
	}
	@Override
	public void changeUserPassword(CustomUser customuser, String password) {
		// TODO Auto-generated method stub
		password = passwordEncoder.encode(password);
		userDao.changeUserPassword(customuser,password);
	}
	@Override
	public void updatePasswordResetTokenForUser(int userid, String token) {
		// TODO Auto-generated method stub
		PasswordResetToken passwordresettoken = new PasswordResetToken();
		passwordresettoken.setToken(token);
		userDao.updatePasswordResetTokenForUser( userid,passwordresettoken);
	}
	
	@Override
	public void updatecustomuserapplicationstatus(int userid, String applicationstatus) {
		// TODO Auto-generated method stub
		userDao.updatecustomuserapplicationstatus(userid, applicationstatus);
	}
	@Override
	public List<CustomUser> findallcustomusers() {
		// TODO Auto-generated method stub
		
		return userDao.findallcustomusers();
	}
	
	
}
