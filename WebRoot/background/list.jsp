<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'com-list.jsp' starting page</title>
    
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
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>	 -->

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<SCRIPT type="text/javascript">
	function del() {
		var result = confirm("你确定删除吗？");
		if (result) {
			return true;
		} else {
			return false;
		}
	}
  </head>
  
  <body>
<h4 style="text-align: center;">公司信息列表</h4>
		<table class="table">
			<tr>
				<td>公司编号</td>
				<td>公司图标</td>
				<td>名称</td>
				<td>公司联系人姓名</td>
				<td>公司联系电话</td>
				<td>公司联系邮箱</td>
				<td>公司地址</td>
				<td>公司性质</td>
				<td>公司简介</td>
				<td class="warning">审核结果</td>
				<td class="warning">删除信息</td>
				<td class="warning">审核</td>
			</tr>
 <%		
		String driver = "com.mysql.jdbc.Driver";    
        String url = "jdbc:mysql://127.0.0.1:3306/yzxy";    
        String use = "root";     
        String password = "123456";    
        Class.forName(driver);
        Connection conn= DriverManager.getConnection(url,use,password);
			int intPageSize;
			int intRowCount;
			int intPageCount;
			int intPage;
			String strPage;
			int i;
			intPageSize = 10;
			strPage = request.getParameter("page");
			if(strPage==null){	
				intPage =1;
			}else{
				intPage = java.lang.Integer.parseInt(strPage);
				if(intPage<1) intPage = 1;
				}
			Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			String sql = "select * from Company";
			ResultSet rs=stmt.executeQuery(sql);
			rs.last();
			intRowCount = rs.getRow();
			intPageCount = (intRowCount+intPageSize-1)/intPageSize;

			if(intPage>intPageCount)
					intPage =intPageCount;
			if(intPageCount>0){
					rs.absolute((intPage-1)*intPageSize+1);
					i = 0;
			while(i<intPageSize && !rs.isAfterLast()){
			%>		
					<td><%=rs.getString("cpID")%></td>
					<td><img src="<%=rs.getString("cpIcon")%>"></td>
					<td><%=rs.getString("cpName")%></td>
					<td><%=rs.getString("cpContact")%></td>
					<td><%=rs.getString("cpPhone")%></td>
					<td><%=rs.getString("cpEmail")%></td>
					<td><%=rs.getString("cpAddress")%></td>
					<td><%=rs.getString("cpPro")%></td>
					<td><%=rs.getString("cpInt")%></td>
					<td><%=rs.getString("cpAudit")%></td>	
<%-- 					<td>
						<a href="com-delete?id=<%=rs.getString("cpID")%>" class="del" >Delete</a>
					</td>
					<td>
						<a href="com-update?id=<%=rs.getString("cpID")%>">通过</a>
					</td> --%>
				</tr>
			<%
			rs.next();
			i++;
			}
		}
		%>
		</table>
		<div align="center">
		第<%=intPage%>页 共<%=intPageCount%>页
		<%
			if(intPage<intPageCount){
		%>
		<a href="Page.jsp?page=<%=intPage+1%>">下一页</a>
		<%
		  }
			if(intPage>1){
		%>
		<a href="Page.jsp?page=<%=intPage-1%>">上一页</a>
		<%
		}
			rs.close();
			stmt.close();
			conn.close();
		%>
		</div>
  </body> 
</html>
