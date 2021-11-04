package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.demo.dao.IRegisterDAO;
import com.demo.model.beans.RegisterModel;
import com.demo.utilities.Common;

public class RegisterDAO implements IRegisterDAO {

	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = Common.sql_url;
			String user = Common.sql_user;
			String password = Common.sql_password;
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {		
//			System.out.print(e.getMessage());
			return null;
		}
	}

	@Override
	public long register(RegisterModel registerModel) {
		ResultSet resultSet = null;
		Connection connection = null;
		PreparedStatement statement = null;
		long id =0;
		try {
			String sql = Common.register_sql;
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, registerModel.getUsername());
			statement.setString(2, registerModel.getEmail());
			statement.setString(3, registerModel.getPassword());
			statement.setString(4, "user");
			statement.executeUpdate();
			resultSet=statement.getGeneratedKeys();
			if (resultSet.next()) {
				id= resultSet.getLong(1);
			}
			connection.commit();
			return id;
		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
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
				e.printStackTrace();
				return 0;
			}
		}
	}

	@Override
	public long findByUserName(String email) {
		ResultSet resultSet = null;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			String sql = Common.register_check_sql;
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setString(1, email);
			resultSet=statement.executeQuery();
			if (resultSet.next()) {
				return 1;
			}
			else {
				return 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
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
				e.printStackTrace();
				return 0;
			}
		}
	}
}