package com.spring.compass.command;

import java.util.Date;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.spring.compass.util.CommonCodeUtil;

public class CnfrmManageListVO {
		
	private String pstiNm;
	private String pstiTelno;
	private Date inYmd;
	private String instNm;
	private Date slfInYmd;
	private String ngtvCnt;
	private String manageNo;
	private String sttusCode; 
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.DEFAULT_STYLE);
	}

	public String getPstiNm() {
		return pstiNm;
	}

	public void setPstiNm(String pstiNm) {
		this.pstiNm = pstiNm;
	}

	public String getPstiTelno() {
		return pstiTelno;
	}

	public void setPstiTelno(String pstiTelno) {
		this.pstiTelno = pstiTelno;
	}

	public Date getInYmd() {
		return inYmd;
	}

	public void setInYmd(Date inYmd) {
		this.inYmd = inYmd;
	}

	public String getInstNm() {
		return instNm;
	}

	public void setInstNm(String instNm) {
		this.instNm = instNm;
	}

	public Date getSlfInYmd() {
		return slfInYmd;
	}

	public void setSlfInYmd(Date slfInYmd) {
		this.slfInYmd = slfInYmd;
	}

	public String getNgtvCnt() {
		return ngtvCnt;
	}

	public void setNgtvCnt(String ngtvCnt) {
		this.ngtvCnt = ngtvCnt;
	}

	public String getManageNo() {
		return manageNo;
	}

	public void setManageNo(String manageNo) {
		this.manageNo = manageNo;
	}

	public String getSttusCode() {
		return sttusCode;
	}

	public void setSttusCode(String sttusCode) {
		this.sttusCode = CommonCodeUtil.getCodeName(sttusCode);
	}
	
	
}
