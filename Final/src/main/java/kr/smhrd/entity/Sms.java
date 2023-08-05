package kr.smhrd.entity;

import java.util.Date;

public class Sms {
	
	private int sms_seq;
	private String id;
	private String sms_content;
	private Date event_at;
	private Date sms_at;
	private int rec_seq;
	
	public Sms() {}
	public Sms(int sms_seq, String id, String sms_content, Date event_at, Date sms_at, int rec_seq) {
		super();
		this.sms_seq = sms_seq;
		this.id = id;
		this.sms_content = sms_content;
		this.event_at = event_at;
		this.sms_at = sms_at;
		this.rec_seq = rec_seq;
	}
	public int getSms_seq() {
		return sms_seq;
	}
	public void setSms_seq(int sms_seq) {
		this.sms_seq = sms_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSms_content() {
		return sms_content;
	}
	public void setSms_content(String sms_content) {
		this.sms_content = sms_content;
	}
	public Date getEvent_at() {
		return event_at;
	}
	public void setEvent_at(Date event_at) {
		this.event_at = event_at;
	}
	public Date getSms_at() {
		return sms_at;
	}
	public void setSms_at(Date sms_at) {
		this.sms_at = sms_at;
	}
	public int getRec_seq() {
		return rec_seq;
	}
	public void setRec_seq(int rec_seq) {
		this.rec_seq = rec_seq;
	}
	

}
