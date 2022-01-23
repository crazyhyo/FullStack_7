package com.spring.compass.command;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

public class SckbdreqProcessCommand implements Serializable{
	
	private String manageNo;
	private String sckbdreqNo;
	private String fromLtctNo;
	private String type;
	private String requestCode;
	private String toLtctNo;
	private String toHsptNo;
	
	public String getToLtctNo() {
		return toLtctNo;
	}

	public void setToLtctNo(String toLtctNo) {
		this.toLtctNo = toLtctNo;
	}

	public String getToHsptNo() {
		return toHsptNo;
	}

	public void setToHsptNo(String toHsptNo) {
		this.toHsptNo = toHsptNo;
	}

	public String getManageNo() {
		return manageNo;
	}

	public void setManageNo(String manageNo) {
		this.manageNo = manageNo;
	}

	public String getSckbdreqNo() {
		return sckbdreqNo;
	}

	public void setSckbdreqNo(String sckbdreqNo) {
		this.sckbdreqNo = sckbdreqNo;
	}

	public String getFromLtctNo() {
		return fromLtctNo;
	}

	public void setFromLtctNo(String fromLtctNo) {
		this.fromLtctNo = fromLtctNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRequestCode() {
		return requestCode;
	}

	public void setRequestCode(String requestCode) {
		this.requestCode = requestCode;
	}

	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.DEFAULT_STYLE);	
	}

}
