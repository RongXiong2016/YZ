<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 
<title>根据学校筛选活动</title>

</head>

<body>
	<form action="act-getByCmSchool" method="post">
		<!-- <input type="button" value="杭州电子科技大学" onclick=""> -->
		<!-- <input type="text" name="community.cmSchool"> --> <!--community.cmSchool  -->
		<input type="submit" value="公司">
	</form>
<s:debug></s:debug>
<s:if
		test="#request.activitiesByAcMon==null || #request.activitiesByAcMon.size()==0">
     	没有活动信息
     </s:if>

	<s:else>
		<table border="1" cellpadding="10" cellspacing="0">
			<s:iterator value="#request.activitiesByAcMon">
				<tr>
					<td>${acNum}</td>
					<td>${company.cpNum}</td>
					<td>${acName}</td>
					<td>${acInt}</td>
					<td>${acMon}</td>
					<td>${acBudget}</td>
					<td>${acProp}</td> 
					<td>${company.cpName}</td>
				</tr>
			</s:iterator>
		</table>
	</s:else> 
</body>

</html>
