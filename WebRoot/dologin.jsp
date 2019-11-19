<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.rjjs.member.model.*"%>
<%@page import="com.rjjs.member.biz.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dologin.jsp' starting page</title>
    
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
      String adminName = request.getParameter("adminName");
      String adminPwd = request.getParameter("adminPwd");
      AdminBiz adminBiz = new AdminBiz();
      Admin admin = adminBiz.login(adminName,adminPwd);
      if(admin!=null){
          session.setAttribute("admin",adminName);
          Object o = application.getAttribute("count");
          if(o == null){
              application.setAttribute("count",1);
          }
          else{
              int count = Integer.parseInt(o.toString());
              count++;
              application.setAttribute("count",count);
          }
          response.sendRedirect("MemberMessage.jsp");
      }
      else{
          response.sendRedirect("login.jsp");
      }
%>
  </body>
</html>
