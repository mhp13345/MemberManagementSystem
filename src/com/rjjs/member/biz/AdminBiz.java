package com.rjjs.member.biz;
import com.rjjs.member.dao.AdminDao;
import com.rjjs.member.model.Admin;

public class AdminBiz {
	AdminDao adminDao = new AdminDao();
	
	public Admin login(String adminName,String adminPwd){
		Admin admin = adminDao.Login(adminName,adminPwd);
		return admin;
	}
}
