package com.jsp.utils;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.jsp.exception.NotMultipartFormDataException;

public class MultipartHttpServletRequestParser {

	Map<String, String[]> paramString = new HashMap<String, String[]>();
	Map<String, List<FileItem>> paramFile = new HashMap<String, List<FileItem>>();
	
	public MultipartHttpServletRequestParser(HttpServletRequest request,
											 int memory_threshold,
											 int max_file_size,
											 int max_request_size)
												throws NotMultipartFormDataException,
													   UnsupportedEncodingException,
													   FileUploadException{
		
		ServletFileUpload upload
			= ServletFileUploadBuilder.build(request, memory_threshold, max_file_size, max_request_size);
		
		List<FileItem> fileItems = upload.parseRequest(request);
		
		if(fileItems != null) for(FileItem item : fileItems) {
			// 1.1 νλ
			String paramName = item.getFieldName();
			
			if(item.isFormField()) { // μΌλ° parameter : text
				String[] paramValues = item.getString("utf-8").split(",");
				this.paramString.put(paramName, paramValues);
			}else { // 1.2 file
				List<FileItem> files = this.paramFile.get(paramName);
				
				if(files == null) {
					files = new ArrayList<FileItem>();
					this.paramFile.put(paramName, files);
				}
				files.add(item);
			}
		}
	}
	
	public String getParameter(String paramName) {
		String[] param = this.paramString.get(paramName);
		String result = null;
		if(param != null) result = param[0];
		return result;
	}
	
	public String[] getParameterValues(String paramName) {
		return this.paramString.get(paramName);
	}
	
	public Enumeration<String> getParameterNames(){
		List<String> paramNames = new ArrayList<String>();
		
		if(paramString.size() > 0) {
			for(String paramName : paramString.keySet()) {
				paramNames.add(paramName);
			}
		}
		
		Enumeration<String> result = Collections.enumeration(paramNames);
		
		return result;
	}
	
	public FileItem getFileItem(String paramName) {
		
		List<FileItem> itemList = paramFile.get(paramName);
		FileItem file = null;
		
		if(itemList != null) file = itemList.get(0);
		
		return file;
	}
	
	public FileItem[] getFileItems(String paramName) {
		
		List<FileItem> items = paramFile.get(paramName);
		FileItem[] files = null;
		if(items != null) {
			files = new FileItem[items.size()];
			items.toArray(files);
		}
		return files;
	}
}
