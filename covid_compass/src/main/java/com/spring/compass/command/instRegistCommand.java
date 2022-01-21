package com.spring.compass.command;

import org.springframework.web.multipart.MultipartFile;

import com.spring.compass.util.MakeFileName;

public class instRegistCommand {
	private String writer;
	private String inst;
	private MultipartFile instFile;
	private String fileName;
	
	private String instAdres;
	private String instName;
	private String instCall;
	private String resAgency;
	
	
	
	
	
	public String getResAgency() {
		return resAgency;
	}
	public void setResAgency(String resAgency) {
		this.resAgency = resAgency;
	}
	public String getInstAdres() {
		return instAdres;
	}
	public void setInstAdres(String instAdres) {
		this.instAdres = instAdres;
	}
	public String getInstName() {
		return instName;
	}
	public void setInstName(String instName) {
		this.instName = instName;
	}
	public String getInstCall() {
		return instCall;
	}
	public void setInstCall(String instCall) {
		this.instCall = instCall;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getInst() {
		return inst;
	}
	public void setInst(String inst) {
		this.inst = inst;
	}
	public MultipartFile getInstFile() {
		return instFile;
	}
	public void setInstFile(MultipartFile instFile) {
		this.instFile = instFile;
		this.fileName = MakeFileName.toUUIDFileName(this.instFile.getOriginalFilename(), "$$");
	}

	public String getFileName() {
		return fileName;
	}


}
