<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta charset="UTF-8">
 
<c:set value="${pageContext.request.contextPath}" var="yz" />
<title>友赞校园</title>
<!-- 下面是前端页面的样式 -->
<link rel="stylesheet" type="text/css" href="${yz}/css/mianWindow.css" />
<link rel="stylesheet" type="text/css" href="${yz }/css/style.css" />
<script type="text/javascript" src="${yz}/js/mainWindow.js"></script>
<script type="text/javascript" src="${yz}/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${yz}/js/slider.js"></script>
<script type="text/javascript">

function MM_jumpMenu(targ,selObj,restore){ 
	eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'"); 
		if (restore) 
			selObj.selectedIndex=0;
}

$(function(){

	$('#demo01').flexslider({
		animation: "slide",
		direction:"horizontal",
		easing:"swing"
	});
});
</script>
</head>


<body>

	<div class="head">
		<div class="header"></div>
		<img class="picture" style="margin-left:10px;"
			src="${yz}/img/tubiao.png" /> 
			<a class="home" style="margin-left:20px;" href="index.jsp">首页</a> 
			<a class="home"	style="margin-left:21px;" href="act-list">活动展示</a> 
			<a class="home" style="margin-left:22px;" href="#">赞助展示</a> 
			<a class="home" style="margin-left:23px;" href="${yz}/foreground/discuss.jsp">讨论区</a> 
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
	<div id="demo01" class="flexslider">
  <ul class="slides">
    <li>
      <div class="img"><img src="${yz }/img/zhutupian.JPG" width="100%" height="450px"/></div>
    </li>
    <li>
      <div class="img"><img src="${yz }/img/zhuye2.jpg" width="100%" height="450px"/></div>
    </li>
    <li>
      <div class="img"><img src="${yz }/img/zhuye1.jpg" width="100%" height="450px"/></div>
    </li>
    <li>
      <div class="img"><img src="${yz }/img/zhuye4.jpg" width="100%" height="450px"/></div>
    </li>
  </ul>
</div>
	<!-- 赞助商 -->
	<c:forEach items="${applicationScope.cpList}" var="list">
		<div class="head1">
			<p>
			<h1 style="margin-top: 23px">赞助商</h1>
			</p>
			<div class="sponsor1"
				onclick="window.location.href='cp-getById?cpNum=${list[0].cpNum}';return false">
				<center>
					<b><p class="front1">${list[0].cpName}</p></b>
				</center>
				<img class="photo1" src="${yz}/img/zgyd.png" />
			</div>

			<div class="sponsor2" onMouseMove="big(4)" onMouseOut="small(4)"
			onclick="window.location.href='cp-getById?cpNum=${list[3].cpNum}';return false">
				<center>
					<b><p id="big4" class="front2">${list[3].cpName}</p></b>
				</center>
				<center>
					<b><p id="bi4" class="front4" href="">详细信息</p></b>
				</center>
				<img class="photo2" src="${yz }/img/dd.jpg" />
			</div>
			<div class="sponsor3" onMouseMove="big(5)" onMouseOut="small(5)"
			onclick="window.location.href='cp-getById?cpNum=${list[1].cpNum}';return false">
				<center>
					<b><p id="big5" class="front2">${list[1].cpName}</p></b>
				</center>
				<center>
					<b><p id="bi5" class="front4">详细信息</p></b>
				</center>
				<img class="photo2" src="${yz}/img/zglt.jpg" />
			</div>
			<div class="sponsor4" onMouseMove="big(6)" onMouseOut="small(6)"
			onclick="window.location.href='cp-getById?cpNum=${list[2].cpNum}';return false">
				<center>
					<b><p id="big6" class="front2">${list[2].cpName}</p></b>
				</center>
				<center>
					<b><p id="bi6" class="front4">详细信息</p></b>
				</center>
				<img class="photo2" src="${yz }/img/zgdx.jpg" />
			</div>

		</div>
	</c:forEach>
	
	
<!-- 赞助活动 -->
	<c:forEach items="${applicationScope.actList}" var="list">
		<div class="head3" >
			<p>
			<h1 style="margin-top: 20px;">社团活动</h1>
			</p>
			<div class="action1" onclick="window.location.href='act-getById?acNum=${list[0].acNum}';return false">
				<center>
					<b><p class="front1" target="_blank">${list[0].acName}</p></b>
				</center>
				<img class="photo1" src="${yz}/img/ydh.jpg" />
			</div>
			
			<div class="action2" onMouseMove="big(1)" onMouseOut="small(1)"
			onclick="window.location.href='act-getById?acNum=${list[2].acNum}';return false">
				<center>
					<b><p id="big1" class="front2">${list[2].acName}</p></b>
				</center>
				<center>
					<b><p id="bi1" class="front4">申请</p></b>
				</center>
				<img class="photo2" src="${yz}/img/hb.jpg" />
			</div>
			<div class="action3" onMouseMove="big(2)" onMouseOut="small(2)"
			onclick="window.location.href='act-getById?acNum=${list[1].acNum}';return false">
				<center>
					<b><p id="big2" class="front2">${list[1].acName }</p></b>
				</center>
				<center>
					<b><p id="bi2" class="front4">申请</p></b>
				</center>
				<img class="photo2" src="${yz}/img/ych.jpg" />
			</div>
			<div class="action4" onMouseMove="big(3)" onMouseOut="small(3)"
			onclick="window.location.href='act-getById?acNum=${list[3].acNum}';return false">
				<center>
					<b><p id="big3" class="front2">${list[3].acName }</p></b>
				</center>
				<center>
					<b><p id="bi3" class="front4">申请</p></b>
				</center>
				<img class="photo2" src="${yz}/img/qwydh.jpg" />
			</div>
		</div>
	</c:forEach>


	<!-- <div class="head4">6666</div> -->

	<div style="margin-top:1530px;">
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