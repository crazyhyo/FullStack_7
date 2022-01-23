package com.spring.compass.command;

public class HsptSckbdModifyCommand {
	
	private String hsptNo;
	private int rmndSckbdCnt = 0;
	private int sckbdCnt = 0;
	private int inputSckbd = 0;
	
	public String getHsptNo() {
		return hsptNo;
	}
	public void setHsptNo(String hsptNo) {
		this.hsptNo = hsptNo;
	}
	public int getRmndSckbdCnt() {
		return rmndSckbdCnt;
	}
	public void setRmndSckbdCnt(int rmndSckbdCnt) {
		this.rmndSckbdCnt = rmndSckbdCnt;
	}
	public int getSckbdCnt() {
		return sckbdCnt;
	}
	public void setSckbdCnt(int sckbdCnt) {
		this.sckbdCnt = sckbdCnt;
	}
	public int getInputSckbd() {
		return inputSckbd;
	}
	public void setInputSckbd(int inputSckbd) {
		this.inputSckbd = inputSckbd;
	}
	
	

}
