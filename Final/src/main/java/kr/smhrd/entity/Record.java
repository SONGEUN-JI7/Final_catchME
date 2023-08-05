package kr.smhrd.entity;

import java.util.Date;

public class Record {
	
	public int rec_seq;
	public String id;
	public Date start_at;
	public Date end_at;
	
	public Record() {}
	
	public Record(int rec_seq, String id, Date start_at, Date end_at) {
		super();
		this.rec_seq = rec_seq;
		this.id = id;
		this.start_at = start_at;
		this.end_at = end_at;
	}

	public int getRec_seq() {
		return rec_seq;
	}

	public void setRec_seq(int rec_seq) {
		this.rec_seq = rec_seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getStart_at() {
		return start_at;
	}

	public void setStart_at(Date start_at) {
		this.start_at = start_at;
	}

	public Date getEnd_at() {
		return end_at;
	}

	public void setEnd_at(Date end_at) {
		this.end_at = end_at;
	}
	
}
