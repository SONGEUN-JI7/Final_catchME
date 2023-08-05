package kr.smhrd.entity;

import java.math.BigDecimal;

public class RestArea {

	private int ra_seq;

	private BigDecimal lat;
	
	private BigDecimal lng;

	private String ra_name;
	
	private float distance;

	public RestArea() {
	}

	public RestArea(int ra_seq, BigDecimal lat, BigDecimal lng, String ra_name, float distance) {
		super();
		this.ra_seq = ra_seq;
		this.lat = lat;
		this.lng = lng;
		this.ra_name = ra_name;
		this.distance = distance;
	}

	public int getRa_seq() {
		return ra_seq;
	}

	public void setRa_seq(int ra_seq) {
		this.ra_seq = ra_seq;
	}

	public BigDecimal getLat() {
		return lat;
	}

	public void setLat(BigDecimal lat) {
		this.lat = lat;
	}

	public BigDecimal getLng() {
		return lng;
	}

	public void setLng(BigDecimal lng) {
		this.lng = lng;
	}

	public String getRa_name() {
		return ra_name;
	}

	public void setRa_name(String ra_name) {
		this.ra_name = ra_name;
	}

	public double getDistance() {
		return distance;
	}

	public void setDistance(float distance) {
		this.distance = distance;
	}
	
}
