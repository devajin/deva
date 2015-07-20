package com.kr.spt.vo;

public class SecurityVO {

	private String Resource_id;
	private String resource_name;
	private String authority_id;
	private String resource_string;
	
	public String getResource_id() {
		return Resource_id;
	}
	public void setResource_id(String resource_id) {
		Resource_id = resource_id;
	}
	public String getResource_name() {
		return resource_name;
	}
	public void setResource_name(String resource_name) {
		this.resource_name = resource_name;
	}
	public String getAuthority_id() {
		return authority_id;
	}
	public void setAuthority_id(String authority_id) {
		this.authority_id = authority_id;
	}
	public String getResource_string() {
		return resource_string;
	}
	public void setResource_string(String resource_string) {
		this.resource_string = resource_string;
	}

	@Override
	public String toString() {
		return "SecurityVO [Resource_id=" + Resource_id + ", resource_name="
				+ resource_name + ", authority_id=" + authority_id
				+ ", resource_string=" + resource_string + "]";
	}
	
	
}
