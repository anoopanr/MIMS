<%-- 
    Document   : ActionUsernameAvaiabilty
    Created on : Jul 24, 2017, 7:45:58 AM
    Author     : Anoop
--%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String sel="select * from tbl_officer where officer_username='"+request.getParameter("uname")+"'";
        System.out.print(sel);
        ResultSet rs=con.select(sel);
        if(rs.next())
        {%>
        <label style="color: Red ">Username Already Exist!!!</label>
        <%}
         else
        {
        
        %>
         <label style="color: green ">Username Accepted</label>
        
        
       <%}%>
    </body>
</html>
