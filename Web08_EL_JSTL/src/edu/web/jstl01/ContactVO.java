package edu.web.jstl01;

public class ContactVO {
	private String name;
	private String phone;
	private String email;
	
	// 생성자
	public ContactVO() {}
	public ContactVO(String name, String phone, String email) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
	}
	// end 생성자
	
	// getter, setter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	// end getter, setter
	
} // end ContactVO