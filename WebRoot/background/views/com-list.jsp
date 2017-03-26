<%@ page language="java" import="java.sql.*,java.util.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'comm-list.jsp' starting page</title>

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
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> --%>

<link rel="stylesheet" href="background/bootstrap/css/bootstrap.min.css">
<script src="background/bootstrap/jquery.min.js"></script>
<script src="background/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>

	<h4 style="text-align: center;">社团信息列表</h4>

	<s:if
		test="#request.communitys == null|| #request.communitys.size() ==0">
		没有任何社团信息
	</s:if>
	<s:else>
		<table class="table">
			<tr>
				<td>社团编号</td>
				<td>社团证明</td>
				<td class="warning">审核结果</td>
				<td class="warning">删除信息</td>
				<td class="warning">审核</td>
			</tr>
			
			<s:iterator value="#request.communitys">
				<tr>
					<td>${cmNum }</td>
					<td><img src="${cmIcon }"></td>
					<td>${cmAudit }</td>
					<td><a href="com-cmdelete?id=${cmNum }">Delete</a></td>
					<td><a href="com-cmupdate?id=${cmNum }">通过</a></td>
				</tr>
			</s:iterator>
		</table>
	</s:else>
</body>
</html>
