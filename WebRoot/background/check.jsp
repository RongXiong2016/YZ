    <%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>  
    <%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>  
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
    <html>  
      <head>  
        <base href="<%=basePath%>">  
        <title>My JSP 'check.jsp' starting page</title>  
        <meta http-equiv="pragma" content="no-cache">  
        <meta http-equiv="cache-control" content="no-cache">  
        <meta http-equiv="expires" content="0">      
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
        <meta http-equiv="description" content="This is my page">  
        <!--  
        <link rel="stylesheet" type="text/css" href="styles.css">  
        -->  
     </head>  
      <body>  
    <%  
       request.setCharacterEncoding("utf-8");  
       String users=request.getParameter("username1");  
       String pass=request.getParameter("password1");  
       boolean flag=false;  
       PreparedStatement sql=null;    
       ResultSet rs=null;  
       Connection conn=null;  
    %>  
      
    <%   
        String driver = "com.mysql.jdbc.Driver";    
        String url = "jdbc:mysql://127.0.0.1:3306/yzxy";    
        String use = "root";     
        String password = "123456";    
        Class.forName(driver);    
        conn= DriverManager.getConnection(url,use,password);    
        sql =conn.prepareStatement("select * from admin where adminName=? and adminPassword=?"); 
        sql.setString(1,users);  
        sql.setString(2,pass);  
        rs=sql.executeQuery();
        if (rs.next()) {    
        flag=true;  
         }  
       rs.close();  
       sql.close();  
       conn.close();  
      %>  
    <!-- 判断是否是正确的登录用户 -->  
    <% if (flag==true){ %>  
    <jsp:forward page="main.jsp"/>  
    <%}   
    else  
    if (flag==false){  
    %>  
    <jsp:forward page="login.jsp"/>  
    <%} %>  
    </body>  
    </html>  
