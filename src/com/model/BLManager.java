package com.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.pojo.Attendance;
import com.pojo.Employee;
import com.pojo.Register;
import com.pojo.Salary;

public class BLManager 
{
	
	SessionFactory sf = new Configuration().configure().buildSessionFactory();

	public boolean validemailpass(String email, String pass) {
		Register reg = searchByEmailIdp(email, pass);
		if (reg != null && reg.getEmail().equals(email) && reg.getPassword().equals(pass)) {
			return true;
		} else {
			return false;
		}

	}

	public Employee serachbyename(String ename) {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Employee.class);
		cr.add(Restrictions.eq("fname", ename));
		Employee r = (Employee) cr.uniqueResult();
		return r;
	}
	
	public Employee serachbyempid(String email) {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Employee.class);
		cr.add(Restrictions.eq("email", email));
		Employee r = (Employee) cr.uniqueResult();
		return r;
	}

	public List<Attendance> searchbyattendence(int eid) {
		Session s = sf.openSession();
		String hql = "From Attendance a where a.employee=?";

		Query q = s.createQuery(hql);
		q.setInteger(0, eid);
		List<Attendance> al = q.list();
		return al;
	}

	public List<Long> searchbynoOfleavs(int id) {
		Session s1 = sf.openSession();
		String hql = "select count(a.aid)From Attendance a where a.status='Absent' and  a.employee=?";
		Query q = s1.createQuery(hql);
		q.setInteger(0, id);

		List<Long> l = q.list();
		return l;
	}

	private Register searchByEmailIdp(String email, String pass) {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Register.class);
		cr.add(Restrictions.eq("email", email));
		cr.add(Restrictions.eq("password", pass));
		Register r = (Register) cr.uniqueResult();
		return r;
	}
	
	public void saveemployee(Employee emp) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(emp);
		t.commit();
		s.close();
	}

	public List<Employee> serachemployeelist() {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Employee.class);
		List<Employee> e = cr.list();
		return e;
	}

	
	public List<Salary> serachsalarylist() {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Salary.class);
		List<Salary> e = cr.list();
		return e;
	}

	public Employee serachbyempid(int empid) {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Employee.class);
		cr.add(Restrictions.eq("employeeId", empid));
		Employee r = (Employee) cr.uniqueResult();
		return r;
	}

	public void saveattendance(Attendance ad) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(ad);
		t.commit();
		s.close();
	}

	public void savesalary(Salary s) {
		Session s1 = sf.openSession();
		Transaction t = s1.beginTransaction();
		s1.save(s);
		t.commit();
		s1.close();
	}

	public List<Salary> serachbymonthlist(String month) {
		Session s = sf.openSession();

		String hql = " From Salary s where s.month=? ";
		Query q = s.createQuery(hql);
		q.setString(0,month);

		List<Salary> l = q.list();
		return l;
	}

	public Register serachbyemail(String email) {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Register.class);
		cr.add(Restrictions.eq("email", email));
		Register r = (Register) cr.uniqueResult();
		return r;
	}

	public Salary serachbysalary(int eid) {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Salary.class,"sal");
		cr.createAlias("sal.employee","e");
		cr.add(Restrictions.eq("e.eid", eid));
		Salary r = (Salary) cr.uniqueResult();
		return r;
	}

}
