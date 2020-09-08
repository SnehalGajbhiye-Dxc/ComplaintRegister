package com.dxc.complaint;


import java.sql.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Complaint")
public class Complaint {
	private int complaintId;
	private String complaintType;
	private String  description ;
	private Date cDate;

	private int tat;
	private int severity;
	private String cStatus;

	
	@Id
	@GeneratedValue
	@Column(name="complaintId")
	public int getComplaintId() {
	return complaintId;
	}
	public void setComplaintId(int complaintId) {
	this.complaintId = complaintId;
	}
	@Column(name="complaintType")
	public String getComplaintType() {
	return complaintType;
	}
	public void setComplaintType(String complaintType) {
	this.complaintType = complaintType;
	}
	@Column(name="description")
	public String getDescription() {
	return description;
	}
	public void setDescription(String description) {
	this.description = description;
	}
	@Column(name="cDate")
	public Date getcDate() {
	return cDate;
	}
	public void setcDate(Date cDate) {
	this.cDate = cDate;
	}
	
	@Column(name="tat")
	public int getTat() {
	return tat;
	}
	public void setTat(int tat) {
	this.tat = tat;
	}
	@Column(name="severity")
	public int getSeverity() {
	return severity;
	}
	public void setSeverity(int severity) {
	this.severity = severity;
	}
	@Column(name="cStatus")
	public String getcStatus() {
	return cStatus;
	}
	public void setcStatus(String cStatus) {
	this.cStatus = cStatus;
	}


}