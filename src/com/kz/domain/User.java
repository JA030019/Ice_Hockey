package com.kz.domain;

import java.sql.Timestamp;

public class User {
	
	private int id;
	private String username;
	private String password;
	private String province;	
	private String email;
	private String phone;
	private String realname;
	private String sex;
	private Timestamp brith;
	private int playexperience;
	private String hold;
	private String injury;
	private String other;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Timestamp getBrith() {
		return brith;
	}
	public void setBrith(Timestamp brith) {
		this.brith = brith;
	}
	
	
	public int getPlayexperience() {
		return playexperience;
	}
	public void setPlayexperience(int playexperience) {
		this.playexperience = playexperience;
	}
	public String getHold() {
		return hold;
	}
	public void setHold(String hold) {
		this.hold = hold;
	}
	public String getInjury() {
		return injury;
	}
	public void setInjury(String injury) {
		this.injury = injury;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	
	
	
}
