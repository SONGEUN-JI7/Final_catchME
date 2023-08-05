package kr.smhrd.entity;

import java.util.Date;

public class User {
	
	private String id;
	private String pw;
	private String email;
	private String phone;
	private String sms_receiver;
	private String alarm;
	private Date join_dt;
	private String user_type;
	private String name;
	
	public User() {}

	public User(String id, String pw, String email, String phone, String sms_receiver, String alarm, Date join_dt,
			String user_type, String name) {
		super();
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.phone = phone;
		this.sms_receiver = sms_receiver;
		this.alarm = alarm;
		this.join_dt = join_dt;
		this.user_type = user_type;
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
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

	public String getSms_receiver() {
		return sms_receiver;
	}

	public void setSms_receiver(String sms_receiver) {
		this.sms_receiver = sms_receiver;
	}

	public String getAlarm() {
		return alarm;
	}

	public void setAlarm(String alarm) {
		this.alarm = alarm;
	}

	public Date getJoin_dt() {
		return join_dt;
	}

	public void setJoin_dt(Date join_dt) {
		this.join_dt = join_dt;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

}
