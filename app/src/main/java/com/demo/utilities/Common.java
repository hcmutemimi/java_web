package com.demo.utilities;

public class Common{
	//SQL account
	public static String sql_url = "jdbc:mysql://localhost:3306/management_post";
	public static String sql_user="root";
	public static String sql_password="16110152";
	
	public static String register_sql= "INSERT INTO members (user_name, email, password, role) VALUES (?, ?, ?, ?)";
	public static String register_check_sql= "SELECT * FROM members WHERE email = ?";
	
	public static String login_check_sql= "SELECT * FROM members WHERE email = ? AND password = ?";
	
	public static String admin="admin@gmail.com";
	public static String admin_pass="123456";
}