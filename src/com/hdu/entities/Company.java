package com.hdu.entities;

import java.util.HashSet;
import java.util.Set;

/**
 * Company entity. @author MyEclipse Persistence Tools
 */

public class Company implements java.io.Serializable {

	// Fields

	private Integer cpNum;
	private String cpName;
	private String cpContact;
	private String cpPhone;
	private String cpEmail;
	private String cpAddress;
	private String cpIcon;
	private String cpPro;
	private String cpInt;
	private Integer cpBudget;
	private String cpAudit;
	private Set activities = new HashSet(0);

	// Constructors

	/** default constructor */
	public Company() {
	}

	/** minimal constructor */
	public Company(String cpName, String cpContact, String cpPhone, String cpEmail, String cpAddress, String cpIcon,
			String cpPro, String cpInt, Integer cpBudget) {
		this.cpName = cpName;
		this.cpContact = cpContact;
		this.cpPhone = cpPhone;
		this.cpEmail = cpEmail;
		this.cpAddress = cpAddress;
		this.cpIcon = cpIcon;
		this.cpPro = cpPro;
		this.cpInt = cpInt;
		this.cpBudget = cpBudget;
	}

	/** full constructor */
	public Company(String cpName, String cpContact, String cpPhone, String cpEmail, String cpAddress, String cpIcon,
			String cpPro, String cpInt, Integer cpBudget, String cpAudit, Set activities) {
		this.cpName = cpName;
		this.cpContact = cpContact;
		this.cpPhone = cpPhone;
		this.cpEmail = cpEmail;
		this.cpAddress = cpAddress;
		this.cpIcon = cpIcon;
		this.cpPro = cpPro;
		this.cpInt = cpInt;
		this.cpBudget = cpBudget;
		this.cpAudit = cpAudit;
		this.activities = activities;
	}

	// Property accessors

	public Integer getCpNum() {
		return this.cpNum;
	}

	public void setCpNum(Integer cpNum) {
		this.cpNum = cpNum;
	}

	public String getCpName() {
		return this.cpName;
	}

	public void setCpName(String cpName) {
		this.cpName = cpName;
	}

	public String getCpContact() {
		return this.cpContact;
	}

	public void setCpContact(String cpContact) {
		this.cpContact = cpContact;
	}

	public String getCpPhone() {
		return this.cpPhone;
	}

	public void setCpPhone(String cpPhone) {
		this.cpPhone = cpPhone;
	}

	public String getCpEmail() {
		return this.cpEmail;
	}

	public void setCpEmail(String cpEmail) {
		this.cpEmail = cpEmail;
	}

	public String getCpAddress() {
		return this.cpAddress;
	}

	public void setCpAddress(String cpAddress) {
		this.cpAddress = cpAddress;
	}

	public String getCpIcon() {
		return this.cpIcon;
	}

	public void setCpIcon(String cpIcon) {
		this.cpIcon = cpIcon;
	}

	public String getCpPro() {
		return this.cpPro;
	}

	public void setCpPro(String cpPro) {
		this.cpPro = cpPro;
	}

	public String getCpInt() {
		return this.cpInt;
	}

	public void setCpInt(String cpInt) {
		this.cpInt = cpInt;
	}

	public Integer getCpBudget() {
		return this.cpBudget;
	}

	public void setCpBudget(Integer cpBudget) {
		this.cpBudget = cpBudget;
	}
	

	public String getCpAudit() {
		return cpAudit;
	}

	public void setCpAudit(String cpAudit) {
		this.cpAudit = cpAudit;
	}

	public Set getActivities() {
		return this.activities;
	}

	public void setActivities(Set activities) {
		this.activities = activities;
	}

}