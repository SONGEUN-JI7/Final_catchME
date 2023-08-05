package kr.smhrd.entity;

import java.util.Date;

public class Event {
	
	public int event_seq;
	public int rec_seq;
	public String event_content;
	public Date event_at;
	public String event_img;
	
	private String base64Image;
	private String formattedDateTime;
	
	// DB쪽을 위해서 만듬
	private int sun;
	private int mon;
	private int tue;
	private int wed;
	private int thu;
	private int fri;
	private int sat;
	private Date sun_dates;
	private Date mon_dates;
	private Date tue_dates;
	private Date wed_dates;
	private Date thu_dates;
	private Date fri_dates;
	private Date sat_dates;
	private int sun_sleep;
	private int sun_nolook;
	private int mon_sleep;
	private int mon_nolook;
	private int tue_sleep;
	private int tue_nolook;
	private int wed_sleep;
	private int wed_nolook;
	private int thu_sleep;
	private int thu_nolook;
	private int fri_sleep;
	private int fri_nolook;
	private int sat_sleep;
	private int sat_nolook;

	
	
	public Event() {}



	public Event(int event_seq, int rec_seq, String event_content, Date event_at, String event_img, String base64Image,
			String formattedDateTime, int sun, int mon, int tue, int wed, int thu, int fri, int sat, Date sun_dates,
			Date mon_dates, Date tue_dates, Date wed_dates, Date thu_dates, Date fri_dates, Date sat_dates,
			int sun_sleep, int sun_nolook, int mon_sleep, int mon_nolook, int tue_sleep, int tue_nolook, int wed_sleep,
			int wed_nolook, int thu_sleep, int thu_nolook, int fri_sleep, int fri_nolook, int sat_sleep,
			int sat_nolook) {
		super();
		this.event_seq = event_seq;
		this.rec_seq = rec_seq;
		this.event_content = event_content;
		this.event_at = event_at;
		this.event_img = event_img;
		this.base64Image = base64Image;
		this.formattedDateTime = formattedDateTime;
		this.sun = sun;
		this.mon = mon;
		this.tue = tue;
		this.wed = wed;
		this.thu = thu;
		this.fri = fri;
		this.sat = sat;
		this.sun_dates = sun_dates;
		this.mon_dates = mon_dates;
		this.tue_dates = tue_dates;
		this.wed_dates = wed_dates;
		this.thu_dates = thu_dates;
		this.fri_dates = fri_dates;
		this.sat_dates = sat_dates;
		this.sun_sleep = sun_sleep;
		this.sun_nolook = sun_nolook;
		this.mon_sleep = mon_sleep;
		this.mon_nolook = mon_nolook;
		this.tue_sleep = tue_sleep;
		this.tue_nolook = tue_nolook;
		this.wed_sleep = wed_sleep;
		this.wed_nolook = wed_nolook;
		this.thu_sleep = thu_sleep;
		this.thu_nolook = thu_nolook;
		this.fri_sleep = fri_sleep;
		this.fri_nolook = fri_nolook;
		this.sat_sleep = sat_sleep;
		this.sat_nolook = sat_nolook;
	}



	public int getEvent_seq() {
		return event_seq;
	}



	public void setEvent_seq(int event_seq) {
		this.event_seq = event_seq;
	}



	public int getRec_seq() {
		return rec_seq;
	}



	public void setRec_seq(int rec_seq) {
		this.rec_seq = rec_seq;
	}



	public String getEvent_content() {
		return event_content;
	}



	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}



	public Date getEvent_at() {
		return event_at;
	}



	public void setEvent_at(Date event_at) {
		this.event_at = event_at;
	}



	public String getEvent_img() {
		return event_img;
	}



	public void setEvent_img(String event_img) {
		this.event_img = event_img;
	}



	public String getBase64Image() {
		return base64Image;
	}



	public void setBase64Image(String base64Image) {
		this.base64Image = base64Image;
	}



	public String getFormattedDateTime() {
		return formattedDateTime;
	}



	public void setFormattedDateTime(String formattedDateTime) {
		this.formattedDateTime = formattedDateTime;
	}



	public int getSun() {
		return sun;
	}



	public void setSun(int sun) {
		this.sun = sun;
	}



	public int getMon() {
		return mon;
	}



	public void setMon(int mon) {
		this.mon = mon;
	}



	public int getTue() {
		return tue;
	}



	public void setTue(int tue) {
		this.tue = tue;
	}



	public int getWed() {
		return wed;
	}



	public void setWed(int wed) {
		this.wed = wed;
	}



	public int getThu() {
		return thu;
	}



	public void setThu(int thu) {
		this.thu = thu;
	}



	public int getFri() {
		return fri;
	}



	public void setFri(int fri) {
		this.fri = fri;
	}



	public int getSat() {
		return sat;
	}



	public void setSat(int sat) {
		this.sat = sat;
	}



	public Date getSun_dates() {
		return sun_dates;
	}



	public void setSun_dates(Date sun_dates) {
		this.sun_dates = sun_dates;
	}



	public Date getMon_dates() {
		return mon_dates;
	}



	public void setMon_dates(Date mon_dates) {
		this.mon_dates = mon_dates;
	}



	public Date getTue_dates() {
		return tue_dates;
	}



	public void setTue_dates(Date tue_dates) {
		this.tue_dates = tue_dates;
	}



	public Date getWed_dates() {
		return wed_dates;
	}



	public void setWed_dates(Date wed_dates) {
		this.wed_dates = wed_dates;
	}



	public Date getThu_dates() {
		return thu_dates;
	}



	public void setThu_dates(Date thu_dates) {
		this.thu_dates = thu_dates;
	}



	public Date getFri_dates() {
		return fri_dates;
	}



	public void setFri_dates(Date fri_dates) {
		this.fri_dates = fri_dates;
	}



	public Date getSat_dates() {
		return sat_dates;
	}



	public void setSat_dates(Date sat_dates) {
		this.sat_dates = sat_dates;
	}



	public int getSun_sleep() {
		return sun_sleep;
	}



	public void setSun_sleep(int sun_sleep) {
		this.sun_sleep = sun_sleep;
	}



	public int getSun_nolook() {
		return sun_nolook;
	}



	public void setSun_nolook(int sun_nolook) {
		this.sun_nolook = sun_nolook;
	}



	public int getMon_sleep() {
		return mon_sleep;
	}



	public void setMon_sleep(int mon_sleep) {
		this.mon_sleep = mon_sleep;
	}



	public int getMon_nolook() {
		return mon_nolook;
	}



	public void setMon_nolook(int mon_nolook) {
		this.mon_nolook = mon_nolook;
	}



	public int getTue_sleep() {
		return tue_sleep;
	}



	public void setTue_sleep(int tue_sleep) {
		this.tue_sleep = tue_sleep;
	}



	public int getTue_nolook() {
		return tue_nolook;
	}



	public void setTue_nolook(int tue_nolook) {
		this.tue_nolook = tue_nolook;
	}



	public int getWed_sleep() {
		return wed_sleep;
	}



	public void setWed_sleep(int wed_sleep) {
		this.wed_sleep = wed_sleep;
	}



	public int getWed_nolook() {
		return wed_nolook;
	}



	public void setWed_nolook(int wed_nolook) {
		this.wed_nolook = wed_nolook;
	}



	public int getThu_sleep() {
		return thu_sleep;
	}



	public void setThu_sleep(int thu_sleep) {
		this.thu_sleep = thu_sleep;
	}



	public int getThu_nolook() {
		return thu_nolook;
	}



	public void setThu_nolook(int thu_nolook) {
		this.thu_nolook = thu_nolook;
	}



	public int getFri_sleep() {
		return fri_sleep;
	}



	public void setFri_sleep(int fri_sleep) {
		this.fri_sleep = fri_sleep;
	}



	public int getFri_nolook() {
		return fri_nolook;
	}



	public void setFri_nolook(int fri_nolook) {
		this.fri_nolook = fri_nolook;
	}



	public int getSat_sleep() {
		return sat_sleep;
	}



	public void setSat_sleep(int sat_sleep) {
		this.sat_sleep = sat_sleep;
	}



	public int getSat_nolook() {
		return sat_nolook;
	}



	public void setSat_nolook(int sat_nolook) {
		this.sat_nolook = sat_nolook;
	}



	
}
