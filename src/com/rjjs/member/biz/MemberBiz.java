package com.rjjs.member.biz;

import java.util.*;
import com.rjjs.member.dao.*;
import com.rjjs.member.model.*;

public class MemberBiz {
	MemberDao memberDao = new MemberDao();
	
	public List<Member> getMembers(){
		List<Member> members = memberDao.getMembers();
		return members;
	}
	
	public int insertMember(Member member){
		int c = memberDao.InsertMember(member);
		return c;
	}
}
