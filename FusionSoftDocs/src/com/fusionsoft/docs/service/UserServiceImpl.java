package com.fusionsoft.docs.service;

import java.io.File;
import java.security.SecureRandom;
import java.util.ArrayList;
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
import com.fusionsoft.docs.model.Attorney;
import com.fusionsoft.docs.model.Certification;
import com.fusionsoft.docs.model.Contact;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.EducationEvaluation;
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
//	 private static  String destination = "/usr/local/tomcat9/Documents";
        private static  String destination = "C:/Users/abhi/Documents/GitHub/Documents";
	 
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
		documents.put("contactdocuments",userDao.findparticulardocuments(userid, "Contact"));
		
		return documents;
	}
	@Override
	public CustomUser findCustomUser(int userid) {
		// TODO Auto-generated method stub
		CustomUser customuser = userDao.findCustomUser(userid);
		return customuser;
	}
	public String saveFile(MultipartFile multipartFile,String doctype, String username, String discription) throws Exception {
		String directory = destination + username;
		File theDir = new File(directory);
		if (!theDir.exists()) {
		    System.out.println("creating directory: " + username);
		    boolean result = false;

		    try{
		        theDir.mkdir();
		        result = true;
		    } 
		    catch(SecurityException se){
		        //handle it
		    }        
		    if(result) {    
		        System.out.println("DIR For UserName created");  
		    }
		}
		String doctypedirectory = directory + "/" + doctype;
		File doctypeDir = new File(doctypedirectory);
		if (!doctypeDir.exists()) {
		    System.out.println("creating directory: " + doctype);
		    boolean result = false;

		    try{
		    	doctypeDir.mkdir();
		        result = true;
		    } 
		    catch(SecurityException se){
		        //handle it
		    }        
		    if(result) {    
		        System.out.println("DIR created");  
		    }
		}
		String discriptiondirectory = doctypedirectory  + "/" + discription;
		File discriptdirectory = new File(discriptiondirectory);
		if (!discriptdirectory.exists()) {
		    System.out.println("creating directory: " + doctype);
		    boolean result = false;

		    try{
		    	discriptdirectory.mkdir();
		        result = true;
		    } 
		    catch(SecurityException se){
		        //handle it
		    }        
		    if(result) {    
		        System.out.println("DIR created");  
		    }
		}
		String path = discriptdirectory + "/" + multipartFile.getOriginalFilename();
	    File file = new File(path);
	    multipartFile.transferTo(file);
	    return path;
	}
	@Override
	public int saveDocument(FileBucket fileBucket, CustomUser customuser) {
		Document document = new Document();
		String path = null;
		MultipartFile multipartfile = fileBucket.getFile();
		try {
			
			path = saveFile(multipartfile,fileBucket.getDoctype(), customuser.getUsername(), fileBucket.getDescription());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		document.setDoctitle(multipartfile.getOriginalFilename());
		document.setDocformat(multipartfile.getContentType());
		document.setKeywords(fileBucket.getDescription());
		document.setDoctype(fileBucket.getDoctype());
		document.setCustomuser(customuser);
		document.setDoclocation(path);
		int userid = userDao.savedocument(document);
		
		return userid;
	}
	@Override
	public Document finddocument(int docid) throws documentnotfoundservice{
		try{
		Document document = userDao.finddocument(docid);
		return document;
		}catch(Exception e)
		{
			throw new documentnotfoundservice("Document Not Found In Service");
		}
	}
	@Override
	public void deletedoc(int docid) {
		Document document = userDao.finddocument(docid);
		try{

    		File file = new File(document.getDoclocation());

    		if(file.delete()){
    			System.out.println(file.getName() + " is deleted!");
    		}else{
    			System.out.println("Delete operation is failed.");
    		}

    	}catch(Exception e){

    		e.printStackTrace();

    	}
		userDao.deletedoc(docid);
		
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
	public void saveexperience(CustomUser customuser,Experience experience) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();
		if(experience.getFile().isEmpty()){
			experience.setCustomuser(customuser);
			userDao.saveexperience(experience);
		}
		else{
			experience.setDocumenttitle(experience.getFile().getOriginalFilename());
			experience.setCustomuser(customuser);
			userDao.saveexperience(experience);
			filebucket.setFile(experience.getFile());
			filebucket.setDescription(experience.getDocumentdescription());
			filebucket.setDoctype("Experience");
			saveDocument(filebucket, experience, customuser);
			
		}
		}
	@Override
	public int saveeducation(CustomUser customuser, Education education) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();
		if(education.getFile().isEmpty()){
			education.setCustomuser(customuser);
			userDao.saveeducation(education);
		}
		else{
			education.setDocumenttitle(education.getFile().getOriginalFilename());
			education.setCustomuser(customuser);
			userDao.saveeducation(education);
			filebucket.setFile(education.getFile());
			filebucket.setDescription(education.getDocumentdescription());
			filebucket.setDoctype("Education");
			saveDocument(filebucket, education, customuser);
			
		}
		return 0;
		}
	@Override
	public List<Experience> findexperiences(int id) throws experiencesnotfoundbyid {
		// TODO Auto-generated method stub
		try{
		List<Experience> experiences = userDao.findexperiences(id);		
		return experiences;
		}catch(Exception e){
			throw new experiencesnotfoundbyid("Experiences Not Found In Service");
		}
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
	public Applicant findapplicant(int id) throws applicantnotfoundservice {
		// TODO Auto-generated method stub
		try{
		return userDao.findapplicant(id);
		}catch(Exception e){
			throw new applicantnotfoundservice("Applicant Not Found In Service");
		}
	}
	@Override
	public void saveapplication(CustomUser customuser, Applicant applicant) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();
		if(applicant.getFile().isEmpty()){
			applicant.setAdminverification("Pending");
			applicant.setAttorneyverificationstatus("Pending");
			applicant.setEducationevaluationstatus("Pending");
			applicant.setCustomuser(customuser);
			userDao.saveapplication(applicant);
		}
		else{
			filebucket.setFile(applicant.getFile());
			filebucket.setDescription(applicant.getDocumentdescription());
			filebucket.setDoctype("Other");
			saveDocument(filebucket, customuser);
			applicant.setAdminverification("Pending");
			applicant.setAttorneyverificationstatus("Pending");
			applicant.setEducationevaluationstatus("Pending");
			applicant.setCustomuser(customuser);
			userDao.saveapplication(applicant);
		}
	}
	@Override
	public void updateapplication(CustomUser customuser,Applicant applicant) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();
		if(applicant.getFile().isEmpty()){
			userDao.updateapplication(applicant);
		}
		else{
			
			filebucket.setFile(applicant.getFile());
			filebucket.setDescription(applicant.getDocumentdescription());
			filebucket.setDoctype("Other");
			saveDocument(filebucket, customuser);
			userDao.updateapplication(applicant);
		}
		
		
	}
	@Override
	public Contact findcontact(int userid) throws contactnotfoundservice {
		// TODO Auto-generated method stub
		try{
		return userDao.findcontact(userid);
		}catch(Exception e){
			throw new contactnotfoundservice("Contact Not Found In Service");
		}
	}
	@Override
	public void savecontact(CustomUser customuser, Contact contact) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();
		if(contact.getFile().isEmpty()){
			contact.setCustomuser(customuser);
			userDao.savecontact(contact);
		}
		else{
			filebucket.setFile(contact.getFile());
			filebucket.setDescription(contact.getDocumentdescription());
			filebucket.setDoctype("Contact");
			saveDocument(filebucket, customuser);
			contact.setCustomuser(customuser);
			userDao.savecontact(contact);
		}
	}
	@Override
	public void updatecontact(CustomUser customuser, Contact contact) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();
		if(contact.getFile().isEmpty()){
			userDao.updatecontact(contact); 
		}
		else{
			
			filebucket.setFile(contact.getFile());
			filebucket.setDescription(contact.getDocumentdescription());
			filebucket.setDoctype("Contact");
			saveDocument(filebucket, customuser);
			userDao.updatecontact(contact);
		}
		
		
	}
	@Override
	public Passport findpassport(int userid) throws PassportNotFoundInService{
		try{
		return userDao.findpassport(userid);
		}catch(Exception e){
			throw new PassportNotFoundInService("Passport Not Found In Service");
		}
	}
	@Override
	public void savepassport(CustomUser customuser, Passport passport) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();
		System.out.println("The Passport fILE IS"+passport.getFile());
		if(passport.getFile().isEmpty()){
			passport.setCustomuser(customuser);
			userDao.savepassport(passport);
		}
		else{
			filebucket.setFile(passport.getFile());
			filebucket.setDescription(passport.getDocumentdescription());
			filebucket.setDoctype("Passport");
			saveDocument(filebucket, customuser);
			passport.setCustomuser(customuser);
			userDao.savepassport(passport);
		}
		
	}
	@Override
	public void updatepassport(CustomUser customuser, Passport passport) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();
		System.out.println("The Passport fILE IS"+passport.getFile());
		if(passport.getFile().isEmpty()){
			userDao.updatepassport(passport);
		}
		else{
			
			filebucket.setFile(passport.getFile());
			filebucket.setDescription(passport.getDocumentdescription());
			filebucket.setDoctype("Passport");
			saveDocument(filebucket, customuser);
			userDao.updatepassport(passport);
		}
		
		
	}
	@Override
	public List<Travel> findtraveldetails(int userid) throws FindTravelDetailsNotFoundService{
		// TODO Auto-generated method stub
		try{
		return userDao.findtraveldetails(userid);
		}catch(Exception e){
			throw new FindTravelDetailsNotFoundService("Travel Details Not Found In Service");
		}
	}
	@Override
	public Travel findtravel(int travelid) throws FindTravelByIdNotFoundService {
		// TODO Auto-generated method stub
		try{
		return userDao.findtravel(travelid);
		}catch(Exception e){
			throw new FindTravelByIdNotFoundService("Travel Entry Not Found In Service");
		}
	}
	@Override
	public void savetravel(CustomUser customuser, Travel travel) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				FileBucket filebucket = new FileBucket();
				if(travel.getFile().isEmpty()){
					travel.setCustomuser(customuser);
					userDao.savetravel(travel);
				}
				else{
					travel.setDocumenttitle(travel.getFile().getOriginalFilename());
					travel.setCustomuser(customuser);
					userDao.savetravel(travel);
					filebucket.setFile(travel.getFile());
					filebucket.setDescription(travel.getDocumentdescription());
					filebucket.setDoctype("Travel");
					saveDocument(filebucket, travel, customuser);
					
				}

		
	}
	@Override
	public void updatetravel(CustomUser customuser,Travel travel) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();

		if(travel.getFile().isEmpty()){
			userDao.updatetravel(travel);
		}
		else{
			
			travel.setDocumenttitle(travel.getFile().getOriginalFilename());
			userDao.updatetravel(travel);
			
			filebucket.setFile(travel.getFile());
			filebucket.setDescription(travel.getDocumentdescription());
			filebucket.setDoctype("Travel");
			saveDocument(filebucket, travel, customuser);
		}
		
	}
	
	@Override
	public List<Certification> findcertificationdetails(int userid) throws CertificateDetailsNotFound {
		// TODO Auto-generated method stub
		try{
		return userDao.findcertificationdetails(userid);
		}catch(Exception e){
			throw new CertificateDetailsNotFound("Certificate Details Not Found");
		}
	}
	
	@Override
	public void savecertification(CustomUser customuser, Certification certification) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();
		if(certification.getFile().isEmpty()){
			certification.setCustomuser(customuser);
			userDao.savecertification(certification);
		}
		else{
			certification.setDocumenttitle(certification.getFile().getOriginalFilename());
			certification.setCustomuser(customuser);
			userDao.savecertification(certification);
			filebucket.setFile(certification.getFile());
			filebucket.setDescription(certification.getDocumentdescription());
			filebucket.setDoctype("Certification");
			saveDocument(filebucket, certification, customuser);
			
		}


}
	private void saveDocument(FileBucket fileBucket, Certification certification, CustomUser customuser) {
		// TODO Auto-generated method stub
		Document document = new Document();
		String path = null;
		MultipartFile multipartfile = fileBucket.getFile();
		try {
			
			path = saveFile(multipartfile,fileBucket.getDoctype(), customuser.getUsername(), fileBucket.getDescription());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		document.setDoctitle(multipartfile.getOriginalFilename());
		document.setDocformat(multipartfile.getContentType());
		document.setKeywords(fileBucket.getDescription());
		document.setDoctype(fileBucket.getDoctype());
		document.setCustomuser(customuser);
		document.setDoclocation(path);
		document.setCertification(certification);
	    userDao.savedocument(document);
	}
	
	@Override
	public void updatecertification(CustomUser customuser, Certification certification) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();

		if(certification.getFile().isEmpty()){
			userDao.updatecertification(certification);;
		}
		else{
			
			certification.setDocumenttitle(certification.getFile().getOriginalFilename());
			userDao.updatecertification(certification);
			
			filebucket.setFile(certification.getFile());
			filebucket.setDescription(certification.getDocumentdescription());
			filebucket.setDoctype("Certification");
			saveDocument(filebucket, certification, customuser);
		}
	}
	
	@Override
	public void updateeducation(CustomUser customuser, Education education) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();

		if(education.getFile().isEmpty()){
			userDao.updateeducation(education);
		}
		else{
			
			education.setDocumenttitle(education.getFile().getOriginalFilename());
			userDao.updateeducation(education);
			
			filebucket.setFile(education.getFile());
			filebucket.setDescription(education.getDocumentdescription());
			filebucket.setDoctype("Education");
			saveDocument(filebucket, education, customuser);
		}
	}
	@Override
	public void updateexperience(CustomUser customuser, Experience experience) {
		// TODO Auto-generated method stub
		FileBucket filebucket = new FileBucket();

		if(experience.getFile().isEmpty()){
			userDao.updateexperience(experience);
		}
		else{
			
			experience.setDocumenttitle(experience.getFile().getOriginalFilename());
			userDao.updateexperience(experience);
			
			filebucket.setFile(experience.getFile());
			filebucket.setDescription(experience.getDocumentdescription());
			filebucket.setDoctype("Experience");
			saveDocument(filebucket, experience, customuser);
		}
	}
	private void saveDocument(FileBucket fileBucket, Experience experience, CustomUser customuser) {
		// TODO Auto-generated method stub
		Document document = new Document();
		String path = null;
		MultipartFile multipartfile = fileBucket.getFile();
		try {
			
			path = saveFile(multipartfile,fileBucket.getDoctype(), customuser.getUsername(), fileBucket.getDescription());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		document.setDoctitle(multipartfile.getOriginalFilename());
		document.setDocformat(multipartfile.getContentType());
		document.setKeywords(fileBucket.getDescription());
		document.setDoctype(fileBucket.getDoctype());
		document.setCustomuser(customuser);
		document.setDoclocation(path);
		document.setExperience(experience);
	    userDao.savedocument(document);
	}
	@Override
	public String saveapplicant(CustomUser customuser) {
		// TODO Auto-generated method stub
		CustomUser updatedcustomuser = new CustomUser();
		updatedcustomuser.setUsername(customuser.getUsername());
		String password = generateRandomPassword();
		updatedcustomuser.setPassword(passwordEncoder.encode(password));
		updatedcustomuser.setSubmission("pending");
		updatedcustomuser.setUserrole(2);
		updatedcustomuser.setFirstlogin(1);
		updatedcustomuser.setAdminnotes(customuser.getAdminnotes());
        userDao.savecustomuser(updatedcustomuser);
		return password;
	}
	@Override
	public List<Applicant> findallapplicants() throws ApplicantsNotFoundExceptionService {
		// Calling The Dao Layer for getting the all applicants from the Dao Layer
		try{
		List<Applicant> applicants = userDao.findallapplicants();
		// TODO Auto-generated method stub
		return applicants;
		}catch(Exception e){
			throw new ApplicantsNotFoundExceptionService("Applicants Not Found In Service");
		}
	}
	@Override
	public void deletetravel(int travelid) {
		// Delete The Travel Entry From The Table
		userDao.deletetravel(travelid);
		
	}
	@Override
	public Education findeducation(int eduid) throws EducationNotFoundExceptionService{
		// TODO Auto-generated method stub
		try{
		return userDao.findeducation(eduid);
		}catch(Exception e){
			throw new EducationNotFoundExceptionService("Education Not Found Service");
		}
	}
	@Override
	public Experience findexperience(int expid) throws ExperienceNotFoundService{
		// TODO Auto-generated method stub
		return userDao.findexperience(expid);
	}
	@Override
	public void deletecertificate(int certificationid) {
		// TODO Auto-generated method stub
		userDao.deletecertificate(certificationid);
	}
	@Override
	public Certification findcertificate(int certificationid) throws CertificateNotFoundService{
		// TODO Auto-generated method stub
		try {
			return userDao.findcertificate(certificationid);
		} catch (Exception e) {
			throw new CertificateNotFoundService("Certificate Not Found In Service");
		} 
		
	}
	@Override
	public CustomUser findCustomUserByEmail(String email) {
		// TODO Auto-generated method stub
		return userDao.findCustomUserByEmail(email);
	}
	@Override
	public void createPasswordResetTokenForUser(CustomUser customuser, PasswordResetToken passwordresettoken)throws PasswordResetTokenNotFound {
		// TODO Auto-generated method stub
		try{
		Calendar calobj = Calendar.getInstance();
	    passwordresettoken.setExpiryDate(calobj.getTime());
	    System.out.println("The CustomUser Id is"+customuser.getUserid());
	    passwordresettoken.setCustomuser(customuser);
	    userDao.createPasswordResetTokenForUser(passwordresettoken);
		}catch(Exception e ){
			throw new PasswordResetTokenNotFound("PassResetTokenNotFound In Service");
		}
		
	}
	@Override
	public PasswordResetToken getPasswordResetToken(String token) {
		// TODO Auto-generated method stub
		return userDao.findpasswordresettoken(token);
	}
	@Override
	public void changeUserPassword(CustomUser customuser, String password) throws PasswordNotFoundException {
		// TODO Auto-generated method stub
		try {
			password = passwordEncoder.encode(password);
			userDao.changeUserPassword(customuser,password);
		} catch (Exception e) {
			// TODO: handle exception
			throw new PasswordNotFoundException("Password Not Found In Service");
		}
		
	}
	@Override
	public void updatePasswordResetTokenForUser(int userid, String token) throws TokenNotFoundException {
		// TODO Auto-generated method stub
		try {
			PasswordResetToken passwordresettoken = new PasswordResetToken();
			passwordresettoken.setToken(token);
			userDao.updatePasswordResetTokenForUser(userid,passwordresettoken);
		} catch (Exception e) {
			// TODO: handle exception
			throw new TokenNotFoundException("Token Not Found In Service");
		}
		
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
	@Override
	public void updatecustomusersubmission(int userid) {
		// TODO Auto-generated method stub
		userDao.updatecustomusersubmission(userid);
	}
	@Override
	public ArrayList<Document> finddocumentbytravelid(int travelid) {
		// TODO Auto-generated method stub
		return userDao.finddocumentbytravelid(travelid);
	}
	@Override
	public List<Document> finddocumentbyeduid(int eduid) {
		// TODO Auto-generated method stub
		return userDao.finddocumentbyeduid(eduid);
	}
	@Override
	public int saveDocument(FileBucket fileBucket, Travel travel,CustomUser customuser) {
		// TODO Auto-generated method stub
		Document document = new Document();
		String path = null;
		MultipartFile multipartfile = fileBucket.getFile();
		try {
			
			path = saveFile(multipartfile,fileBucket.getDoctype(), customuser.getUsername(), fileBucket.getDescription());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		document.setDoctitle(multipartfile.getOriginalFilename());
		document.setDocformat(multipartfile.getContentType());
		document.setKeywords(fileBucket.getDescription());
		document.setDoctype(fileBucket.getDoctype());
		document.setCustomuser(customuser);
		document.setDoclocation(path);
		document.setTravel(travel);
	    userDao.savedocument(document);
		return 0;
	}
	public int saveDocument(FileBucket fileBucket, Education education,CustomUser customuser) {
		// TODO Auto-generated method stub
		Document document = new Document();
		String path = null;
		MultipartFile multipartfile = fileBucket.getFile();
		try {
			
			path = saveFile(multipartfile,fileBucket.getDoctype(), customuser.getUsername(), fileBucket.getDescription());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		document.setDoctitle(multipartfile.getOriginalFilename());
		document.setDocformat(multipartfile.getContentType());
		document.setKeywords(fileBucket.getDescription());
		document.setDoctype(fileBucket.getDoctype());
		document.setCustomuser(customuser);
		document.setDoclocation(path);
		document.setEducation(education);
	    userDao.savedocument(document);
		return 0;
	}
	@Override
	public void updateapplicationadminverification(Applicant applicant, String adminverification) {
		// TODO Auto-generated method stub
		userDao.updateapplicationadminverification( applicant,  adminverification);
		
	}
	@Override
	public void updateapplicationattorneyverification(Applicant applicant, Attorney attorney) {
		// TODO Auto-generated method stub
		
		userDao.updateapplicationattorneyverification(applicant, attorney);
	}
	@Override
	public void updateapplicationeducationevaluation(Applicant applicant,EducationEvaluation educationevaluation) {
		// TODO Auto-generated method stub
		userDao.updateapplicationeducationevaluation(applicant, educationevaluation);
	}
	@Override
	public List<Document> findalldocuments(int userid) {
		// TODO Auto-generated method stub
		
		return userDao.findalldocuments(userid);
	}
	@Override
	public Attorney findattorneybyattorneyid(int attorneyid) {
		// TODO Auto-generated method stub
		return userDao.findattorneybyattorneyid(attorneyid);
	}
	@Override
	public String saveattorney(Attorney attorney) {
		// TODO Auto-generated method stub
		 CustomUser customuser = new CustomUser();
		 String password = generateRandomPassword();
			customuser.setPassword(passwordEncoder.encode(password));
			customuser.setSubmission("pending");
			customuser.setUserrole(3);
			customuser.setFirstlogin(1);
			customuser.setUsername(attorney.getEmail());
		    customuser.setAttorney(attorney);
		    attorney.setCustomuser(customuser);
            userDao.saveattorney(attorney);	
            return password;
	}
	@Override
	public void updateattorney(Attorney attorney) {
		// TODO Auto-generated method stub
		userDao.updateattorney(attorney);
	}
	@Override
	public List<Attorney> findallattorneys() {
		// TODO Auto-generated method stub
		return userDao.findallattorneys();
	}
	@Override
	public void deleteattorney(int attorneyid) {
		// TODO Auto-generated method stub
		userDao.deleteattorney(attorneyid);
	}
	@Override
	public EducationEvaluation findeducationevaluationbyeducationevaluationid(int educationevaluationid) {
		// TODO Auto-generated method stub
		return userDao.findeducationevaluationbyeducationevaluationid(educationevaluationid);
	}
	@Override
	public String saveeducationevaluation(EducationEvaluation educationevaluation) {
		// TODO Auto-generated method stub
		 CustomUser customuser = new CustomUser();
		 String password = generateRandomPassword();
			customuser.setPassword(passwordEncoder.encode(password));
			customuser.setSubmission("pending");
			customuser.setUserrole(4);
			customuser.setFirstlogin(1);
			customuser.setUsername(educationevaluation.getEmail());
		    customuser.setEducationevaluation(educationevaluation);
		    educationevaluation.setCustomuser(customuser);
            userDao.saveeducationevaluation(educationevaluation);	
            return password;
	}
	@Override
	public void updateeducationevaluation(EducationEvaluation educationevaluation) {
		// TODO Auto-generated method stub
		userDao.updateeducationevaluation(educationevaluation);
	}
	@Override
	public void deleteeducationevaluation(int educationevaluationid) {
		// TODO Auto-generated method stub
		userDao.deleteeducationevaluation(educationevaluationid);
	}
	@Override
	public List<EducationEvaluation> findalleducationevaluation() {
		// TODO Auto-generated method stub
		return userDao.findalleducationevaluation();
	}
	@Override
	public void deletecustomuser(int userid) {
		// TODO Auto-generated method stub
		userDao.deletecustomuser(userid);
	}
	@Override
	public List<Applicant> findallapplicantsbyattorneyid(int attorneyid) {
		// TODO Auto-generated method stub
		return userDao.findallapplicantsbyattorneyid(attorneyid);
	}
	@Override
	public List<Document> finddocuments(int applicantid, String doctype) {
		// TODO Auto-generated method stub
		return userDao.findparticulardocuments(applicantid, doctype);
	}
	@Override
	public List<EducationEvaluation> educationevaluationteam() {
		// TODO Auto-generated method stub
		return userDao.educationevaluationteam();
	}
	@Override
	public List<Applicant> findallapplicantsbyeducationevaluationid(int educationevaluationid) {
		// TODO Auto-generated method stub
		return userDao.findallapplicantsbyeducationevaluationid(educationevaluationid);
	}
	
	
}
