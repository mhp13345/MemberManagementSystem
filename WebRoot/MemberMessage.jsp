<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.rjjs.member.biz.MemberBiz"%>
<%@page import="com.rjjs.member.model.Member"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会员管理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
    body{background-color:#CCC;}
    .p1{ text-align:right; margin-right:300px;}
    table{border-color:#FFF;}
    </style>
  </head>
  <%@include file="control.jsp" %>
  <body>
    <p style="text-align:center;font-size:20pt;">会员管理系统</p>
    <p class="p1"><a href="register.jsp">添加新会员</a></p>
    <table width="750" border="1" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="100" align="center" bgcolor="#666666">编号</td>
        <td width="100" align="center" bgcolor="#666666">名称</td>
        <td width="100" align="center" bgcolor="#666666">性别</td>
        <td width="100" align="center" bgcolor="#666666">所属省份</td>
        <td width="150" align="center" bgcolor="#666666">电话</td>
        <td width="200" align="center" bgcolor="#666666">地址</td>
      </tr>
      
      <%
        MemberBiz memberBiz = new MemberBiz();
        List<Member> members = memberBiz.getMembers();
        for(int i=0;i<members.size();i++){
      %>
        <tr>
        <td><%out.print(members.get(i).getMemberid()); %></td>
        <td><%out.print(members.get(i).getMemberName()); %></td>
        <td><%out.print(members.get(i).getMemberSex()); %></td>
        <td><%out.print(members.get(i).getMemberStatus()); %></td>
        <td><%out.print(members.get(i).getMemberPhone()); %></td>
        <td><%out.print(members.get(i).getMemberAddress()); %></td>
        </tr>
      <%
        }
       %>
    </table>
      <%  
        Object num = application.getAttribute("count"); 
      %>
    <p>本站访问人数：<%out.print(num);%></p>
  </body>
</html>
