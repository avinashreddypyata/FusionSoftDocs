package com.fusionsoft.docs.dao;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.query.Query;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fusionsoft.docs.model.CustomRole;
import com.fusionsoft.docs.model.CustomUser;
import com.fusionsoft.docs.model.Document;
import com.fusionsoft.docs.model.Education;
import com.fusionsoft.docs.model.Experience;
import com.fusionsoft.docs.model.Immigration;
import com.fusionsoft.docs.model.Profile;
import com.fusionsoft.docs.service.UserService;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private UserService userservice;

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

	public CustomUser findUserByUsername(final String username) {

		System.out.println(" In DAO ");

		List<CustomUser> users = new ArrayList<CustomUser>();

		users = getSessionFactory().openSession().createQuery("from CustomUser where username=?")
				.setParameter(0, username).list();

		if (users.size() != 1) {
			return null;
		}

		CustomUser user = users.get(0);

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
		}

		return user;

	}
	public List<Profile> findalluserprofiles() {
		List<Profile> profiles = new ArrayList<Profile>();
		Criteria cr = getSessionFactory().openSession().createCriteria(Profile.class)
				.setProjection(Projections.projectionList().add(Projections.property("firstname"), "firstname")
						.add(Projections.property("lastname"), "lastname").add(Projections.property("email"), "email")
						.add(Projections.property("phone"), "phone").add(Projections.property("userid"), "userid"))
				.setResultTransformer(Transformers.aliasToBean(Profile.class));
		profiles = cr.list();
		return profiles;
	}
	@Override
	public Profile findprofile(int userid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession().getSession();
		session.beginTransaction();
		Profile profile = session.get(Profile.class, userid);
		System.out.println("The required Name is" + profile.getLastname());
		session.getTransaction().commit();

		return profile;
	}

	@Override
	public int updateprofile(Profile updateuser, int userid) {
         int id;
         System.out.println("The user name is "+updateuser.getFirstname());
		Session session = getSessionFactory().openSession().getSession();
		session.beginTransaction();
		Query query = session.createQuery(
				"update Profile set firstname = :firstname , lastname = :lastname, email = :email, phone = :phone, zip = :zip, country = :country, "
						+ "adminnotes = :adminnotes, address = :address" + " where id = :userid");
		query.setParameter("firstname", updateuser.getFirstname());
		query.setParameter("lastname", updateuser.getLastname());
		query.setParameter("email", updateuser.getEmail());
		query.setParameter("phone", updateuser.getPhone());
		query.setParameter("zip", updateuser.getZip());
		query.setParameter("country", updateuser.getCountry());
		query.setParameter("adminnotes", updateuser.getAdminnotes());
		query.setParameter("address", updateuser.getAddress());
		query.setParameter("userid", userid);
		id = query.executeUpdate();
		session.getTransaction().commit();
		

		return id;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public int deleteprofile(int userid) {
		// TODO Auto-generated method stub
		@SuppressWarnings("deprecation")
		Session session = getSessionFactory().openSession().getSession();
		session.beginTransaction();
		Serializable id = new Integer(userid);
		Object persistentInstance = session.load(CustomUser.class, id);
		if (persistentInstance != null) {
		    session.delete(persistentInstance);
		}
		
		session.getTransaction().commit();
		return 0;
	}

	@Override
	public Document finddocument(int docid) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession().getSession();
		session.beginTransaction();
		Document document = session.get(Document.class, docid);
		session.getTransaction().commit();
		return document;
	}
    @SuppressWarnings("deprecation")
	public List<Document> findparticulardocuments(int userid,String doctitle){
    	List<Document> particulardocuments = new ArrayList<Document>();
    	Session session = sessionFactory.openSession();
    	Query query = session.createQuery("FROM Document Where userid = ? and doctype = ?");
        query.setParameter(0, userid);
        query.setParameter(1, doctitle);
    	particulardocuments = query.list();
    	session.close();
    	System.out.println("The list in DAO is "+particulardocuments.size());
    	return particulardocuments;
    	}
    public int savedocument(Document document){
        int userid;
    	Session session = sessionFactory.openSession().getSession();
    	session.beginTransaction();
        userid = (int) session.save(document);
    	session.getTransaction().commit();
    	session.close();
    	return userid;
    }

	@Override
	public CustomUser findCustomUser(int userid) {
		Session session = sessionFactory.openSession().getSession();
		CustomUser customuser = session.get(CustomUser.class, userid);
		
		return customuser;
	}

	@Override
	public void deletedoc(int docid) {
		Session session = sessionFactory.openSession().getSession();
		session.beginTransaction();
		Serializable id = new Integer(docid);
		Object persistentInstance = session.load(Document.class, id);
		if (persistentInstance != null) {
		    session.delete(persistentInstance);
		}
		session.getTransaction().commit();
	}

	@Override
	public int finduseridbydocid(int docid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession().getSession();
		session.beginTransaction();
		Query query = session.createSQLQuery("SELECT userid FROM documents WHERE docid =?");
		query.setParameter(0, docid);
		int userid = (int) query.list().get(0);
		session.getTransaction().commit();
		session.close();
		
		System.out.println("The userid in the dao layer is "+userid);
		return userid;
	}

	@Override
	public int saveProfile(CustomUser customuser) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession().getSession();
		session.beginTransaction();
		int userid = (int) session.save(customuser);
		session.getTransaction().commit();
		return userid;
	}

	@Override
	public int saveexperience(Experience experience) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession().getSession();
		session.beginTransaction();
		int userid = (int) session.save(experience);
		session.getTransaction().commit();
		session.close();
		return userid;
	}

	@Override
	public int saveeducation(Education education) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession().getSession();
		int userid = (int) session.save(education);
		session.close();
		return userid;
	}

	@Override
	public Immigration findimmigration(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession().getSession();
		Immigration immigration = session.get(Immigration.class, id);
		return immigration;
	}

	@Override
	public void saveimmigration(Immigration immigration) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession().getSession();
		session.beginTransaction();
		System.out.println("The saving happeing in DAO lAYER");
		session.save(immigration);
		session.getTransaction().commit();
		session.close();
		
	}

	@Override
	public List<Experience> findexperiences(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
    	Query query = session.createQuery("FROM Experience Where userid = ?");
    	query.setParameter(0, id);
    	List<Experience> experiences = query.list();
		return experiences;
	}

	@Override
	public List<Education> findqualifications(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
    	Query query = session.createQuery("FROM Education Where userid = ?");
    	query.setParameter(0, id);
    	List<Education> educationqualifications = query.list();
    	System.out.println("In Dao The List Size is"+educationqualifications.size());
		return educationqualifications;
	}

	@Override
	public void deleteexperience(int expid) {
		Session session = sessionFactory.openSession().getSession();
		System.out.println("In DaO lAYER I AM pRESENT");
		Serializable id = new Integer(expid);
		session.beginTransaction();
		Object persistentInstance = session.load(Experience.class, id);
		if (persistentInstance != null) {
		    session.delete(persistentInstance);
		}
		session.getTransaction().commit();
		
		
	}

	@Override
	public void updateimmigration(Immigration immigration) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession().getSession();
		Immigration immigrationload = session.get(Immigration.class, immigration.getUserid());
		immigrationload.setCurrentstatus(immigration.getCurrentstatus());
		immigrationload.setExpirydate(immigration.getExpirydate());
		immigrationload.setI94number(immigration.getI94number());
		immigrationload.setPassportnumber(immigration.getPassportnumber());
		immigrationload.setPlaceofissuance(immigration.getPlaceofissuance());
		immigrationload.setLastentrydate(immigration.getLastentrydate());
		immigrationload.setIssueddate(immigration.getIssueddate());
		immigrationload.setStatusexpiry(immigration.getStatusexpiry());
		session.beginTransaction();
		session.saveOrUpdate(immigrationload);
		session.getTransaction().commit();;
		session.close();
		
		
	}

	@Override
	public void deleteeducation(int eduid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession().getSession();

		Serializable id = new Integer(eduid);
		session.beginTransaction();
		Object persistentInstance = session.load(Education.class, id);
		if (persistentInstance != null) {
		    session.delete(persistentInstance);
		}
		session.getTransaction().commit();
	}

	@Override
	public void updatefirstlogin(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession().getSession();
		Serializable userid = new Integer(id);
		session.beginTransaction();
	    CustomUser user = session.get(CustomUser.class, userid);
	    user.setFirstlogin(0);
	    session.save(user);
	    session.getTransaction().commit();
		
	}
}
