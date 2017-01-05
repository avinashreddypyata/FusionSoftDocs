package com.fusionsoft.docs.dao;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fusionsoft.docs.model.Applicant;
import com.fusionsoft.docs.model.Attorney;
import com.fusionsoft.docs.model.Certification;
import com.fusionsoft.docs.model.Contact;
import com.fusionsoft.docs.model.CustomRole;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.EducationEvaluation;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.Passport;
import com.fusionsoft.docs.model.PasswordResetToken;
import com.fusionsoft.docs.model.Travel;

@Repository
//@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unused")
	private Session openSession() {
		return sessionFactory.getCurrentSession();
	}

	public CustomUser findUserByUsername(final String username){
      Session session = sessionFactory.openSession();

		List<CustomUser> users = new ArrayList<CustomUser>();
		CustomUser user = null;
        try{
		users = session.createQuery("from CustomUser where username=?",CustomUser.class).setParameter(0, username).getResultList();

		if (users.size() != 1) {
			return null;
		}

		 user = users.get(0);

		List<CustomRole> roles = new ArrayList<CustomRole>();

		if (user.getUserrole() == 1) {

			CustomRole r1 = new CustomRole();
			r1.setName("ROLE_ADMIN");
			roles.add(r1);

			user.setAuthorities(roles);
		} else if (user.getUserrole() == 2) {
			CustomRole r1 = new CustomRole();
			r1.setName("ROLE_USER");
			roles.add(r1);

			user.setAuthorities(roles);
		}else if (user.getUserrole() == 3 || user.getUserrole() == 4) {
			CustomRole r1 = new CustomRole();
			r1.setName("ROLE_ATTORNEY");
			roles.add(r1);

			user.setAuthorities(roles);
		}else if (user.getUserrole() == 5) {
			CustomRole r1 = new CustomRole();
			r1.setName("ROLE_VERIFIEDAPPLICANT");
			roles.add(r1);

			user.setAuthorities(roles);
		}
        }catch(Exception e){
        	e.printStackTrace();
        }
        finally{
			session.close();
		}

		return user;

	}


	@Override
	public Document finddocument(int docid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		Document document = null;
		try{
		session.beginTransaction();
		document = session.get(Document.class, docid);
		session.getTransaction().commit();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
		session.close();
		}
		return document;
	}
	public List<Document> findparticulardocuments(int userid,String doctype){
    	List<Document> particulardocuments = new ArrayList<Document>();
    	Session session = getSessionFactory().openSession();
    	System.out.println("The Userid and Doctype are "+userid+"The Doctype are"+doctype);
    	try{
    		session.beginTransaction();
    	Query<Document> query = session.createQuery("FROM Document Where userid = ? and doctype = ?",Document.class);
        query.setParameter(0, userid);
        query.setParameter(1, doctype);
    	particulardocuments = query.getResultList();
    	}catch (Exception e) {
			// TODO: handle exception
    		e.printStackTrace();
		}
    	finally{
    	session.close();
    	}
    	System.out.println("The list in DAO is "+particulardocuments.size());
    	return particulardocuments;
    	}
    public int savedocument(Document document){
        int userid = 0;
    	Session session = getSessionFactory().openSession();
    	try{
    	session.beginTransaction();
        userid = (int) session.save(document);
    	session.getTransaction().commit();
    	}catch (Exception e) {
    		e.printStackTrace();
    		session.getTransaction().rollback();
			// TODO: handle exception
		}finally {
			session.close();
		}
    	
    	return userid;
    }

	@Override
	public CustomUser findCustomUser(int userid) {
		Session session = getSessionFactory().openSession();
		CustomUser customuser= null;
		try{
		customuser = session.get(CustomUser.class, userid);
		}catch(Exception e){
			e.printStackTrace();
			
		}
		finally{
			session.close();
		}

		return customuser;
	}

	@Override
	public void deletedoc(int docid) {
		Session session = getSessionFactory().openSession();
		try{
		session.beginTransaction();
		Serializable id = new Integer(docid);
		Object persistentInstance = session.load(Document.class, id);
		if (persistentInstance != null) {
		    session.delete(persistentInstance);
		}
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
		}
		finally{
		session.close();
		}
	}


	@Override
	public void saveexperience(Experience experience) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				Session session = getSessionFactory().openSession();
				try{
					session.beginTransaction();
					session.save(experience);
					session.getTransaction().commit();
				}catch(Exception e){
					e.printStackTrace();
					session.getTransaction().rollback();
				}
				
				finally{
					session.close();
				}
	}

	@Override
	public int saveeducation(Education education) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		int userid = 0;
		try{
		session.beginTransaction();
		userid = (int) session.save(education);
		session.getTransaction().commit();
		return userid;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			session.close();
		}

		return userid;
	}

	@Override
	public List<Experience> findexperiences(int id) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		List<Experience> experiences = new ArrayList<Experience>();
		try{
    	Query<Experience> query = session.createQuery("FROM Experience Where userid = ?",Experience.class);
    	query.setParameter(0, id);
    	experiences = query.getResultList();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
	    	session.close();
		}

		return experiences;
	}

	@Override
	public List<Education> findqualifications(int id) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		List<Education> educationqualifications = new ArrayList<Education>();
		try{
    	Query<Education> query = session.createQuery("FROM Education Where userid = ?",Education.class);
    	query.setParameter(0, id);
    	educationqualifications = query.getResultList();
    	return educationqualifications;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
		  	session.close();
		}
  
		return educationqualifications;
	}

	@Override
	public void deleteexperience(int expid) {
		Session session = getSessionFactory().openSession();
		System.out.println("In DaO lAYER I AM pRESENT");
		Serializable id = new Integer(expid);
		try{
		session.beginTransaction();
		Object persistentInstance = session.load(Experience.class, id);
		if (persistentInstance != null) {
		    session.delete(persistentInstance);
		}
		session.getTransaction().commit();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			session.close();
			
		}

		
	}
	@Override
	public void deleteeducation(int eduid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();

		try {
			Serializable id = new Integer(eduid);
			session.beginTransaction();
			Object persistentInstance = session.load(Education.class, id);
			if (persistentInstance != null) {
			    session.delete(persistentInstance);
			}
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			session.getTransaction().rollback();
			e.printStackTrace();
			
		}
		finally{
		session.close();
		}
	}

	@Override
	public void updatefirstlogin(int id) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		Serializable userid = new Integer(id);
		try {
			session.beginTransaction();
			System.out.println("The Serializable id is"+id);
			CustomUser user = session.get(CustomUser.class, userid);
			user.setFirstlogin(0);
			session.save(user);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.getTransaction().rollback();
		}
	    session.close();
		
	}

	@Override
	public Applicant findapplicant(int id) {
		// Getting The Applicant Details From The DataBase
		Applicant applicant = null;
		Session session = getSessionFactory().openSession();
        try {
			Query<Applicant> query = session.createQuery("from Applicant where userid = :userid ",Applicant.class);
			query.setParameter("userid", id);
			if(query.getResultList().size() == 0)
			{
				applicant = null;
			}
			else{
			   applicant = (Applicant) query.getResultList().get(0);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
        finally{
    		session.close();
        }
      return applicant;
	}

	@Override
	/*Saving A new Application as User enters The Application Information For The First Time*/
	public void saveapplication(Applicant applicant) {
		Session session = getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.flush();
			session.save(applicant);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
		session.close();
		}
	}

	@Override
	/*Updating The Application as User Makes Changes to Aplication*/
	public void updateapplication(Applicant applicant) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		Applicant updatedapplicant = session.get(Applicant.class, applicant.getUserid());
		try {
			session.beginTransaction();
			updatedapplicant.setAdminnotes(applicant.getAdminnotes());
			updatedapplicant.setAliennumber(applicant.getAliennumber());
			updatedapplicant.setApplicationtype(applicant.getApplicationtype());
			updatedapplicant.setCitizenship(applicant.getCitizenship());
			updatedapplicant.setCountryofbirth(applicant.getCountryofbirth());
			updatedapplicant.setCurrentemployerpetitionnumber(applicant.getCurrentemployerpetitionnumber());
			updatedapplicant.setCurrentvisaexpirydate(applicant.getCurrentvisaexpirydate());
			updatedapplicant.setDateofbirth(applicant.getDateofbirth());
			updatedapplicant.setEadvalidupto(applicant.getEadvalidupto());
			updatedapplicant.setFirstname(applicant.getFirstname());
			updatedapplicant.setFullname(applicant.getFullname());
			updatedapplicant.setLastentrydatetous(applicant.getLastentrydatetous());
			updatedapplicant.setLastname(applicant.getLastname());
			updatedapplicant.setLatesti94number(applicant.getLatesti94number());
			updatedapplicant.setMaidenname(applicant.getMaidenname());
			updatedapplicant.setMiddlename(applicant.getMiddlename());
			updatedapplicant.setPrefix(applicant.getPrefix());
			updatedapplicant.setProvinceofbirth(applicant.getProvinceofbirth());
			updatedapplicant.setSocialsecuritynumber(applicant.getSocialsecuritynumber());
			updatedapplicant.setStatus(applicant.getStatus());
			updatedapplicant.setUsernotes(applicant.getUsernotes());
			updatedapplicant.setUsvisit(applicant.getUsvisit());
			updatedapplicant.setDocumentdescription(applicant.getDocumentdescription());
			updatedapplicant.setDocumenttitle(applicant.getDocumenttitle());
			session.saveOrUpdate(updatedapplicant);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
		    session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
		session.close();
		}
	}

	@Override
	public Contact findcontact(int userid) {
		// finding contact details
		Session session = getSessionFactory().openSession();
		Contact contact =  null;
		try{
			contact = session.get(Contact.class, userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		return contact;
	}

	@Override
	public void savecontact(Contact contact) {
		// saving contact details
				Session session = getSessionFactory().openSession();
				try{
					session.beginTransaction();
					session.flush();
					session.save(contact);
					session.getTransaction().commit();
				}catch(Exception e){
					session.getTransaction().rollback();
					e.printStackTrace();
				}
				
				finally{
					session.close();
				}
			}

	@Override
	public void updatecontact(Contact contact) {
		// updating contact details
				Session session = getSessionFactory().openSession();
				try{
					session.beginTransaction();
					Contact updatecontact = session.get(Contact.class, contact.getUserid());
					updatecontact.setAddress1(contact.getAddress1());
					updatecontact.setAddress2(contact.getAddress2());
					updatecontact.setAddress3(contact.getAddress3());
					updatecontact.setCity(contact.getCity());
					updatecontact.setCity2(contact.getCity2());
					updatecontact.setCity3(contact.getCity3());
					updatecontact.setCountry(contact.getCountry());
					updatecontact.setCountry2(contact.getCountry2());
					updatecontact.setCountry3(contact.getCountry3());
					updatecontact.setEmail(contact.getEmail());
					updatecontact.setHomephonenumber(contact.getHomephonenumber());
					updatecontact.setPhonenumber(contact.getPhonenumber());
					updatecontact.setState(contact.getState());
					updatecontact.setState2(contact.getState2());
					updatecontact.setState3(contact.getState3());
					updatecontact.setZipcode(contact.getZipcode());
					updatecontact.setZipcode2(contact.getZipcode2());
					updatecontact.setZipcode3(contact.getZipcode3());
					updatecontact.setDocumentdescription(contact.getDocumentdescription());
					updatecontact.setDocumenttitle(contact.getDocumenttitle());
					session.save(updatecontact);
					session.getTransaction().commit();
				}catch(Exception e){
					session.getTransaction().rollback();
					e.printStackTrace();
				}
				
				finally{
					session.close();
				}
			}

	@Override
	public Passport findpassport(int userid) {
		// finding passport in the database
		Session session = getSessionFactory().openSession();
		Passport passport = null;
		try{
			passport = session.get(Passport.class, userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		return passport;
	}

	@Override
	public void savepassport(Passport passport) {
		// saving passport details
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			session.save(passport);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
	}

	@Override
	public void updatepassport(Passport passport) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		try{
			Transaction tx = session.beginTransaction();
			Passport updatedpassport = session.get(Passport.class, passport.getUserid());
			updatedpassport.setLatestpassportnumber(passport.getLatestpassportnumber());
			updatedpassport.setPassportexpirydate(passport.getPassportexpirydate());
			updatedpassport.setPassportissuancedate(passport.getPassportissuancedate());
			updatedpassport.setPassportissuedlocation(passport.getPassportissuedlocation());
			updatedpassport.setDocumentdescription(passport.getDocumentdescription());
			session.save(updatedpassport);
			tx.commit();
	}catch(Exception e){
		session.getTransaction().rollback();
		e.printStackTrace();
	}
		finally{
			session.close();
		}
	}

	@Override
	public List<Travel> findtraveldetails(int userid) {
		// pulling up the list of travel details to be shown in the view
		List<Travel> traveldetails = new ArrayList<Travel>();
		Session session = getSessionFactory().openSession();
		try{
        session.getTransaction().begin();
		TypedQuery<Travel> query = session.createQuery("from Travel where userid = :userid ",Travel.class);
		query.setParameter("userid", userid);
		traveldetails = query.getResultList();
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return traveldetails;
	}

	@Override
	public Travel findtravel(int travelid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		Travel travel = null;
		try{
			travel = session.get(Travel.class, travelid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		return travel;
	}

	@Override
	public void savetravel(Travel travel) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			session.save(travel);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
	}

	@Override
	public void updatetravel(Travel travel) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			Travel updatedtravel = session.get(Travel.class, travel.getTravelid());
			updatedtravel.setEntrydatetous(travel.getEntrydatetous());
			updatedtravel.setExitdatefromus(travel.getExitdatefromus());
			updatedtravel.setPortofentry(travel.getPortofentry());
			updatedtravel.setStatusattimeofentry(travel.getStatusattimeofentry());
			updatedtravel.setStatusvalidfrom(travel.getStatusvalidfrom());
			updatedtravel.setStatusvalidtill(travel.getStatusvalidtill());
			updatedtravel.setTotalmonthsoutsideus(travel.getTotalmonthsoutsideus());
			updatedtravel.setCurrententry(travel.getCurrententry());
			updatedtravel.setDocumentdescription(travel.getDocumentdescription());
			updatedtravel.setDocumenttitle(travel.getDocumenttitle());
			session.getTransaction().commit();
	}catch(Exception e){
		session.getTransaction().rollback();
		e.printStackTrace();
	}
		finally{
			session.close();
		}
	}
	
	@Override
	public List<Certification> findcertificationdetails(int userid) {
		// pulling up the list of travel details to be shown in the view
		List<Certification> certificationdetails = new ArrayList<Certification>();
		Session session = sessionFactory.openSession();
		try{
        session.getTransaction().begin();
		@SuppressWarnings("unchecked")
		TypedQuery<Certification> query = session.createQuery("from Certification where userid = :userid ");
		query.setParameter("userid", userid);
		certificationdetails = query.getResultList();
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return certificationdetails;
	}

	@Override
	public void updateeducation(Education education) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			Education updateeducation = session.get(Education.class, education.getEduid());
			updateeducation.setAddress(education.getAddress());
			updateeducation.setCity(education.getCity());
			updateeducation.setCountry(education.getCountry());
			updateeducation.setCourse(education.getCourse());
			updateeducation.setGpa(education.getGrade());
			updateeducation.setLevelofeducation(education.getLevelofeducation());
			updateeducation.setLocation(education.getLocation());
			updateeducation.setMonthofpassing(education.getMonthofpassing());
			updateeducation.setState(education.getState());
			updateeducation.setUniversity(education.getUniversity());
			updateeducation.setUssevisnumber(education.getUssevisnumber());
			updateeducation.setYearofpassing(education.getYearofpassing());
			updateeducation.setZipcode(education.getZipcode());
			updateeducation.setDocumentdescription(education.getDocumentdescription());
			updateeducation.setDocumenttitle(education.getDocumenttitle());
			session.save(updateeducation);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
	}

	@Override
	public void updateexperience(Experience experience) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			Experience updatedexperience = session.get(Experience.class, experience.getExpid());
			updatedexperience.setCountry(experience.getCountry());
			updatedexperience.setdesignation(experience.getdesignation());
			updatedexperience.setCity(experience.getCity());
			updatedexperience.setEmployer(experience.getEmployer());
			updatedexperience.setEnddate(experience.getEnddate());
			updatedexperience.setJoineddate(experience.getJoineddate());
			updatedexperience.setState(experience.getState());
			updatedexperience.setTotalmonthsworked(experience.getTotalmonthsworked());
			updatedexperience.setDocumenttitle(experience.getDocumenttitle());
			updatedexperience.setDocumentdescription(experience.getDocumentdescription());
			session.save(updatedexperience);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
	}

	@Override
	public void savecertification(Certification certification) {
		// TODO Auto-generated method stubSession session = getSessionFactory().openSession();
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			session.save(certification);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		
		
		
	}

	@Override
	public void updatecertification(Certification certification) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				Session session = getSessionFactory().openSession();
				try{
					session.beginTransaction();
					Certification updatedcertification = session.get(Certification.class,certification.getCertificationId());
					updatedcertification.setAddress(certification.getAddress());
					updatedcertification.setCertificationName(certification.getCertificationName());
					updatedcertification.setCity(certification.getCity());
					updatedcertification.setCountry(certification.getCountry());
					updatedcertification.setMonthOfPassing(certification.getMonthOfPassing());
					updatedcertification.setOrganisation(certification.getOrganisation());
					updatedcertification.setSpecialisation(certification.getSpecialisation());
					updatedcertification.setState(certification.getState());
					updatedcertification.setYearOfPassing(certification.getYearOfPassing());
					updatedcertification.setZipcode(certification.getZipcode());
					updatedcertification.setDocumentdescription(certification.getDocumentdescription());
					updatedcertification.setDocumenttitle(certification.getDocumenttitle());
					session.getTransaction().commit();
			}catch(Exception e){
				session.getTransaction().rollback();
				e.printStackTrace();
			}
				finally{
					session.close();
				}
		
	}

	@Override
	public int savecustomuser(CustomUser customuser) {
		// TODO Auto-generated method stub
		int id = 0;
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			id = (int) session.save(customuser);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		
		
		return id;
	}

	@Override
	public List<Applicant> findallapplicants() {
		// List Of All Applications are taken from the database and result is sent back
		Session session = getSessionFactory().openSession();
		List<Applicant> applicants = new ArrayList<Applicant>();
		try{
			CriteriaBuilder builder = session.getCriteriaBuilder();
			CriteriaQuery<Applicant> criteria = builder.createQuery(Applicant.class);
			Root<Applicant> applicantRoot = criteria.from(Applicant.class);
	        criteria.select(applicantRoot);
			applicants = session.createQuery(criteria).getResultList();
	}catch(Exception e){
		e.printStackTrace();
	}
		finally{
			session.close();
		}
		return applicants;
	}

	@Override
	public void deletetravel(int travelid) {
		// Deleting The travel details
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			Serializable id = new Integer(travelid);
			Object persistentInstance = session.load(Travel.class, id);
			if (persistentInstance != null) {
			    session.delete(persistentInstance);
			    session.getTransaction().commit();
			}
		}catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		
	}

	@Override
	public Education findeducation(int eduid) {
		// TODO Auto-generated method stub
		Education education = null;
		Session session = getSessionFactory().openSession();
		try{
			education = session.get(Education.class, eduid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		return education;
	}

	@Override
	public Experience findexperience(int expid) {
		// TODO Auto-generated method stub
		Experience experience = null;
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			experience = session.get(Experience.class, expid);
			session.getTransaction().commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		return experience;
	}

	@Override
	public void deletecertificate(int certificationid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		try{
			session.beginTransaction();
			Serializable id = new Integer(certificationid);
			Object persistentInstance = session.load(Certification.class, id);
			if (persistentInstance != null) {
			    session.delete(persistentInstance);
			    session.getTransaction().commit();
			}
		}catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
	}

	@Override
	public Certification findcertificate(int certificationid) {
		// TODO Auto-generated method stub
		Certification certification = null;
		Session session = getSessionFactory().openSession();
		try{
			certification = session.get(Certification.class, certificationid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		return certification;
	}

	@Override
	public CustomUser findCustomUserByEmail(String email) {
		Session session = getSessionFactory().openSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
	    CriteriaQuery<CustomUser> criteria = builder.createQuery(CustomUser.class);
	    Root<CustomUser> from = criteria.from(CustomUser.class);
	    criteria.select(from);
	    criteria.where(builder.equal(from.get("username"), email));
	    TypedQuery<CustomUser> typed = session.createQuery(criteria);
	    try {
	        return typed.getSingleResult();
	    } catch (final NoResultException nre) {
	        return null;
	    }
	    finally{
	    	session.close();
	    }
		}
	@Override
	public PasswordResetToken findpasswordresettoken(String token) {
		// TODO Auto-generated method stub
		PasswordResetToken passwordresettoken = null;
		Session session = getSessionFactory().openSession();
		try{
		TypedQuery<PasswordResetToken> query = session.createQuery("from PasswordResetToken where token = :token ",PasswordResetToken.class);
		query.setParameter("token", token);
        if(query.getResultList().size() == 0){
        	passwordresettoken = null;
        }
        else{
        	passwordresettoken =  query.getSingleResult();
        }
        
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return passwordresettoken;
	}

	@Override
	public void changeUserPassword(CustomUser customuser, String password) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try{
        session.getTransaction().begin();
        System.out.println("The userid is"+customuser.getUserid());
        customuser.setPassword(password);
        session.saveOrUpdate(customuser);
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
	}

	@Override
	public void updatePasswordResetTokenForUser(int userid, PasswordResetToken passwordresettoken) {
		// TODO Auto-generated method stub
		PasswordResetToken updatedpasswordresettoken = new PasswordResetToken();
		Session session = sessionFactory.openSession();
		try{
	        session.getTransaction().begin();
	        System.out.println("The userid is"+passwordresettoken.getUserid());
	        System.out.println("The Id In The Dao Layer For password reset is"+userid);
	        updatedpasswordresettoken = session.get(PasswordResetToken.class, userid);
	        updatedpasswordresettoken.setToken(passwordresettoken.getToken());
	        session.save(updatedpasswordresettoken);
			session.getTransaction().commit();
			}catch(Exception e){
				session.getTransaction().rollback();
				e.printStackTrace();
			}
			finally{
				session.close();
			}
	}

	@Override
	public void updatecustomuserapplicationstatus(int userid, String applicationstatus) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try{
	        session.getTransaction().begin();
	        System.out.println("The Id In The Dao Layer For password reset is"+userid);
	        Applicant applicant = session.get(Applicant.class, userid);
	        applicant.setApplicationstatus(applicationstatus);
	        session.save(applicant);
			session.getTransaction().commit();
			}catch(Exception e){
				session.getTransaction().rollback();
				e.printStackTrace();
			}
			finally{
				session.close();
			}
	}

	@Override
	public int saveProfile(CustomUser customuser) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CustomUser> findallcustomusers() {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		List<CustomUser> customusers = new ArrayList<CustomUser>();
		try{
		Query<CustomUser> query = session.createQuery("FROM CustomUser WHERE userrole =:userrole",CustomUser.class);
		query.setParameter("userrole", 2);
		customusers = query.getResultList();
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{
		session.close();
	}
		return customusers;	
	}

	@Override
	public void createPasswordResetTokenForUser(PasswordResetToken passwordresettoken) {
		// TODO Auto-generated method stub

         Session session = null;
         Transaction tx = null;
		 session = getSessionFactory().openSession();
		try{
			
			tx = session.beginTransaction();
			session.save(passwordresettoken);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		
		finally{
			session.close();
		}
		
	}

	@Override
	public void updatecustomusersubmission(int userid) {
		// TODO Auto-generated method stub
		Session session = null;
        Transaction tx = null;
		 session = getSessionFactory().openSession();
		try{
			CustomUser updatedcustomuser = session.get(CustomUser.class, userid);
			updatedcustomuser.setSubmission("done");
			updatedcustomuser.setUserrole(5);
			tx = session.beginTransaction();
			session.save(updatedcustomuser);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		
		finally{
			session.close();
		}
		
	}

	@Override
	public ArrayList<Document> finddocumentbytravelid(int travelid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
	    CriteriaQuery<Document> criteria = builder.createQuery(Document.class);
	    Root<Document> from = criteria.from(Document.class);
	    criteria.select(from);
	    criteria.where(builder.equal(from.get("travelid"), travelid));
	    TypedQuery<Document> typed = session.createQuery(criteria);
	    try {
	        return (ArrayList<Document>) typed.getResultList();
	    } catch (final NoResultException nre) {
	        return null;
	    }
	    finally{
	    	session.close();
	    }
	}

	@Override
	public List<Document> finddocumentbyeduid(int eduid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
	    CriteriaQuery<Document> criteria = builder.createQuery(Document.class);
	    Root<Document> from = criteria.from(Document.class);
	    criteria.select(from);
	    criteria.where(builder.equal(from.get("eduid"), eduid));
	    TypedQuery<Document> typed = session.createQuery(criteria);
	    try {
	        return (ArrayList<Document>) typed.getResultList();
	    } catch (final NoResultException nre) {
	        return null;
	    }
	    finally{
	    	session.close();
	    }
	}

	@Override
	public void updateapplicationadminverification(Applicant applicant, String adminverification) {
		// TODO Auto-generated method stub
		Session session = null;
        Transaction tx = null;
		 session = getSessionFactory().openSession();
		try{
			Applicant updatedapplicant = session.get(Applicant.class, applicant.getUserid());
			updatedapplicant.setAdminverification(adminverification);
			tx = session.beginTransaction();
			session.save(updatedapplicant);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		
		finally{
			session.close();
		}
	}

	@Override
	public void updateapplicationattorneyverification(Applicant applicant, Attorney attorney) {
		// TODO Auto-generated method stub
		Session session = null;
        Transaction tx = null;
		 session = getSessionFactory().openSession();
		try{
			Applicant updatedapplicant = session.get(Applicant.class, applicant.getUserid());
			updatedapplicant.setAttorneyverificationstatus("Assigned To Attorney : "+attorney.getName());
			updatedapplicant.setAttorney(attorney);
			tx = session.beginTransaction();
			session.save(updatedapplicant);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		
		finally{
			session.close();
		}
	}

	@Override
	public void updateapplicationeducationevaluation(Applicant applicant, EducationEvaluation educationevaluation) {
		// TODO Auto-generated method stub
		Session session = null;
        Transaction tx = null;
		 session = getSessionFactory().openSession();
		try{
			Applicant updatedapplicant = session.get(Applicant.class, applicant.getUserid());
			updatedapplicant.setEducationevaluationstatus("Assigned To Education Evaluation: "+educationevaluation.getName());
			updatedapplicant.setEducationevaluation(educationevaluation);
			tx = session.beginTransaction();
			session.save(updatedapplicant);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		
		finally{
			session.close();
		}
		
	}

	@Override
	public List<Document> findalldocuments(int userid) {
		// TODO Auto-generated method stub
		
		List<Document> documents = new ArrayList<Document>();
		Session session = getSessionFactory().openSession();
		try{
        session.getTransaction().begin();
		TypedQuery<Document> query = session.createQuery("from Document where userid = :userid ",Document.class);
		query.setParameter("userid", userid);
		documents = query.getResultList();
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return documents;
	}

	@Override
	public Attorney findattorneybyattorneyid(int attorneyid) {
		// TODO Auto-generated method stub
		Attorney attorney = null;
		Session session = getSessionFactory().openSession();
		try{
			attorney = session.get(Attorney.class, attorneyid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		return attorney;
	}

	@Override
	public void saveattorney(Attorney attorney) {
		// TODO Auto-generated method stub
		   Session session = null;
	         Transaction tx = null;
			 session = getSessionFactory().openSession();
			try{
				
				tx = session.beginTransaction();
				session.save(attorney);
				tx.commit();
			}catch(Exception e){
				e.printStackTrace();
				tx.rollback();
			}
			
			finally{
				session.close();
			}
	}

	@Override
	public void updateattorney(Attorney attorney) {
		// TODO Auto-generated method stub
		Session session = null;
        Transaction tx = null;
		 session = getSessionFactory().openSession();
		try{
			Attorney updatedattorney = session.get(Attorney.class, attorney.getAttorneyid());
			updatedattorney.setCompany(attorney.getCompany());
			updatedattorney.setEmail(updatedattorney.getEmail());
			updatedattorney.setName(attorney.getName());
			updatedattorney.setPhonenumber(attorney.getPhonenumber());
			tx = session.beginTransaction();
			session.save(updatedattorney);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		
		finally{
			session.close();
		}
		
	}

	@Override
	public List<Attorney> findallattorneys() {
		// TODO Auto-generated method stub
		List<Attorney> attorneys = new ArrayList<Attorney>();
		Session session = getSessionFactory().openSession();
		try{
        session.getTransaction().begin();
		TypedQuery<Attorney> query = session.createQuery("from Attorney",Attorney.class);
		attorneys = query.getResultList();
		session.getTransaction().commit();
		if(attorneys.isEmpty()){
			return null;
		}
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return attorneys;
	}

	@Override
	public void deleteattorney(int attorneyid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		try{
		session.beginTransaction();
		Serializable id = new Integer(attorneyid);
		Object persistentInstance = session.load(Attorney.class, id);
		if (persistentInstance != null) {
		    session.delete(persistentInstance);
		}
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
		}
		finally{
		session.close();
		}
	}

	@Override
	public EducationEvaluation findeducationevaluationbyeducationevaluationid(int educationevaluationid) {
		// TODO Auto-generated method stub
		EducationEvaluation educationevaluation = null;
		Session session = getSessionFactory().openSession();
		try{
			educationevaluation = session.get(EducationEvaluation.class, educationevaluationid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			session.close();
		}
		return educationevaluation;
	}

	@Override
	public void saveeducationevaluation(EducationEvaluation educationevaluation) {
		// TODO Auto-generated method stub
		  Session session = null;
	         Transaction tx = null;
			 session = getSessionFactory().openSession();
			try{
				
				tx = session.beginTransaction();
				session.save(educationevaluation);
				tx.commit();
			}catch(Exception e){
				e.printStackTrace();
				tx.rollback();
			}
			
			finally{
				session.close();
			}
	}

	@Override
	public void updateeducationevaluation(EducationEvaluation educationevaluation) {
		// TODO Auto-generated method stub
		Session session = null;
        Transaction tx = null;
		 session = getSessionFactory().openSession();
		try{
			EducationEvaluation updatededucationevaluation = session.get(EducationEvaluation.class, educationevaluation.getEducationevaluationid());
			updatededucationevaluation.setCompany(educationevaluation.getCompany());
			updatededucationevaluation.setEmail(educationevaluation.getEmail());
			updatededucationevaluation.setName(educationevaluation.getName());
			updatededucationevaluation.setPhonenumber(educationevaluation.getPhonenumber());
			tx = session.beginTransaction();
			session.save(updatededucationevaluation);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		
		finally{
			session.close();
		}
	}

	@Override
	public void deleteeducationevaluation(int educationevaluationid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		try{
		session.beginTransaction();
		Serializable id = new Integer(educationevaluationid);
		Object persistentInstance = session.load(EducationEvaluation.class, id);
		if (persistentInstance != null) {
		    session.delete(persistentInstance);
		}
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
		}
		finally{
		session.close();
		}
	}

	@Override
	public List<EducationEvaluation> findalleducationevaluation() {
		// TODO Auto-generated method stub
		List<EducationEvaluation> educationevaluationteam = new ArrayList<EducationEvaluation>();
		Session session = getSessionFactory().openSession();
		try{
        session.getTransaction().begin();
		TypedQuery<EducationEvaluation> query = session.createQuery("from EducationEvaluation",EducationEvaluation.class);
		educationevaluationteam = query.getResultList();
		session.getTransaction().commit();
		if(educationevaluationteam.isEmpty()){
			return null;
		}
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return educationevaluationteam;
	}

	@Override
	public void deletecustomuser(int userid) {
		// TODO Auto-generated method stub
			Session session = getSessionFactory().openSession();
			try{
			session.beginTransaction();
			Serializable id = new Integer(userid);
			Object persistentInstance = session.load(CustomUser.class, id);
			if (persistentInstance != null) {
			    session.delete(persistentInstance);
			}
			session.getTransaction().commit();
			}catch(Exception e){
				session.getTransaction().rollback();
			}
			finally{
			session.close();
			}
	}

	@Override
	public List<Applicant> findallapplicantsbyattorneyid(int attorneyid) {
		// TODO Auto-generated method stub
		List<Applicant> submittedapplicants = new ArrayList<Applicant>();
		Session session = getSessionFactory().openSession();
		try{
        session.getTransaction().begin();
		TypedQuery<Applicant> query = session.createQuery("from Applicant where attorney_pk = :attorney_pk ",Applicant.class);
		query.setParameter("attorney_pk", attorneyid);
		submittedapplicants = query.getResultList();
		if(submittedapplicants.isEmpty()){
			return null;
		}
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return submittedapplicants;
	}

	@Override
	public List<EducationEvaluation> educationevaluationteam() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Applicant> findallapplicantsbyeducationevaluationid(int educationevaluationid) {
		// TODO Auto-generated method stub
		List<Applicant> submittedapplicants = new ArrayList<Applicant>();
		Session session = getSessionFactory().openSession();
		try{
        session.getTransaction().begin();
		TypedQuery<Applicant> query = session.createQuery("from Applicant where educationevaluation_pk = :educationevaluation_pk ",Applicant.class);
		query.setParameter("educationevaluation_pk", educationevaluationid);
		submittedapplicants = query.getResultList();
		if(submittedapplicants.isEmpty()){
			return null;
		}
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return submittedapplicants;
	}
}
		
