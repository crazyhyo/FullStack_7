package com.spring.compass.command;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

public class SmplSearchCommand extends SearchCriteria implements Serializable {
	
	public SmplSearchCommand() {}
	public SmplSearchCommand(int page, int perPageNum, String searchType, String keyword) {
		super(page, perPageNum, searchType, keyword);
	}
	private String typeCode = "";
	private String pbhtNo = "";

	public String getPbhtNo() {
		return pbhtNo;
	}
	public void setPbhtNo(String pbhtNo) {
		this.pbhtNo = pbhtNo;
	}
	
	public String getTypeCode() {
		return typeCode;
	}
	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.DEFAULT_STYLE);
	}
	
	

}
