package Model;




public class Employee {
	private String name;
	private String phone;
	private int age;
	private String  cccd;
	private String taikhoan;
	private String sex;
	
	
	
	
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getCccd() {
		return cccd;
	}
	public void setCccd(String cccd) {
		this.cccd = cccd;
	}
	public String getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
		public Employee(String name, String phone, int age, String cccd, String taikhoan, String sex) {
		super();
		this.name = name;
		this.phone = phone;
		this.age = age;
		this.cccd = cccd;
		this.taikhoan = taikhoan;
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "Employee [name=" + name + ", phone=" + phone + ", age=" + age + ", cccd=" + cccd + ", taikhoan="
				+ taikhoan + ", sex=" + sex + "]";
	}


	
	
	
}
