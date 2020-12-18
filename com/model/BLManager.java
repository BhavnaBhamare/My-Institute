package com.model;

import com.pojo.Admission;
import com.pojo.Enquiry;
import com.pojo.Fees;
import com.pojo.Grade;
import com.pojo.Message;
import com.pojo.Placement;
import com.pojo.Register;







import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;


public class BLManager {
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	

	public void saveRegister(Register r) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(r);
		tr.commit();
		s.close();
		
	}



	public Register searchcuname(String username) {
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Register.class);
		cr.add(Restrictions.eq("username", username));
		Register a = (Register) cr.uniqueResult();

		return a;
	}



	public Register searchuserpass(String username, String password) {
		
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Register.class);
		cr.add(Restrictions.eq("username", username));
		cr.add(Restrictions.eq("password", password));
		
		
		Register a = (Register) cr.uniqueResult();

		return a;
		
	}



	public void saveEnquiry(Enquiry enq) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(enq);
		tr.commit();
		s.close();
		
	}



	public void saveMessage(Message m) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(m);
		tr.commit();
		s.close();
		
	}



	public void savePlacement(Placement p) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(p);
		tr.commit();
		s.close();
		
	}



	



	public void saveAdmission(Admission ad) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(ad);
		tr.commit();
		s.close();
		
	}



	public void saveFees(Fees f) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(f);
		tr.commit();
		s.close();
		
		
	}
	
	
	public List<Fees> getAllFees()
	{
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Fees.class);
		
		List<Fees> l = cr.list();
		return l;
	}
	public List<Enquiry> getAllEnquiry()
	{
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Enquiry.class);
		
		List<Enquiry> l1 = cr.list();
		return l1;
	}

	public List<Admission> getAllAdmission()
	{
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Admission.class);
		
		List<Admission> l = cr.list();
		return l;
	}

	
	
	public List<Grade> getAllGrades()
	{
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Grade.class);
		
		List<Grade> l = cr.list();
		return l;
	}
	public Fees searchById(int id) {
	
		Session s=sf.openSession();
		Criteria cr=s.createCriteria(Fees.class);
		cr.add(Restrictions.eq("id",id));
		Fees st=(Fees)cr.uniqueResult();
		return st;
	}



	public void updateFessRecord(Fees f) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.update(f);
		tr.commit();
		s.close();
		
	}



	public Enquiry searchByEnqId(int id) {
		Session s=sf.openSession();
		Criteria cr=s.createCriteria(Enquiry.class);
		cr.add(Restrictions.eq("enqid",id));
		Enquiry e=(Enquiry)cr.uniqueResult();
		return e;
	}
	public List<Enquiry> searchByEnq(int id) {
		Session s=sf.openSession();
		Criteria cr=s.createCriteria(Enquiry.class);
		cr.add(Restrictions.eq("enqid",id));
		List<Enquiry> e=cr.list();
		return e;
	}

	public Admission searchByAdmId(int id) {
		Session s=sf.openSession();
		Criteria cr=s.createCriteria(Admission.class);
		cr.add(Restrictions.eq("addid",id));
		Admission a=(Admission)cr.uniqueResult();
        return a;
	}

	public List<Admission> searchByAdmId1(int id) {
		Session s=sf.openSession();
		Criteria cr=s.createCriteria(Admission.class);
		cr.add(Restrictions.eq("addid",id));
		List<Admission> a=cr.list();
        return a;
	}

	public void deleteEnquiry(Enquiry eq) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.delete(eq);
		tr.commit();
		s.close();
		
	}



	public void saveAllGrades(Grade g) {
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(g);
		tr.commit();
		s.close();
		
	}



	public Admission searchByName(String fname, String lname) {
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Admission.class);
		cr.add(Restrictions.eq("fname", fname));
		cr.add(Restrictions.eq("lname", lname));
		Admission a = (Admission) cr.uniqueResult();
        return a;
	}


}
