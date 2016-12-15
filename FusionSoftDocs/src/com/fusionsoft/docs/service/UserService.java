package com.fusionsoft.docs.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

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


public interface UserService {


public void  emailapplicant(Email email);

public byte[] readBytesFromFile(String filePath) throws IOException;

public CustomUser findCustomUser(int userid);

public int saveDocument(FileBucket fileBucket, CustomUser customuser);

public HashMap<String, List<Document>> findparticulardocuments(int userid);

public Document finddocument(int docid);

public void deletedoc(int docid);

public int finduseridbydocid(int docid);


public String generateRandomPassword();

public int saveexperience(CustomUser customuser,Experience experience);

public int saveeducation(CustomUser user, Education education);
public List<Experience> findexperiences(int id);

public List<Education> findqualifications(int id);

public void deleteexperience(int expid);

public void deleteeducation(int eduid);

public void updatefirstlogin(int id);

public Applicant findapplicant(int id);

public void saveapplication(CustomUser customuser, Applicant applicant);

public void updateapplication(Applicant applicant);

public Contact findcontact(int userid);

public void savecontact(CustomUser customuser, Contact contact);

public void updatecontact(Contact contact);

public Passport findpassport(int userid);

public void savepassport(CustomUser customuser, Passport passport);

public void updatepassport(Passport passport);

public List<Travel> findtraveldetails(int userid);

public Travel findtravel(int travelid);

public void savetravel(CustomUser customuser, Travel travel);

public void updatetravel(Travel travel);

public List<Certification> findcertificationdetails(int userid);

public void savecertification(CustomUser customuser, Certification certification);

public void updatecertification(Certification certification);

public void updateeducation(Education education);

public void updateexperience(Experience experience);

public String saveapplicant(String email);

public List<Applicant> findallapplicants();

public void deletetravel(int travelid);

public Education findeducation(int eduid);

public Experience findexperience(int expid);

public void deletecertificate(int certificationid);

public Certification findcertificate(int certificationid);

public CustomUser findCustomUserByEmail(String email);

public void createPasswordResetTokenForUser(CustomUser customuser, PasswordResetToken passwordresettoken);

public PasswordResetToken getPasswordResetToken(String token);

public void changeUserPassword(CustomUser customuser, String password);

public void updatePasswordResetTokenForUser(int userid, String token);

public void updatecustomuserapplicationstatus(int userid, String applicationstatus);

public List<CustomUser> findallcustomusers();


}
