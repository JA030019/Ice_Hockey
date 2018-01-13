package com.kz.domain;

import java.sql.Date;

public class UserCharacter {

	private int id;
	private int uid;
	private Date date1;
	private Date date2;
	private double core1;
	private double core2;
	private double core3;
	private String coach;
	private String other;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public Date getDate1() {
		return date1;
	}
	public void setDate1(Date date1) {
		this.date1 = date1;
	}
	public Date getDate2() {
		return date2;
	}
	public void setDate2(Date date2) {
		this.date2 = date2;
	}
	public double getCore1() {
		return core1;
	}
	public void setCore1(double core1) {
		this.core1 = core1;
	}
	public double getCore2() {
		return core2;
	}
	public void setCore2(double core2) {
		this.core2 = core2;
	}
	public double getCore3() {
		return core3;
	}
	public void setCore3(double core3) {
		this.core3 = core3;
	}
	public String getCoach() {
		return coach;
	}
	public void setCoach(String coach) {
		this.coach = coach;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	
	
}
