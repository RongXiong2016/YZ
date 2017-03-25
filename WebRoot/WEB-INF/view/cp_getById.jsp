<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>赞助信息详情</title>
<c:set value="${pageContext.request.contextPath}" var="yz" />
<link rel="stylesheet" type="text/css" href="${yz}/css/mianWindow.css" />
<script language=JavaScript>
	function MM_jumpMenu(targ, selObj, restore) {
		eval(targ + ".location='" + selObj.options[selObj.selectedIndex].value + "'");
		if (restore)
			selObj.selectedIndex = 0;
	}
</script>

</head>



<body>
	<div class="head">
		<div class="header"></div>
		<img class="picture" style="margin-left:10px;" src="img/图标.png" /> <a
			class="home" style="margin-left:20px;" href="index.jsp">首页</a>
		<a class="home" style="margin-left:21px;" href="actionChoose(c).html">活动展示</a>
		<a class="home" style="margin-left:22px;" href="zanzhuChoose(c).html">赞助展示</a>
		<a class="home" style="margin-left:23px;" href="discuss(c).html">讨论区</a>
		<a class="home" style="margin-left:24px;" href="">关于我们</a> <select
			onchange="MM_jumpMenu('parent',this,0)">
			<option value="">username</option>
			<option value="personalInformation（s）.html">公司信息</option>
			<option value="">联系我们</option>
			<option value="login.html">退出</option>
		</select>
	</div>
	<div class="action">
		<h2>
			<center>推荐优秀赞助</center>
		</h2>
		<dl>
			<dd style="margin-top:10px">
				<a class="home2" href="">赞助</a>
			</dd>
			<dd style="margin-top:10px">
				<a class="home2" href="">赞助</a>
			</dd>
			<dd style="margin-top:10px">
				<a class="home2" href="">赞助</a>
			</dd>
			<dd style="margin-top:10px">
				<a class="home2" href="">赞助</a>
			</dd>
			<dd style="margin-top:10px">
				<a class="home2" href="">赞助</a>
			</dd>
		</dl>
	</div>
	<img class="huodong" src="img/57afef90cd7e2.jpg!qtwebp226" />
	<div class="information">
		<h1>
			<center>赞助信息</center>
		</h1>
		<s:iterator value="#request.cmpanyById">
		<table cellpadding="20" cellspacing="10">
			<tr>
				<td>赞助名称:</td>
				<td>${cpName}</td>
			</tr>
			<!-- <tr>
				<td>赞助学校：</td>
				<td></td>
			</tr> -->
			<tr>
				<td>赞助金额：</td>
				<td>${cpBudget}</td>
			</tr>
			<tr>
				<td>赞助日期：</td>
				<td>2016-03-03</td>
			</tr>
			<tr>
				<td>赞助企业编号：</td>
				<td>${cpNum}</td>
			</tr>
			<tr>
				<td>赞助方案：</td>
				<td></td>
			</tr>
		</table>
		</s:iterator>
	</div>
	<div style="margin-top:800px">
		<tr style="text-align: center">
			<hr />
			<center>
				<p style="font-size: 15px" style="text-align:center">
					Copyright ? 2016 Apple Inc. <br />保留所有权利。隐私政策 使用条款 销售政策 法律信息 网站地图
				</p>
			</center>
	</div>
</body>

</html>
