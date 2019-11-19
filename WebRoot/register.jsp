<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加会员</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
      table{border-color:#CCC;}
    </style>
    <script type="text/javascript">
      function check(){
        var name = document.getElementById("memberName");
        var phone = document.getElementById("memberPhone");
        var address = document.getElementById("memberAddress");
        var nvalue = name.value;
        var pvalue = phone.value;
        var avalue = address.value;
        
        if(nvalue==""){
          alert("姓名不能为空！");
          name.focus();
          return false;
        }
        else if(pvalue==""){
          alert("电话不能为空！");
          phone.focus();
          return false;
        }
        else if(avalue==""){
          alert("地址不能为空！");
          address.focus();
          return false;
        }
        else{
          return true;
        }
      }
    </script>
  </head>
  <%@include file="control.jsp" %>
  <body>
    <p style="text-align:center;font-size:20pt;">会员管理系统</p>
    <p style="text-align:center;">添加会员</p>
    <form name="form1" method="post" action="doregister.jsp">
      <table width="600" border="1" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td align="right">名称：</td>
    <td align="left"><input type="text" name="memberName" id="memberName"/></td>
  </tr>
  <tr>
    <td align="right">性别：</td>
    <td align="left">
      <select name="memberSex">
        <option value="男">男</option>
        <option value="女">女</option>
      </select>
    </td>
  </tr>
  <tr>
    <td align="right">所属省份：</td>
    <td align="left">
      <select name="memberStatus">
        <option value="北京市">北京市</option>
        <option value="浙江省">浙江省</option>
        <option value="天津市">天津市</option>
        <option value="安徽省">安徽省</option>
        <option value="上海市">上海市</option>
        <option value="福建省">福建省</option>
        <option value="重庆市">重庆市</option>
        <option value="江西省">江西省</option>
        <option value="山东省">山东省</option>
        <option value="河南省">河南省</option>
        <option value="湖北省">湖北省</option>
        <option value="湖南省">湖南省</option>
        <option value="广东省">广东省</option>
        <option value="海南省">海南省</option>
        <option value="山西省">山西省</option>
        <option value="青海省">青海省</option>
        <option value="江苏省">江苏省</option>
        <option value="辽宁省">辽宁省</option>
        <option value="吉林省">吉林省</option>
        <option value="台湾省">台湾省</option>
        <option value="河北省">河北省</option>
        <option value="贵州省">贵州省</option>
        <option value="四川省">四川省</option>
        <option value="云南省">云南省</option>
        <option value="陕西省">陕西省</option>
        <option value="甘肃省">甘肃省</option>
        <option value="黑龙江省">黑龙江省</option>
        <option value="香港特别行政区">香港特别行政区</option>
        <option value="澳门特别行政区">澳门特别行政区</option>
        <option value="广西壮族自治区">广西壮族自治区</option>
        <option value="宁夏回族自治区">宁夏回族自治区</option>
        <option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
        <option value="内蒙古自治区">内蒙古自治区</option>
        <option value="西藏自治区">西藏自治区</option>
      </select>
    </td>
  </tr>
  <tr>
    <td align="right">电话：</td>
    <td align="left"><input type="text" name="memberPhone" id="memberPhone"/></td>
  </tr>
  <tr>
    <td align="right">地址：</td>
    <td align="left"><input type="text" name="memberAddress" id="memberAddress"/></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="submit" value="提交" onclick="return check()"/>
      <input type="reset" value="重置"/>
    </td>
  </tr>
</table>
    </form>
  </body>
</html>
