<%-- 
    Document   : ActionDistrict
    Created on : Jul 24, 2017, 8:19:56 AM
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
        <select name="dist" id="dist">
         <%
                            String sel="select * from tbl_district where state_id='"+request.getParameter("x")+"'";
                            ResultSet rsq=con.select(sel);
                            while(rsq.next())
                            {
                            %>
                            <option value="<%=rsq.getString("district_id")%>"><%=rsq.getString("district_name")%></option>
                            <%
                            }%>
                        </select>
    </body>
</html>
