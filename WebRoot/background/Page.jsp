<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title>JSP page</title>
	</head>
	<body>
		分页显示记录内容
		<hr>
		<table border="1" bgcolor="cccfff" align="center">
		  <tr>
			<th>账号</th>
			<th>密码</th>
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
			String sql = "select * from amd";
			ResultSet rs=stmt.executeQuery(sql);
			rs.last();
			intRowCount = rs.getRow();
			intPageCount = (intRowCount+intPageSize-1)/intPageSize;

			if(intPage>intPageCount)
					intPage =intPageCount;
			if(intPageCount>0){
					rs.absolute((intPage-1)*intPageSize+1);
					i = 0;
			while(i<intPageSize && !rs.isAfterLast()){%>
		<tr>
			<td><%=rs.getString("id")%></td>
			<td><%=rs.getString("username")%></td>
			<td><%=rs.getString("password")%></td>
		</tr>
		<%
			rs.next();
			i++;
			}
		}
		%>
	</table>
	<hr>
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
