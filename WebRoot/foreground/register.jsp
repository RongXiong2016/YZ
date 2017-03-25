<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注册页面</title>
    <link rel="stylesheet" type="text/css" href="../css/reginster.css"/>
    <script type="text/javascript"></script>
  </head>
  	
 <body>
	<div class="bodyer">
		<h1>账户注册</h1>
		<form>
		<h3 class="h3">账号：<input type="text" placeholder="请输入账号" /></h3><br />
		<h3 class="h3">性质：<input type="radio" style="margin-left:15px" name="zhuce" value="公司" />公司
							<input type="radio" style="margin-left:60px" name="zhuce" value="社团" />社团</h3><br />
		<h3 class="th3">手机号：<input type="text" placeholder="请输入手机号" /></h3><br />
		<h3 class="h3">密码：<input type="password" placeholder="请输入密码" /></h3><br />
		<h3 class="thh3">确认密码：<input type="password" placeholder="请再次输入密码以确认" /></h3><br />
		<h3 class="th3">验证码：<input type="text" placeholder="请输入验证码" /></h3><br />
		<input class='sub'  type="button" onclick="reminded()" value="注册"/>
		</form>
	</div>
		<div class="bottom">
	<tr style="text-align: center">
<hr />
	<center>
   <p style="font-size: 15px" style="text-align:center"> Copyright © 2016 Apple Inc. <br />保留所有权利。隐私政策 使用条款 销售政策 法律信息 网站地图</p>
   </center>
	</div>
<script src="js/something.js">
</script>
</body>
</html>

