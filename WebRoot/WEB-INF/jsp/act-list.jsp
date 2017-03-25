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

<title>查询所有活动</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<s:if test="#request.activities==null || #request.activities.size()==0">
     	没有活动信息
     </s:if>

	<s:else>
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<td>acNum</td>
				<!-- <td>cmNum</td>
				<td>cpNum</td> -->
				<td>acName</td>
				<td>acInt</td>
				<td>acMon</td>
				<td>acBudget</td>
				<td>EDIT</td>
			</tr>
			<s:iterator value="#request.activities">
				<tr>
					<td>${acNum}</td>
					<%-- <td>${community.cmSchool}</td>
					<td>${company.cpNum}</td> --%>
					<td>${acName}</td>
					<td>${acInt}</td>
					<td>${acMon}</td>
					<td>${acBudget}</td>
					<td><a href="#">修改</a></td>
				</tr>
			</s:iterator>
		</table>
	</s:else>
	 
</body>
</html>
