<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<c:set value="${pageContext.request.contextPath}" var="yz" />
<title>活动详细信息</title>
<link rel="stylesheet" type="text/css" href="${yz}/css/mianWindow.css" />
<script language=JavaScript>
		function MM_jumpMenu(targ,selObj,restore){ 
			eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'"); 
	 		if (restore) 
	 			selObj.selectedIndex=0;
	 }
</script>
 
</head>

<div class="head">
			<div class="header">
			</div>
			<img class="picture" style="margin-left:10px;" src="${yz }/img/tubiao.png" />
			<a class="home" style="margin-left:20px;" href="index.jsp">首页</a>
			<a class="home" style="margin-left:21px;" href="actionChoose(c).html">活动展示</a>
			<a class="home" style="margin-left:22px;" href="zanzhuChoose(c).html">赞助展示</a>
			<a class="home" style="margin-left:23px;" href="discuss(c).html">讨论区</a>
			<a class="home" style="margin-left:24px;" href="">关于我们</a>
			
			<c:choose>
			<c:when test="${sessionScope.student==null}">  
        <a class="home" style="margin-left:650px;"
				href="foreground/login.jsp" target="_blank">登陆/注册</a>
    	</c:when>
			<c:otherwise>  
     			<select onchange="MM_jumpMenu('parent',this,0)"> 
					<option value="">username</option>
					<option value="personalInformation（c）.html">公司信息</option>
					<option value="">联系我们</option>
					<option value="login.html">退出</option>
				</select>
    	</c:otherwise>
		</c:choose>
					
		</div>		
	<div class="action">
	<h2><center>推荐优秀活动</center></h2>
		<dl>
			<dd><a class="home2" href="#">校园安全月活动</a></dd>
			<dd><a class="home2" href="#">下沙高校联谊活动</a></dd>
			<dd><a class="home2" href="#">管理学院十佳大学生评选</a></dd>
			<dd><a class="home2" href="#">一二九大合唱</a></dd>
			<dd><a class="home2" href="#">杭电女生节活动</a></dd>
		</dl>
	</div>
	<img class="huodong" src="img/u=530728121,1477121152&fm=23&gp=0.jpg" />
	<div class="information">
	<h1><center>活动信息</center></h1>
	<s:iterator value="#request.activityById">
	<table cellpadding="20" cellspacing="10" id="table">
		<tr>
			<td>活动名称:</td>
			<td>${acName }</td>
		</tr>
		<tr>
			<td>活动性质：</td>
			<td>${acProp }</td>
		</tr>
		<tr>
			<td>活动编号：</td> 
			<td>${acNum}</td>
		</tr>
		<tr>
			<td>举办社团编号：</td>
			<td>${community.cmNum }</td>
		</tr>
		<tr>
			<td>活动日期：</td>
			<td>
			<fmt:formatDate value='${acDay}' pattern='yyyy-MM-dd' />
			</td>
		</tr>
		<tr>
			<td>活动预算：</td>
			<td>${acBudget }</td>
		</tr>
		<tr>
			<td>活动简介：</td>
			<td><p>${acInt}</p></td>
		</tr>
	</table>
	</s:iterator>
	</div>
<div style="margin-top:800px">
	<tr style="text-align: center">
<hr />
	<center>
   <p style="font-size: 15px" style="text-align:center"> Copyright ? 2016 Apple Inc. <br />保留所有权利。隐私政策 使用条款 销售政策 法律信息 网站地图</p>
   </center>
	</div>
</body>
</html>
