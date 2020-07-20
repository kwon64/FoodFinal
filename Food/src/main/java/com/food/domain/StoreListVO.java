package com.food.domain;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class StoreListVO{
	
	private String s_brand_name;
	private String s_address;
	private String s_tel;
	private String s_midpart;
	private String s_category;
	private String s_latitude;
	private String s_longitude;
	private int r_id;
	
	
	public String getS_brand_name() {
		return s_brand_name;
	}
	public void setS_brand_name(String s_brand_name) {
		this.s_brand_name = s_brand_name;
	}
	public String getS_address() {
		return s_address;
	}
	public void setS_address(String s_address) {
		this.s_address = s_address;
	}
	public String getS_tel() {
		return s_tel;
	}
	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}
	public String getS_midpart() {
		return s_midpart;
	}
	public void setS_midpart(String s_midpart) {
		this.s_midpart = s_midpart;
	}
	public String getS_category() {
		return s_category;
	}
	public void setS_category(String s_category) {
		this.s_category = s_category;
	}
	public String getS_latitude() {
		return s_latitude;
	}
	public void setS_latitude(String s_latitude) {
		this.s_latitude = s_latitude;
	}
	public String getS_longitude() {
		return s_longitude;
	}
	public void setS_longitude(String s_longitude) {
		this.s_longitude = s_longitude;
	}
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	
	
	
}