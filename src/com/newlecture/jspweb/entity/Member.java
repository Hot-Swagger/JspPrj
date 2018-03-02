package com.newlecture.jspweb.entity;

import java.util.Date;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private String gender;
	private int age;
	private String birthDay;
	private String major;
	private String address;
	private String phone;
	private String ssn;
	private String ip;
	private String boss;
	private Date regDate;
	
	public Member() {
		this("","","","",0,"","","","","","","",null);
	}
	
	public Member(String id, String pwd, String name, String gender, int age, String birthDay, String major,
			String address, String phone, String ssn, String ip, String boss, Date regDate) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.birthDay = birthDay;
		this.major = major;
		this.address = address;
		this.phone = phone;
		this.ssn = ssn;
		this.ip = ip;
		this.boss = boss;
		this.regDate = regDate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getBoss() {
		return boss;
	}
	public void setBoss(String boss) {
		this.boss = boss;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
}
