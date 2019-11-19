<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.rjjs.member.biz.MemberBiz"%>
<%@page import="com.rjjs.member.model.Member"%>
<%@page import="javax.swing.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doregister.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
      request.setCharacterEncoding("utf-8");
      String memberName = request.getParameter("memberName");
	  String memberSex = request.getParameter("memberSex");
	  String memberStatus = request.getParameter("memberStatus");
	  String memberPhone = request.getParameter("memberPhone");
	  String memberAddress = request.getParameter("memberAddress");
	  Member member = new Member();
	  member.setMemberName(memberName);
	  member.setMemberSex(memberSex);
	  member.setMemberStatus(memberStatus);
	  member.setMemberPhone(memberPhone);
	  member.setMemberAddress(memberAddress);
	  
	  MemberBiz memberBiz = new MemberBiz();
	  int c = memberBiz.insertMember(member);
	  if(c>0){
	    response.sendRedirect("MemberMessage.jsp");
	  }
	  else{
	    
	  }
     %>
  </body>
</html>
