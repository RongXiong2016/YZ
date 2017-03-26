<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title></title>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	 
	<hr>
	<form action="act-getByAcProp" method="post">
	<input type="text" name="acProp">
	<input type="submit" value="查询">
	</form>
	
	<s:if test="#request.activitiesByAcProp==null || #request.activitiesByAcProp.size()==0">
     	没有活动信息
     </s:if>

	<s:else>
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<td>acNum</td>
				<td>cmNum</td>
				<td>cpNum</td>
				<td>acName</td>
				<td>acInt</td>
				<td>acMon</td>
				<td>acBudget</td>
				<td>acProp</td>
			</tr>
			<s:iterator value="#request.activitiesByAcProp">
				<tr>
					<td>${acNum}</td>
					<td>${community.cmSchool}</td>
					<td>${company.cpNum}</td>
					<td>${acName}</td>
					<td>${acInt}</td>
					<td>${acMon}</td>
					<td>${acBudget}</td>
					<td>${acProp}</td>
				</tr>
			</s:iterator>
		</table>
	</s:else>
</body>
</html>
