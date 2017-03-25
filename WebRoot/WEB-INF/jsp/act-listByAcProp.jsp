<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

</head>

<body>
	<!-- <form action="act-getByAcProp" method="post">
		<input type="text" name="acProp">
		<input type="submit" value="提交">
	</form> -->
	 <a>根据活动性质筛选</a>
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
			<s:iterator value="#request.activitiesByAcProp" var="act">
				<tr>
					<td>活动编号${act.acNum}</td>
					<td></td>
					<td></td>
					<td>${act.acName}</td>
					<td>${act.acInt}</td>
					<td>${act.acMon}</td>
					<td>${act.acBudget}</td>
					<td>${act.acProp}</td>
				</tr>
			</s:iterator>
		</table>
 
</body>
</html>
