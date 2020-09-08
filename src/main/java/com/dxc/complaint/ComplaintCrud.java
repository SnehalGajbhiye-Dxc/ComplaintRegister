package com.dxc.complaint;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;





public class ComplaintCrud {
	

	public String addComplaint(Complaint complaint) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		ht.save(complaint);
		return "complaint Added";
	}
	public String addResolve(Resolve resolve) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		ht.save(resolve);
		return "complaint resolved";
	}
	
	
	public List<Complaint> showComplaint() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		List<Complaint> complaint = ht.find("from Complaint");
		return complaint;
	}

	public List<Resolve> showResolve() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		List<Resolve> resolve = ht.find("from Resolve");
		return resolve;
	}

	public String resolveComp(Resolve resolve){
		ApplicationContext ctx=new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		ht.save(resolve);
	ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
	Complaint c=(Complaint)ht.get(Complaint.class,resolve.getComplaintId());
	c.setcStatus("Resolved");
	
		ht.update(c);
		return "RESOLVED COMPLAINT........";
	}
	public int tat(Complaint complaintId){
		ApplicationContext ctx=new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		List lst=ht.find("select DATEDIFF(rDate,cDate) from Complaint where complaintId='"+complaintId+"'");
		int days=0;
		for(Object ob : lst){
			days=(Integer)ob;
		}
		return days;
		
	}

	}

	


