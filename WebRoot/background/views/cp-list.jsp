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

<title>My JSP 'com-list.jsp' starting page</title>

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

<%-- <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<SCRIPT type="text/javascript">
	function del() {
		var result = confirm("你确定删除吗？");
		if (result) {
			return true;
		} else {
			return false;
		}
	} --%>
	
<link rel="stylesheet" href="background/bootstrap/css/bootstrap.min.css">
<script src="background/bootstrap/jquery.min.js"></script>
<script src="background/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<h4 style="text-align: center;">公司信息列表</h4>

	<s:if test="#request.companys == null|| #request.companys.size() ==0">
		没有任何公司信息
	</s:if>
	<s:else>
		<table class="table">
			<tr>
				<td>公司编号</td>
				<td>公司营业执照</td>
				<td class="warning">审核结果</td>
				<td class="warning">删除信息</td>
				<td class="warning">审核</td>
			</tr>
			 
			<s:iterator value="#request.companys">
				<tr>
					<td>${cpNum }</td>
					<td><img src="${cpIcon }"></td>
					<td>${cpAudit }</td>
					<td><a href="cp-cpdelete?id=${cpNum }" class="del">删除</a></td>
					<td><a href="cp-cpupdate?id=${cpNum }">通过</a></td>
				</tr>
			</s:iterator>
	</s:else>
</body>
</html>
