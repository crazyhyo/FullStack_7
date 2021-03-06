package com.jsp.command;

import java.util.Date;

import com.jsp.dto.MemberVO;

public class NoticeVOCommand {
	
	private int nno;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private int viewCnt;
	private int point;
	private Date startDate;
	private Date endDate;
	private Date updateDate;
	private String dist;
	
	private MemberVO member;
	
	@Override
	public String toString() {
		return "NoticeVOCommand [nno=" + nno + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", regDate=" + regDate + ", viewCnt=" + viewCnt + ", point=" + point + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", updateDate=" + updateDate + ", dist=" + dist + ", member=" + member + "]";
	}

	public MemberVO getMember() {
		return member;
	}
	
	public void setMember(MemberVO member) {
		this.member = member;
	}
	
	
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getDist() {
		return dist;
	}
	public void setDist(String dist) {
		this.dist = dist;
	}
	
}
