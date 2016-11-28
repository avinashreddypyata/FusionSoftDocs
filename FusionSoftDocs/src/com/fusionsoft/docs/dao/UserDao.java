package com.fusionsoft.docs.dao;

import java.io.IOException;
import java.util.List;

import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.Immigration;
import com.fusionsoft.docs.model.Profile;

public interface UserDao {
	
	public CustomUser findUserByUsername(String username);
    public List<Profile> findalluserprofiles();
	public Profile findprofile(int userid);
	public int updateprofile(Profile profile, int userid);
	public int deleteprofile(int userid);
	public Document finddocument(int docid);
	public List<Document> findparticulardocuments(int userid,String doctype);
	public int savedocument(Document document);
	public CustomUser findCustomUser(int userid);
	public void deletedoc(int docid);
	public int finduseridbydocid(int docid);
	public int saveProfile(CustomUser customuser);
	public int saveexperience(Experience experience);
	public int saveeducation(Education education);
	public Immigration findimmigration(int id);
	public void saveimmigration(Immigration immigration);
	public List<Experience> findexperiences(int id);
	public List<Education> findqualifications(int id);
	public void deleteexperience(int expid);
	public void updateimmigration(Immigration immigration);
	public void deleteeducation(int eduid);
	
}
