
<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--  
        <link rel="stylesheet" type="text/css" href="styles.css">  
        -->

<!-- <link
	href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->

<link rel="stylesheet" href="background/bootstrap/css/bootstrap.min.css">
<script src="background/bootstrap/jquery.min.js"></script>
<script src="background/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<script language="javascript">
	function isValid(form) {
		if (form.adminName.value == "") {
			alert("用户名不能为空");
			return false;
		}
		if (form.adminPassword.value != form.adminPassword2.value) {
			alert("两次输入的密码不同！");
			return false;
		} else if (form.adminPassword.value == "") {
			alert("用户密码不能为空！");
			return false;
		}
		else return true;
	}
</script>

</head>

<body>
	<center>
		<body>
			<h2>管理员注册</h2>
			<br><br>
			<form action="admin-save" method="post"
				onSubmit="return isValid(this);" class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-5 control-label">用户名:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" name="adminName" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-5 control-label">输入密码:</label>
					<div class="col-sm-3"> 
					<input type="text" class="form-control" name="adminPassword" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-5 control-label">再次确认密码:</label>
					<div class="col-sm-3"> 
					<input type="text" class="form-control" name="adminPassword2" />
					</div>
				</div>
				<div class="form-group">
					<input type="submit" value="注册" /> <input type="reset" value="重置" />
				</div>
			</form>
	</center>
	<br>
</body>
</html>
