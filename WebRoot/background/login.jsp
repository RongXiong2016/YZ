<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>友赞校园</title>
<link rel="stylesheet" type="text/css" href="css/login.css" />
</head>
<body>
	<div class="head">
		<div class="header"></div>
	</div>
	<div class="login">
		<form action="check.jsp" method="post">
		<h3>账户登陆</h3>
		<input placeholder="请输入账号" type="text" name="username1"/>
		<input placeholder="请输入密码" type="password" name="password1"/>
		<input class='sub'  type="submit" value="登录"/> <input type="reset" value="重置"/>
		</form>
	</div>
	<div class="maintitle">
		<div class="picture">
			<img src="img/1.png" width="150px" height="150px">
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