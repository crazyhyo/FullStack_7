package com.spring.compass.command;

import org.springframework.web.multipart.MultipartFile;

public class instRegistCommand {
	private String writer;
	private String inst;
	private MultipartFile instFile;
	private String fileName;

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

		this.fileName =instFile.getOriginalFilename();
	}

	public String getFileName() {
		return fileName;
	}


}
