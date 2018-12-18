package medicine.admin.org.vo;

/*
 * vo层，表实体的映射
 */

public class User {
	private String user_name;
	private int user_age;
	
	public User() {}
	
	public User(String user_name, int user_age) {
		super();
		this.user_name = user_name;
		this.user_age = user_age;
	}



	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getUser_age() {
		return user_age;
	}

	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}
	
	
}
