package test_smartcity;

public class Message {
	private int msg_id;
	private String name,email,Catogory,nameCtgry,textMsg;
	private long phoneNumber;
	
	
	public int getMsg_id() {
		return msg_id;
	}
	public void setMsg_id(int msg_id) {
		this.msg_id = msg_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getCatogory() {
		return Catogory;
	}
	public void setCatogory(String catogory) {
		Catogory = catogory;
	}
	public String getNameCtgry() {
		return nameCtgry;
	}
	public void setNameCtgry(String nameCtgry) {
		this.nameCtgry = nameCtgry;
	}
	public String getTextMsg() {
		return textMsg;
	}
	public void setTextMsg(String textMsg) {
		this.textMsg = textMsg;
	}
	public long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	

}
