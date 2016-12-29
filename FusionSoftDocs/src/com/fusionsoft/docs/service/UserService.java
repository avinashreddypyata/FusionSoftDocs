package com.fusionsoft.docs.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.fusionsoft.docs.model.Applicant;
import com.fusionsoft.docs.model.Attorney;
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


public interface UserService {


public void  emailapplicant(Email email);

public CustomUser findCustomUser(int userid);

public int saveDocument(FileBucket fileBucket, CustomUser customuser);

public HashMap<String, List<Document>> findparticulardocuments(int userid);

public Document finddocument(int docid) throws documentnotfoundservice;

public void deletedoc(int docid);

public String generateRandomPassword();

public void saveexperience(CustomUser customuser,Experience experience);

public int saveeducation(CustomUser user, Education education);
public List<Experience> findexperiences(int id) throws experiencesnotfoundbyid;

public List<Education> findqualifications(int id);

public void deleteexperience(int expid);

public void deleteeducation(int eduid);

public void updatefirstlogin(int id);

public Applicant findapplicant(int id) throws applicantnotfoundservice;

public void saveapplication(CustomUser customuser, Applicant applicant);

public void updateapplication(CustomUser customuser,Applicant applicant);

public Contact findcontact(int userid) throws contactnotfoundservice;

public void savecontact(CustomUser customuser, Contact contact);

public void updatecontact(CustomUser customuser, Contact contact);

public Passport findpassport(int userid) throws PassportNotFoundInService;

public void savepassport(CustomUser customuser, Passport passport);

public void updatepassport(CustomUser customuser,Passport passport);

public List<Travel> findtraveldetails(int userid) throws FindTravelDetailsNotFoundService;

public Travel findtravel(int travelid) throws FindTravelByIdNotFoundService;

public void savetravel(CustomUser customuser, Travel travel);

public void updatetravel(CustomUser customuser,Travel travel);

public List<Certification> findcertificationdetails(int userid) throws CertificateDetailsNotFound;

public void savecertification(CustomUser customuser, Certification certification);

public void updatecertification(CustomUser customuser, Certification certification);

public void updateeducation(CustomUser customuser,Education education);

public void updateexperience(CustomUser customuser, Experience experience);

public String saveapplicant(CustomUser customuser);

public List<Applicant> findallapplicants() throws ApplicantsNotFoundExceptionService;

public void deletetravel(int travelid);

public Education findeducation(int eduid) throws EducationNotFoundExceptionService;

public Experience findexperience(int expid) throws ExperienceNotFoundService;

public void deletecertificate(int certificationid);

public Certification findcertificate(int certificationid) throws CertificateNotFoundService;

public CustomUser findCustomUserByEmail(String email);

public void createPasswordResetTokenForUser(CustomUser customuser, PasswordResetToken passwordresettoken) throws PasswordResetTokenNotFound;

public PasswordResetToken getPasswordResetToken(String token);

public void changeUserPassword(CustomUser customuser, String password) throws PasswordNotFoundException;

public void updatePasswordResetTokenForUser(int userid, String token) throws TokenNotFoundException;

public void updatecustomuserapplicationstatus(int userid, String applicationstatus);

public List<CustomUser> findallcustomusers();

public void updatecustomusersubmission(int userid);

public ArrayList<Document> finddocumentbytravelid(int travelid);

public List<Document> finddocumentbyeduid(int eduid);
public int saveDocument(FileBucket fileBucket, Travel travel, CustomUser customuser);

public void updateapplicationadminverification(Applicant applicant, String adminverification);

public void updateapplicationattorneyverification(Applicant applicant, Attorney attorney);

public void updateapplicationeducationevaluation(Applicant applicant, String educationevaluationverification);

public List<Document> findalldocuments(int userid);

public Attorney findattorneybyattorneyid(int attorneyid);

public void saveattorney(Attorney attorney);

public void updateattorney(Attorney attorney);

public List<Attorney> findallattorneys();

public void deleteattorney(int attorneyid);


}
