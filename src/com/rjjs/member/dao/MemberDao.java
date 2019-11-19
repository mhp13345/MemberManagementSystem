package com.rjjs.member.dao;
import java.sql.*;
import java.util.*;

import com.rjjs.member.model.*;
public class MemberDao extends BaseDao {
	
	public List<Member> getMembers(){
		Member member = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		List<Member> members = new ArrayList<Member>();
		
		connection = getConn();
		String sql = "select * from t_member";
		try {
			statement = connection.prepareStatement(sql);
			rs = statement.executeQuery();
			while(rs.next()){
				member = new Member();
				member.setMemberid(rs.getInt("memberid"));
				member.setMemberName(rs.getString("memberName"));
				member.setMemberSex(rs.getString("memberSex"));
				member.setMemberStatus(rs.getString("memberStatus"));
				member.setMemberPhone(rs.getString("memberPhone"));
				member.setMemberAddress(rs.getString("memberAddress"));
				members.add(member);
			}
			closeAll(connection, statement);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return members;
	}
	
	public int InsertMember(Member member){
		int count = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		
		connection = getConn();
		String sql = "insert into t_member(memberName,memberSex,memberStatus,memberPhone,memberAddress) values(?,?,?,?,?)";
		try {
			statement = connection.prepareStatement(sql);
			statement.setString(1,member.getMemberName());
			statement.setString(2,member.getMemberSex());
			statement.setString(3,member.getMemberStatus());
			statement.setString(4,member.getMemberPhone());
			statement.setString(5,member.getMemberAddress());
			count = statement.executeUpdate();
			closeAll(connection,statement);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
}
