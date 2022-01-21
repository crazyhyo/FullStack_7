package com.spring.compass.command;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.spring.compass.util.CommonCodeUtil;

public class SckbdreqLtctListCommand implements Serializable{
	private String hsptNo;
	private Date cancleYmd;
	private String manageNo;
	private String ltctNm;
	private String pstiNm;
	private String childNo;
	private Date sckbdreqYmd;
	private String sckbdreqCode;
	private String pstiTelno;
	private String type;
	private String sckbdreqNo;
	private String pstiNo;
	private int age;
	public String getHsptNo() {
		return hsptNo;
	}
	public void setHsptNo(String hsptNo) {
		this.hsptNo = hsptNo;
	}
	public Date getCancleYmd() {
		return cancleYmd;
	}
	public void setCancleYmd(Date cancleYmd) {
		this.cancleYmd = cancleYmd;
	}
	public String getManageNo() {
		return manageNo;
	}
	public void setManageNo(String manageNo) {
		this.manageNo = manageNo;
	}
	public String getLtctNm() {
		return ltctNm;
	}
	public void setLtctNm(String ltctNm) {
		this.ltctNm = ltctNm;
	}
	public String getPstiNm() {
		return pstiNm;
	}
	public void setPstiNm(String pstiNm) {
		this.pstiNm = pstiNm;
	}
	public String getChildNo() {
		return childNo;
	}
	public void setChildNo(String childNo) {
		this.childNo = childNo;
	}
	public Date getSckbdreqYmd() {
		return sckbdreqYmd;
	}
	public void setSckbdreqYmd(Date sckbdreqYmd) {
		this.sckbdreqYmd = sckbdreqYmd;
	}
	public String getSckbdreqCode() {
		return sckbdreqCode;
	}
	public void setSckbdreqCode(String sckbdreqCode) {
		this.sckbdreqCode = CommonCodeUtil.getCodeName(sckbdreqCode);
	}
	public String getPstiTelno() {
		return pstiTelno;
	}
	public void setPstiTelno(String pstiTelno) {
		this.pstiTelno = pstiTelno;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSckbdreqNo() {
		return sckbdreqNo;
	}
	public void setSckbdreqNo(String sckbdreqNo) {
		this.sckbdreqNo = sckbdreqNo;
	}
	public String getPstiNo() {
		return pstiNo;
	}
	public void setPstiNo(String pstiNo) {
		this.pstiNo = pstiNo;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.DEFAULT_STYLE);
	}
}
