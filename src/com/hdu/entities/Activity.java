package com.hdu.entities;

import java.util.Date;

/**
 * Activity entity. @author MyEclipse Persistence Tools
 */

public class Activity implements java.io.Serializable {

	// Fields

	private Integer acNum;
	private Community community;
	private Company company;
	private String acName;
	private String acInt;
	private Integer acMon;
	private Date acDay;
	private Integer acBudget;
	private String acProp;
	private String acAudit;
	private String acProve;

	// Constructors

	/** default constructor */
	public Activity() {}
 

	// Property accessors

	public Integer getAcNum() {
		return this.acNum;
	}

	public String getAcAudit() {
		return acAudit;
	}


	public void setAcAudit(String acAudit) {
		this.acAudit = acAudit;
	}


	public String getAcProve() {
		return acProve;
	}


	public void setAcProve(String acProve) {
		this.acProve = acProve;
	}


	public void setAcNum(Integer acNum) {
		this.acNum = acNum;
	}

	public Community getCommunity() {
		return this.community;
	}

	public void setCommunity(Community community) {
		this.community = community;
	}

	public Company getCompany() {
		return this.company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public String getAcName() {
		return this.acName;
	}

	public void setAcName(String acName) {
		this.acName = acName;
	}

	public String getAcInt() {
		return this.acInt;
	}

	public void setAcInt(String acInt) {
		this.acInt = acInt;
	}

	public Integer getAcMon() {
		return this.acMon;
	}

	public void setAcMon(Integer acMon) {
		this.acMon = acMon;
	}

	public Date getAcDay() {
		return this.acDay;
	}

	public void setAcDay(Date acDay) {
		this.acDay = acDay;
	}

	public Integer getAcBudget() {
		return this.acBudget;
	}

	public void setAcBudget(Integer acBudget) {
		this.acBudget = acBudget;
	}

	public String getAcProp() {
		return this.acProp;
	}

	public void setAcProp(String acProp) {
		this.acProp = acProp;
	}

}