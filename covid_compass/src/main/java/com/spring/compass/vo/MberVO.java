package com.spring.compass.vo;

import java.util.Date;

public class MberVO {

	private String mberNo;		//회원고유번호
	private String instNo;		//기관고유번호
	private String mberCode;	//회원구분코드
	private String mberId;		//아이디
	private String mberPwd;		//비밀번호
	private String mberTelno;	//연락처
	private String mberEmail;	//이메일
	private String useYn;		//사용여부
	private Date mberRegdate;	//회원등록일
	private String mberNm;		//이름
	private String mberAdres;	//주소
	private Date mberBir;		//생년월일

	public String getMberNo() {
		return mberNo;
	}
	public void setMberNo(String mberNo) {
		this.mberNo = mberNo;
	}
	public String getInstNo() {
		return instNo;
	}
	public void setInstNo(String instNo) {
		this.instNo = instNo;
	}
	public String getMberCode() {
		return mberCode;
	}
	public void setMberCode(String mberCode) {
		this.mberCode = mberCode;
	}
	public String getMberId() {
		return mberId;
	}
	public void setMberId(String mberId) {
		this.mberId = mberId;
	}
	public String getMberPwd() {
		return mberPwd;
	}
	public void setMberPwd(String mberPwd) {
		this.mberPwd = mberPwd;
	}
	public String getMberTelno() {
		return mberTelno;
	}
	public void setMberTelno(String mberTelno) {
		this.mberTelno = mberTelno;
	}
	public String getMberEmail() {
		return mberEmail;
	}
	public void setMberEmail(String mberEmail) {
		this.mberEmail = mberEmail;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	public Date getMberRegdate() {
		return mberRegdate;
	}
	public void setMberRegdate(Date mberRegdate) {
		this.mberRegdate = mberRegdate;
	}
	public String getMberNm() {
		return mberNm;
	}
	public void setMberNm(String mberNm) {
		this.mberNm = mberNm;
	}
	public String getMberAdres() {
		return mberAdres;
	}
	public void setMberAdres(String mberAdres) {
		this.mberAdres = mberAdres;
	}
	public Date getMberBir() {
		return mberBir;
	}
	public void setMberBir(Date mberBir) {
		this.mberBir = mberBir;
	}

}
