package com.hdu.entities;

import java.util.HashSet;
import java.util.Set;

/**
 * Community entity. @author MyEclipse Persistence Tools
 */

public class Community implements java.io.Serializable {

	// Fields

	private Integer cmNum;
	private String cmName;
	private String cmSchool;
	private String cmContact;
	private String cmPhone;
	private String cmEmail;
	private String cmPro;
	private String cmIcon;
	private String cmInt;
	private String cmAudit;
	private Set activities = new HashSet(0);

	// Constructors

	/** default constructor */
	public Community() {
	}

	/** minimal constructor */
	public Community(String cmName, String cmSchool, String cmContact, String cmPhone, String cmEmail, String cmPro,
			String cmIcon, String cmInt) {
		this.cmName = cmName;
		this.cmSchool = cmSchool;
		this.cmContact = cmContact;
		this.cmPhone = cmPhone;
		this.cmEmail = cmEmail;
		this.cmPro = cmPro;
		this.cmIcon = cmIcon;
		this.cmInt = cmInt;
	}

	/** full constructor */
	public Community(String cmName, String cmSchool, String cmContact, String cmPhone, String cmEmail, String cmPro,
			String cmIcon, String cmInt, String cmAudit, Set activities) {
		this.cmName = cmName;
		this.cmSchool = cmSchool;
		this.cmContact = cmContact;
		this.cmPhone = cmPhone;
		this.cmEmail = cmEmail;
		this.cmPro = cmPro;
		this.cmIcon = cmIcon;
		this.cmInt = cmInt;
		this.cmAudit = cmAudit;
		this.activities = activities;
	}

	// Property accessors

	public Integer getCmNum() {
		return this.cmNum;
	}

	public void setCmNum(Integer cmNum) {
		this.cmNum = cmNum;
	}

	public String getCmName() {
		return this.cmName;
	}

	public void setCmName(String cmName) {
		this.cmName = cmName;
	}

	public String getCmSchool() {
		return this.cmSchool;
	}

	public void setCmSchool(String cmSchool) {
		this.cmSchool = cmSchool;
	}

	public String getCmContact() {
		return this.cmContact;
	}

	public void setCmContact(String cmContact) {
		this.cmContact = cmContact;
	}

	public String getCmPhone() {
		return this.cmPhone;
	}

	public void setCmPhone(String cmPhone) {
		this.cmPhone = cmPhone;
	}

	public String getCmEmail() {
		return this.cmEmail;
	}

	public void setCmEmail(String cmEmail) {
		this.cmEmail = cmEmail;
	}

	public String getCmPro() {
		return this.cmPro;
	}

	public void setCmPro(String cmPro) {
		this.cmPro = cmPro;
	}

	public String getCmIcon() {
		return this.cmIcon;
	}

	public void setCmIcon(String cmIcon) {
		this.cmIcon = cmIcon;
	}

	public String getCmInt() {
		return this.cmInt;
	}

	public void setCmInt(String cmInt) {
		this.cmInt = cmInt;
	}

	public String getCmAudit() {
		return cmAudit;
	}

	public void setCmAudit(String cmAudit) {
		this.cmAudit = cmAudit;
	}

	public Set getActivities() {
		return this.activities;
	}

	public void setActivities(Set activities) {
		this.activities = activities;
	}

}