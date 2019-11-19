package com.rjjs.member.dao;
import java.sql.*;
import com.rjjs.member.model.Admin;

public class AdminDao extends BaseDao {
	
	public Admin Login(String adminName,String adminPwd){
		Admin admin = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		
		connection = getConn();
		String sql = "select * from admin where adminName=? and adminPwd=?";
		try {
			statement = connection.prepareStatement(sql);
			statement.setString(1,adminName);
			statement.setString(2,adminPwd);
			rs = statement.executeQuery();
			while(rs.next()){
				String name = rs.getString("adminName");
				String pwd = rs.getString("adminPwd");
				admin = new Admin();
				admin.setAdminName(name);
				admin.setAdminPwd(pwd);
			}
			closeAll(connection, statement);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return admin;
		
	}
}
