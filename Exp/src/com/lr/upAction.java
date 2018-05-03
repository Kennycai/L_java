package com.lr;

import java.io.File;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpAction extends ActionSupport {
	private File image[];
	private String imageFileName[];
	private String imageContentType[];
	public File[] getImage() {
		return image;
	}
	public void setImage(File[] image) {
		this.image = image;
	}
	public String[] getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String[] imageFileName) {
		this.imageFileName = imageFileName;
	}
	public String[] getImageContentType() {
		return imageContentType;
	}
	public void setImageContentType(String[] imageContentType) {
		this.imageContentType = imageContentType;
	}
	public String getExtention(String filename) {
		int pos = filename.lastIndexOf(".");
	return filename.substring(pos);
	}
	public String execute() throws Exception {
		String saveFileName;
		String savepath=ServletActionContext.getServletContext().getRealPath("/images");
		System.out.println(savepath);
		File saveFile = new File(savepath);
		if(!saveFile.exists())saveFile.mkdirs();
		if(image != null) {
			for(int i = 0;i < image.length;i++) {
				saveFileName = new Date().getTime() + getExtention(this.imageFileName[i]);
				File desFile = new File(saveFile, saveFileName);
				FileUtils.copyFile(image[i], desFile);
			}
		}
		ActionContext.getContext().put("msg", "上传成功！");
		return SUCCESS;
	}
}
