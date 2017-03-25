<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!DOCTYPE html>
<html lang="en">
<head>
<title>友赞校园</title>
<link rel="stylesheet" type="text/css" href="../css/login.css" />
</head>
<body>
	<div class="head">
		<div class="header"></div>
		<a class="home" style="margin-left:20px;" href="/YZ/index.jsp">首页</a>
		<a class="home" style="margin-left:30px;" href="">关于我们</a>
	</div>
	<div class="login">
		<h3>账户登陆</h3>
		<form action="stu-login" method="post">
			<input name="stuId" placeholder="请输入学号" type="text"/> 
			<input name="stuName" placeholder="请输入姓名"	 type="text"/> 
			<input class='sub' type="submit" value="登录" />
		<a id="zhuce" style="text-decoration:none" href="register.html">注册</a>
		</form>

	</div>
	<div class="maintitle">
		<div class="picture">
			<img src="../img/tubiao.png" width="150px" height="150px">
		</div>
		<h1>
			友 赞 校 园<br />欢 迎 您 使 用
		</h1>
	</div>
	<div class="bottom">
		<tr style="text-align: center">
			<hr />
			<center>
				<p style="font-size: 15px" style="text-align:center">
					Copyright © 2016 Apple Inc. <br />保留所有权利。隐私政策 使用条款 销售政策 法律信息 网站地图
				</p>
			</center>
	</div>
</body>
</html>
