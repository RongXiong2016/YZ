<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<%-- <link
	href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>	 --%>


<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
  </head>
  
  <body>
    
	<s:if test="#request.byIDs==null || #request.byIDs.size()==0">
     	该学生信息不存在
     </s:if>

	<s:else>
		<table class="table table-bordered" style="text-align:center; " >
			<tr>
				<td>学号</td>
				<td>姓名</td>
			</tr>
			<s:iterator value="#request.byIDs">
				<tr>
					<td>${stuID }</td>
					<td>${stuName }</td>
				</tr>
			</s:iterator>
		</table>
	</s:else>
	<br><br>
	<a href="background/check-student.jsp" style="center">返回</a>
  </body>
</html>
