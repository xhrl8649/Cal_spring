package com.hk.cal.dtos;

import java.io.Serializable;

public class CalDto implements Serializable {
	private int m_seq; //회원번호
	private String m_id; //회원아이디
	private int ac_seq; //학원번호
	private String ac_name; //학원명
	private String ac_class; //과정명
	private String ac_location; //지역명
	private String ac_cre_date; //개강일
	
	public CalDto() {
	}

	public CalDto(int m_seq, String m_id, int ac_seq, String ac_name, String ac_class, String ac_location,
			String ac_cre_date) {
		super();
		this.m_seq = m_seq;
		this.m_id = m_id;
		this.ac_seq = ac_seq;
		this.ac_name = ac_name;
		this.ac_class = ac_class;
		this.ac_location = ac_location;
		this.ac_cre_date = ac_cre_date;
	}

	public int getM_seq() {
		return m_seq;
	}

	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getAc_seq() {
		return ac_seq;
	}

	public void setAc_seq(int ac_seq) {
		this.ac_seq = ac_seq;
	}

	public String getAc_name() {
		return ac_name;
	}

	public void setAc_name(String ac_name) {
		this.ac_name = ac_name;
	}

	public String getAc_class() {
		return ac_class;
	}

	public void setAc_class(String ac_class) {
		this.ac_class = ac_class;
	}

	public String getAc_location() {
		return ac_location;
	}

	public void setAc_location(String ac_location) {
		this.ac_location = ac_location;
	}

	public static String getAc_cre_date() {
		return ac_cre_date;
	}

	public void setAc_cre_date(String ac_cre_date) {
		this.ac_cre_date = ac_cre_date;
	}

	@Override
	public String toString() {
		return "CalDto [m_seq=" + m_seq + ", m_id=" + m_id + ", ac_seq=" + ac_seq + ", ac_name=" + ac_name
				+ ", ac_class=" + ac_class + ", ac_location=" + ac_location + ", ac_cre_date=" + ac_cre_date + "]";
	}

}
