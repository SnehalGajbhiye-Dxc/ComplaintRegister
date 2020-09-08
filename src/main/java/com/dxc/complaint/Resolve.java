package com.dxc.complaint;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Resolve")
public class Resolve {
	private int rId;
	@OneToOne
	private int complaintId;
	private String resolvedBy;
	
	private String rComments;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="rId")
	public int getrId() {
		return rId;
	}
	public void setrId(int rId) {
		this.rId = rId;
	}
	
	 @JoinColumn(name = "complaintId")
	
	public int getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	@Column(name="resolvedBy")
	public String getResolvedBy() {
		return resolvedBy;
	}
	public void setResolvedBy(String resolvedBy) {
		this.resolvedBy = resolvedBy;
	}
	
	
	@Column(name="rComments")
	public String getrComments() {
		return rComments;
	}
	public void setrComments(String rComments) {
		this.rComments = rComments;
	}
	

}
