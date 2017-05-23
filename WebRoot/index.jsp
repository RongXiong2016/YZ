<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/mianWindow.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/mainWindow.js"></script>
<title>友赞校园</title>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript">
	$(function() {

		$('#demo01').flexslider({
			animation : "slide",
			direction : "horizontal",
			easing : "swing"
		});
	});
</script>
</head>

<body>
	<div class="head">
		<div class="header"></div>
		<img class="picture" style="margin-left:10px;" src="img/tubiao.png" />
		<a class="home" style="margin-left:20px;" href="index.html">首页</a>
		<a class="home" style="margin-left:21px;" href="foreground/show_activity.jsp">活动展示</a>
		<a class="home" style="margin-left:22px;" href="zanzhuChoose(w).html">赞助展示</a>
		<a class="home" style="margin-left:23px;" href="foreground/discuss.jsp">讨论区</a>
		<a class="home" style="margin-left:24px;" href="">关于我们</a> <a
			class="home" style="margin-left:650px;" href="login.html">登陆/注册</a>
	</div>
	<!--滚动图片-->
	<div id="demo01" class="flexslider">
		<ul class="slides">
			<li>
				<div class="img">
					<img src="img/zhutupian.JPG" width="100%" height="450px" />
				</div>
			</li>
			<li>
				<div class="img">
					<img src="img/zhuye2.jpg" width="100%" height="450px" />
				</div>
			</li>
			<li>
				<div class="img">
					<img src="img/zhuye1.jpg" width="100%" height="450px" />
				</div>
			</li>
			<li>
				<div class="img">
					<img src="img/zhuye4.jpg" width="100%" height="450px" />
				</div>
			</li>
		</ul>
	</div>
	<!--跟随广告-->
	<div id="ShowAD" style="position:absolute;z-index:100;">
		<div
			style="width:135px;height:18px;font-size:14px;font-weight:bold;text-align:left;cursor:hand;text-align:right;"
			onClick="closead();">
			<font color="ff0000">关闭</font>
		</div>
		<img src="img/ad1.jpg" style="width:100%; height:50%" />
	</div>
	<script language="javascript">
		var bodyfrm = (document.compatMode.toLowerCase() == "css1compat") ? document.documentElement : document.body;
		var adst = document.getElementById("ShowAD").style;
		adst.top = (bodyfrm.clientHeight - 530 - 22) + "px";
		adst.left = (bodyfrm.clientWidth - 155) + "px";
		function moveR() {
			adst.top = (bodyfrm.scrollTop + bodyfrm.clientHeight - 530 - 22) + "px";
			adst.left = (bodyfrm.scrollLeft + bodyfrm.clientWidth - 155) + "px";
		}
		setInterval("moveR();", 80);
		function closead() {
			adst.display = 'none';
		}
	</script>

	<div class="head1">
		<p>
		<h1>赞助商</h1>
		</p>
		<div class="sponsor1">
			<center>
				<b>
					<p class="front1">关于赞助商</p>
				</b>
			</center>
			<img class="photo1" src="img/zanzhu1.jpg" />
		</div>
		<div class="sponsor2" onMouseMove="big(4)" onMouseOut="small(4)">
			<center>
				<b>
					<p id="big4" class="front2">赞助商1</p>
				</b>
			</center>
			<center>
				<a style="text-decoration:none" href=""><b>
						<p id="bi4" class="front4">详细信息</p>
				</b></a>
			</center>
			<img class="photo2" src="img/zanzhu2.jpg" />
		</div>
		<div class="sponsor3" onMouseMove="big(5)" onMouseOut="small(5)">
			<center>
				<b>
					<p id="big5" class="front2">赞助商2</p>
				</b>
			</center>
			<center>
				<a style="text-decoration:none" href=""><b>
						<p id="bi5" class="front4">详细信息</p>
				</b></a>
			</center>
			<img class="photo2" src="img/zanzhu3.jpg" />
		</div>
		<div class="sponsor4" onMouseMove="big(6)" onMouseOut="small(6)">
			<center>
				<b>
					<p id="big6" class="front2">赞助商3</p>
				</b>
			</center>
			<center>
				<a style="text-decoration:none" href=""><b>
						<p id="bi6" class="front4">详细信息</p>
				</b></a>
			</center>
			<img class="photo2" src="img/zanzhu4.jpg" />
		</div>
	</div>

	<div class="head3">
		<p>
		<h1>社团活动</h1>
		</p>
		<div class="action1">
			<center>
				<b>
					<p class="front1">关于社团活动</p>
				</b>
			</center>
			<img class="photo1" src="img/st1.jpg" />
		</div>
		<div class="action2" onMouseMove="big(1)" onMouseOut="small(1)">
			<center>
				<b>
					<p id="big1" class="front2">社团活动1</p>
				</b>
			</center>
			<center>
				<a style="text-decoration:none" href=""><b>
						<p id="bi1" class="front4">详细信息</p>
				</b></a>
			</center>
			<img class="photo2" src="img/st2.jpg" />
		</div>
		<div class="action3" onMouseMove="big(2)" onMouseOut="small(2)">
			<center>
				<b>
					<p id="big2" class="front2">社团活动2</p>
				</b>
			</center>
			<center>
				<a style="text-decoration:none" href=""><b>
						<p id="bi2" class="front4">详细信息</p>
				</b></a>
			</center>
			<img class="photo2" src="img/st3.jpg" />
		</div>
		<div class="action4" onMouseMove="big(3)" onMouseOut="small(3)">
			<center>
				<b>
					<p id="big3" class="front2">社团活动3</p>
				</b>
			</center>
			<center>
				<a style="text-decoration:none" href=""><b>
						<p id="bi3" class="front4">详细信息</p>
				</b></a>
			</center>
			<img class="photo2" src="img/st4.jpg" />
		</div>
	</div>

	<div style="margin-top:1530px">
		<tr style="text-align: center">
			<hr />
			<center>
				<p style="font-size: 15px" style="text-align:center">
					Copyright ? 2016 Apple Inc. <br /> 保留所有权利。隐私政策 使用条款 销售政策 法律信息 网站地图
				</p>
			</center>
	</div>
</body>
</html>
