package com.demo.utilities;

public class Common{
	//SQL account
	public static String sql_url = "jdbc:mysql://localhost:3306/training";
	public static String sql_user="root";
	public static String sql_password="chieugast11";
	
	public static String register_sql= "INSERT INTO user (name, email, password) VALUES (?, ?, ?)";
	public static String register_check_sql= "SELECT * FROM user WHERE name = ?";
	
	public static String login_check_sql= "SELECT * FROM user WHERE email = ? AND password = ?";
	
	public static String admin="admin@gmail.com";
	public static String admin_pass="123456";
}