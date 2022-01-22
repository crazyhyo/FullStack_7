package com.spring.compass.vo;

import java.util.Date;

public class HsptStatsVO {

	private String hsptStatsNo;
	private String hsptNo;
	private int dgnssCnt     ;
	private int reqSckbdCnt ;
	private int inptntCnt    ;
	private int goLtctCnt   ;
	private int goSlfCnt    ;
	private int outCnt       ;
	private int deathCnt     ;
	private int rlsedCnt     ;
	private int curInptntCnt;
	private int reqSmpleCnt ;
	private int smplePstvCnt;
	private int smpleNgtvCnt;
	private int rmndSckbdCnt;
	private int sckbdCnt     ;
	private int avgInptntAge;
	private int avgOutPeriod;
    private Date statsYmd;


	public String getHsptStatsNo() {
		return hsptStatsNo;
	}
	public void setHsptStatsNo(String hsptStatsNo) {
		this.hsptStatsNo = hsptStatsNo;
	}
	public String getHsptNo() {
		return hsptNo;
	}
	public void setHsptNo(String hsptNo) {
		this.hsptNo = hsptNo;
	}
	public int getDgnssCnt() {
		return dgnssCnt;
	}
	public void setDgnssCnt(int dgnssCnt) {
		this.dgnssCnt = dgnssCnt;
	}
	public int getReqSckbdCnt() {
		return reqSckbdCnt;
	}
	public void setReqSckbdCnt(int reqSckbdCnt) {
		this.reqSckbdCnt = reqSckbdCnt;
	}
	public int getInptntCnt() {
		return inptntCnt;
	}
	public void setInptntCnt(int inptntCnt) {
		this.inptntCnt = inptntCnt;
	}
	public int getGoLtctCnt() {
		return goLtctCnt;
	}
	public void setGoLtctCnt(int goLtctCnt) {
		this.goLtctCnt = goLtctCnt;
	}
	public int getGoSlfCnt() {
		return goSlfCnt;
	}
	public void setGoSlfCnt(int goSlfCnt) {
		this.goSlfCnt = goSlfCnt;
	}
	public int getOutCnt() {
		return outCnt;
	}
	public void setOutCnt(int outCnt) {
		this.outCnt = outCnt;
	}
	public int getDeathCnt() {
		return deathCnt;
	}
	public void setDeathCnt(int deathCnt) {
		this.deathCnt = deathCnt;
	}
	public int getRlsedCnt() {
		return rlsedCnt;
	}
	public void setRlsedCnt(int rlsedCnt) {
		this.rlsedCnt = rlsedCnt;
	}
	public int getCurInptntCnt() {
		return curInptntCnt;
	}
	public void setCurInptntCnt(int curInptntCnt) {
		this.curInptntCnt = curInptntCnt;
	}
	public int getReqSmpleCnt() {
		return reqSmpleCnt;
	}
	public void setReqSmpleCnt(int reqSmpleCnt) {
		this.reqSmpleCnt = reqSmpleCnt;
	}
	public int getSmplePstvCnt() {
		return smplePstvCnt;
	}
	public void setSmplePstvCnt(int smplePstvCnt) {
		this.smplePstvCnt = smplePstvCnt;
	}
	public int getSmpleNgtvCnt() {
		return smpleNgtvCnt;
	}
	public void setSmpleNgtvCnt(int smpleNgtvCnt) {
		this.smpleNgtvCnt = smpleNgtvCnt;
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
	public int getAvgInptntAge() {
		return avgInptntAge;
	}
	public void setAvgInptntAge(int avgInptntAge) {
		this.avgInptntAge = avgInptntAge;
	}
	public int getAvgOutPeriod() {
		return avgOutPeriod;
	}
	public void setAvgOutPeriod(int avgOutPeriod) {
		this.avgOutPeriod = avgOutPeriod;
	}
	public Date getStatsYmd() {
		return statsYmd;
	}
	public void setStatsYmd(Date statsYmd) {
		this.statsYmd = statsYmd;
	}


}