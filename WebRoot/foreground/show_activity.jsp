<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<c:set value="${pageContext.request.contextPath}" var="yz" />
<link rel="stylesheet" type="text/css" href="${yz}/css/mianWindow.css" />
<title>友赞校园</title>
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
		<img class="picture" style="margin-left:10px;" src="../img/tubiao.png" /> <a
			class="home" style="margin-left:20px;" href="../index.jsp">首页</a>
		<a class="home" style="margin-left:21px;" href="show_activity.jsp">活动展示</a>
		<a class="home" style="margin-left:22px;" href="zanzhuChoose(c).html">赞助展示</a>
		<a class="home" style="margin-left:23px;" href="discuss.jsp">讨论区</a>
		<a class="home" style="margin-left:24px;" href="">关于我们</a> <select
			onchange="MM_jumpMenu('parent',this,0)">
			<option value="">username</option>
			<option value="personalInformation（c）.html">公司信息</option>
			<option value="">联系我们</option>
			<option value="login.html">退出</option>
		</select>
	</div>
	<div class="body1">
		<h2>活动库</h2>
		<table cellpadding="10px">
			<tr>
				<td>活动性质：</td>
				<td><a href="act-queryMutlCase?acProp=慈善活动&acBudget=0&cmSchool=杭州电子科技大学" style="text-decoration:none">慈善活动</a></td>
				<td><a href="act-queryMutlCase?acProp=演唱会" style="text-decoration:none">演唱会</a></td>
				<td><a href="act-queryMutlCase?acProp=学校&acBudget=0" style="text-decoration:none">学校活动</a></td>
				<td><a href="act-queryMutlCase?acProp=商业活动" style="text-decoration:none">商业活动</a></td>
				<td><a href="act-queryMutlCase?acProp=体育活动" style="text-decoration:none">体育活动</a></td>
				<td><a href="act-queryMutlCase?acProp=商业演出" style="text-decoration:none">商业演出</a></td>
			</tr>
			<br />
			<tr>
				<td>活动预算：</td>
				<td><a href="act-queryMutlCase?acBudget=0" style="text-decoration:none">0-1000</a></td>
				<td><a href="" style="text-decoration:none">1000-2000</a></td>
				<td><a href="" style="text-decoration:none">2000-3000</a></td>
				<td><a href="" style="text-decoration:none">3000-4000</a></td>
				<td><a href="" style="text-decoration:none">4000-5000</a></td>
				<td><a href="" style="text-decoration:none">5000以上</a></td>
			</tr>
			<tr>
				<td>所在学校：</td>
				<td><a href="act-queryMutlCase?cmSchool=杭州电子科技大学" style="text-decoration:none">杭州电子科技大学</a></td>
				<td><a href="" style="text-decoration:none">浙江理工大学</a></td>
				<td><a href="" style="text-decoration:none">浙江大学</a></td>
				<td><a href="" style="text-decoration:none">杭州师范大学</a></td>
				<td><a href="" style="text-decoration:none">浙江传媒学院</a></td>
				<td><a href="" style="text-decoration:none">浙江师范大学</a></td>
			</tr>
		</table>
	</div>
	<div class="body2">
		<p>
		<h2>
			<a style="text-decoration:none" href="show_activity_detail.jsp">关于创新大赛的活动</a>
		</h2>
		</p>

		<s:iterator value="#request.activities">
			<div class="div" onclick="location.href='#'" style="cursor:pointer">
				<dl>
					<dd>
						<p>
						<h2>
							<a style="text-decoration:none" href="">${acName}</a>
						</h2>
						</p>
					</dd>
					<dd>活动性质：${acProp}</dd>
					<dd>活动预算：${acBudget }</dd>
				</dl>
			</div>
		</s:iterator>


	</div>
	<div class="body3">
		<h2>
			<center>推荐优秀活动</center>
		</h2>
		<dl>
			<dd>
				<a class="home2" href="">活动</a>
			</dd>
			<dd>
				<a class="home2" href="">活动</a>
			</dd>
			<dd>
				<a class="home2" href="">活动</a>
			</dd>
			<dd>
				<a class="home2" href="">活动</a>
			</dd>
			<dd>
				<a class="home2" href="">活动</a>
			</dd>
		</dl>
	</div>
	<img class="body5" src="../img/45758PIC8Du.jpg!qtwebp226" />
	</div>
	<div class="body4">
		<a style="text-decoration:none">1</a> <a
			style="margin-left:20px; text-decoration:none" href="">2</a> <a
			style="margin-left:40px; text-decoration:none" href="">3</a> <a
			style="margin-left:60px; text-decoration:none" href="">下一页</a>
	</div>
	<div style="margin-top:1650px">
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
