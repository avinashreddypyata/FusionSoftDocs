package com.fusionsoft.docs.dao;

import java.util.ArrayList;
import java.util.List;

import com.fusionsoft.docs.model.Applicant;
import com.fusionsoft.docs.model.Attorney;
import com.fusionsoft.docs.model.Certification;
import com.fusionsoft.docs.model.Contact;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.Passport;
import com.fusionsoft.docs.model.PasswordResetToken;
import com.fusionsoft.docs.model.Travel;

public interface UserDao {
	
	public CustomUser findUserByUsername(String username);
	public Document finddocument(int docid);
	public List<Document> findparticulardocuments(int userid,String doctype);
	public int savedocument(Document document);
	public CustomUser findCustomUser(int userid);
	public void deletedoc(int docid);
	public int saveProfile(CustomUser customuser);
	public void saveexperience(Experience experience);
	public int saveeducation(Education education);
	public List<Experience> findexperiences(int id);
	public List<Education> findqualifications(int id);
	public void deleteexperience(int expid);
	public void deleteeducation(int eduid);
	public void updatefirstlogin(int id);
	public Applicant findapplicant(int id);
	public void saveapplication(Applicant applicant);
	public void updateapplication(Applicant applicant);
	public Contact findcontact(int userid);
	public void savecontact(Contact contact);
	public void updatecontact(Contact contact);
	public Passport findpassport(int userid);
	public void savepassport(Passport passport);
	public void updatepassport(Passport passport);
	public List<Travel> findtraveldetails(int userid);
	public Travel findtravel(int travelid);
	public void savetravel(Travel travel);
	public void updatetravel(Travel travel);
	public List<Certification> findcertificationdetails(int userid);
	public void savecertification(Certification certification);
	public void updatecertification(Certification certification);
	public void updateeducation(Education education);
	public void updateexperience(Experience experience);
	public int savecustomuser(CustomUser customuser);
	public List<Applicant> findallapplicants();
	public void deletetravel(int travelid);
	public Education findeducation(int eduid);
	public Experience findexperience(int expid);
	public void deletecertificate(int certificationid);
	public Certification findcertificate(int certificationid);
	public CustomUser findCustomUserByEmail(String email);
	public void createPasswordResetTokenForUser(PasswordResetToken passwordresettoken);
	public PasswordResetToken findpasswordresettoken(String token);
	public void changeUserPassword(CustomUser customuser, String password);
	public void updatePasswordResetTokenForUser(int userid, PasswordResetToken passwordresettoken);
	public void updatecustomuserapplicationstatus(int userid, String applicationstatus);
	public List<CustomUser> findallcustomusers();
	public void updatecustomusersubmission(int userid);
	public ArrayList<Document> finddocumentbytravelid(int travelid);
	public List<Document> finddocumentbyeduid(int eduid);
	public void updateapplicationadminverification(Applicant applicant, String adminverification);
	public void updateapplicationattorneyverification(Applicant applicant, Attorney attorney);
	public void updateapplicationeducationevaluation(Applicant applicant, String educationevaluationverification);
	public List<Document> findalldocuments(int userid);
	public Attorney findattorneybyattorneyid(int attorneyid);
	public void saveattorney(Attorney attorney);
	public void updateattorney(Attorney attorney);
	public List<Attorney> findallattorneys();
	public void deleteattorney(int attorneyid);
	
/*test*/
}
