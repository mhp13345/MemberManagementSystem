<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <script type="text/javascript">
      function check(){
        var name = document.getElementById("adminName");
        var nvalue = name.value;
        var pwd = document.getElementById("adminPwd");
        var pvalue = pwd.value;
        if(nvalue==""){
          alert("账号不能为空！");
          name.focus();
          return false;
        }
        else if(pvalue==""){
          alert("密码不能为空！");
          pwd.focus();
          return false;
        }
        else{
          return true;
        }
      }
    </script>
  </head>
  
  <body>
    <form name="form1" method="post" action="dologin.jsp">
      <table width="400" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td>&nbsp;</td>
          <td>管理员登录界面</td>
        </tr>
        <tr>
          <td align="right">账号：</td>
          <td align="left"><input type="text" name="adminName" id="adminName"/></td>
        </tr>
        <tr>
          <td align="right">密码：</td>
          <td align="left"><input type="password" name="adminPwd" id="adminPwd"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input style=" width:100; height:30" type="submit" value="登录" onclick="return check()"/></td>
        </tr>
      </table>
	</form>
  </body>
</html>
