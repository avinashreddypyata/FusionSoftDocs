package com.fusionsoft.docs.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Email;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.FileBucket;
import com.fusionsoft.docs.model.Immigration;
import com.fusionsoft.docs.model.Profile;


public interface UserService {

public void updateprofile(Profile profile, int id);

public void deleteprofile(int userid);

public Profile findprofile(int userid);

public List<Profile> findalluserprofiles();

public void  emailapplicant(Email email);

public byte[] readBytesFromFile(String filePath) throws IOException;

public CustomUser findCustomUser(int userid);

public int saveDocument(FileBucket fileBucket, CustomUser customuser);

public HashMap<String, List> findparticulardocuments(int userid);

public Document finddocument(int docid);

public void deletedoc(int docid);

public int finduseridbydocid(int docid);

public Map<Integer, String> saveProfile(Profile profile);

public String generateRandomPassword();

public int saveexperience(Profile profile,Experience experience);

public int saveeducation(Profile profile, Education education);

public Immigration findimmigration(int id);

public void saveimmigration(Profile profile, Immigration immigration);

public List<Experience> findexperiences(int id);

public List<Education> findqualifications(int id);

public void deleteexperience(int expid);

public void updateimmigration(Immigration immigration);

public void deleteeducation(int eduid);


}
