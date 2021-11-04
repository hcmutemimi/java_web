package Model;

public class accountModel {
	private String username;
	private String password;
	public accountModel() {
		// TODO Auto-generated constructor stub
	}
	public accountModel(String username, String password) {
		this.username = username;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}
