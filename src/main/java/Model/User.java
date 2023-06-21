package Model;

public class User   {
	private String first_name;
	private String last_name;
	private int age;
	private String email;
	private String phone;
	private String target;
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public User(String first_name,String last_name,int age,String email,String phone,String target, int id) {
	this.first_name= first_name;
	this.last_name=last_name;
	this.age=age;
	this.email =email;
	this.phone=phone;
	this.target=target;
	this.id =id;
	}
	@Override
	public String toString() {
		return "User [first_name=" + first_name + ", last_name=" + last_name + ", age=" + age + ", email=" + email
				+ ", phone=" + phone + ", target=" + target + ", id=" + id + "]";
	}
	
}
