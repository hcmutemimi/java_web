package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.demo.dao.ILoginDAO;
import com.demo.utilities.Common;

public class LoginDAO implements ILoginDAO {

	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = Common.sql_url;
			String user = Common.sql_user;
			String password = Common.sql_password;
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			return null;
		}
	}

	@Override
	public long login(String email, String password) {
		ResultSet resultSet = null;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			String sql = Common.login_check_sql;
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setString(1, email);
			statement.setString(2, password);
			resultSet=statement.executeQuery();
			if (resultSet.next()) {
				return 1;
			}
			else {
				return 0;
			}
		} catch (SQLException e) {
			 return 0;
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				return 0;
			}
		}
	}
}