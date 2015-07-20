package com.kr.spt.vo;

public class BoardVO {

	String bbs_seq;
	String bbs_nick;
	String bbs_email;
	String bbs_type;
	String bbs_content;
	String bbs_title;
	String bbs_cnt;
	String bbs_x;
	String bbs_y;
	
	public String getBbs_seq() {
		return bbs_seq;
	}
	public void setBbs_seq(String bbs_seq) {
		this.bbs_seq = bbs_seq;
	}
	public String getBbs_nick() {
		return bbs_nick;
	}
	public void setBbs_nick(String bbs_nick) {
		this.bbs_nick = bbs_nick;
	}
	public String getBbs_email() {
		return bbs_email;
	}
	public void setBbs_email(String bbs_email) {
		this.bbs_email = bbs_email;
	}
	public String getBbs_type() {
		return bbs_type;
	}
	public void setBbs_type(String bbs_type) {
		this.bbs_type = bbs_type;
	}
	public String getBbs_content() {
		return bbs_content;
	}
	public void setBbs_content(String bbs_content) {
		this.bbs_content = bbs_content;
	}
	public String getBbs_title() {
		return bbs_title;
	}
	public void setBbs_title(String bbs_title) {
		this.bbs_title = bbs_title;
	}
	public String getBbs_cnt() {
		return bbs_cnt;
	}
	public void setBbs_cnt(String bbs_cnt) {
		this.bbs_cnt = bbs_cnt;
	}
	public String getBbs_x() {
		return bbs_x;
	}
	public void setBbs_x(String bbs_x) {
		this.bbs_x = bbs_x;
	}
	public String getBbs_y() {
		return bbs_y;
	}
	public void setBbs_y(String bbs_y) {
		this.bbs_y = bbs_y;
	}
	@Override
	public String toString() {
		return "BoardVO [bbs_seq=" + bbs_seq + ", bbs_nick=" + bbs_nick
				+ ", bbs_email=" + bbs_email + ", bbs_type=" + bbs_type
				+ ", bbs_content=" + bbs_content + ", bbs_title=" + bbs_title
				+ ", bbs_cnt=" + bbs_cnt + ", bbs_x=" + bbs_x + ", bbs_y="
				+ bbs_y + "]";
	}
	
	
	
	
}
