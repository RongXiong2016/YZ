<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- <link
	href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->


<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
#main-nav {
	margin-left: 1px;
}

#main-nav.nav-tabs.nav-stacked>li>a {
	padding: 10px 8px;
	font-size: 12px;
	font-weight: 600;
	color: #4A515B;
	background: #E9E9E9;
	background: -moz-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #FAFAFA),
		color-stop(100%, #E9E9E9));
	background: -webkit-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	background: -o-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	background: -ms-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	background: linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA',
		endColorstr='#E9E9E9');
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA', endColorstr='#E9E9E9')";
	border: 1px solid #D5D5D5;
	border-radius: 4px;
}

#main-nav.nav-tabs.nav-stacked>li>a>span {
	color: #4A515B;
}

#main-nav.nav-tabs.nav-stacked>li.active>a, #main-nav.nav-tabs.nav-stacked>li>a:hover
	{
	color: #FFF;
	background: #3C4049;
	background: -moz-linear-gradient(top, #4A515B 0%, #3C4049 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #4A515B),
		color-stop(100%, #3C4049));
	background: -webkit-linear-gradient(top, #4A515B 0%, #3C4049 100%);
	background: -o-linear-gradient(top, #4A515B 0%, #3C4049 100%);
	background: -ms-linear-gradient(top, #4A515B 0%, #3C4049 100%);
	background: linear-gradient(top, #4A515B 0%, #3C4049 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#4A515B',
		endColorstr='#3C4049');
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr='#4A515B', endColorstr='#3C4049')";
	border-color: #2B2E33;
}

#main-nav.nav-tabs.nav-stacked>li.active>a, #main-nav.nav-tabs.nav-stacked>li>a:hover>span
	{
	color: #FFF;
}

#main-nav.nav-tabs.nav-stacked>li {
	margin-bottom: 4px;
}
/*定义二级菜单样式*/
.secondmenu a {
	font-size: 10px;
	color: #4A515B;
	text-align: center;
}

.thirdmenu a {
	font-size: 10px;
	color: #4A515B;
	text-align: center;
}

.navbar-static-top {
	background-color: #212121;
	margin-bottom: 5px;
}

.navbar-brand {
	background: url('') no-repeat 10px 8px;
	display: inline-block;
	vertical-align: middle;
	padding-left: 50px;
	color: #fff;
}
</style>
</head>
<body>
	<div class="navbar navbar-duomi navbar-static-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<div class="navbar-brand" id="logo">功能菜单</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
					<li><a href="#systemSetting" class="nav-header collapsed"
						data-toggle="collapse"> <i class="glyphicon glyphicon-cog"></i>
							管理员信息 <span class="pull-right glyphicon glyphicon-chevron-down"></span>
					</a>
						<ul id="systemSetting" class="nav nav-list collapse secondmenu"
							style="height: 0px;">
							<li><a href="admin-input" target="right"><i
									class="glyphicon glyphicon-user"></i>管理员信息增加</a></li>
							<li><a href="admin-list" target="right"><i
									class="glyphicon glyphicon-user"></i>管理员信息查询</a></li>
						</ul></li>
					<li><a href="#systemSetting2" class="nav-header collapsed"
						data-toggle="collapse"> <i class="glyphicon glyphicon-th-list"></i>
							数据库管理 <span class="pull-right glyphicon glyphicon-chevron-down"></span>
					</a>
						<ul id="systemSetting2" class="nav nav-list collapse thirdmenu"
							style="height: 0px;">
							<li><a href="cp-list" target="right">
								<i class="glyphicon glyphicon-folder-open"></i>&nbsp;&nbsp;企业信息表</a></li>
							<li><a href="com-list" target="right">
								<i class="glyphicon glyphicon-folder-open"></i>&nbsp;&nbsp;社团信息表</a></li>
							<li><a href="act-list"  target="right">
								<i class="glyphicon glyphicon-folder-open"></i>&nbsp;&nbsp;活动信息表</a></li>		
						</ul>
					</li>
					<!-- <li><a href="#systemSetting3" class="nav-header collapsed"
						data-toggle="collapse"> <i class="glyphicon glyphicon-th-list"></i>
							信息审核管理 <span class="pull-right glyphicon glyphicon-chevron-down"></span>
					</a>
						<ul id="systemSetting3" class="nav nav-list collapse thirdmenu"
							style="height: 0px;">
							<li><a href="check-student.jsp" target="right">
								<i class="glyphicon glyphicon-folder-open"></i>&nbsp;&nbsp;学生信息审核表</a></li>
						</ul>
					</li> -->
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
