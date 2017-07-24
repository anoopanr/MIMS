<%-- 
    Document   : State
    Created on : Mar 9, 2017, 2:51:26 PM
    Author     : CKC
--%>
<%@include file="Header.jsp" %>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="db.ConnectionClass"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
      
            <table class="table table-hover"  >
                                <tr><td>Department</td><td><input type="text" name="txtdepartment" required="" placeholder="Enter Department Name"></td></tr>
                                <tr><td>Department Code</td><td><input type="text" name="txtdepartmentcode" required="" placeholder="Enter Department Code"></td></tr>
        <%
            String sub=request.getParameter("sub");
            if(sub!=null)
            {
              String deprtment=request.getParameter("txtdepartment"); 
           String deprtmentcode=request.getParameter("txtdepartmentcode"); 
              String ins="insert into tbl_department (dept_name,dept_code) values ('"+deprtment+"','"+deprtmentcode+"')";
              //out.println(ins);
              boolean b=obj.insert(ins);
              if(b)
              {
                  out.println("inserted");
              }
              else
              {
                  out.println("not inserted");
              }
              response.sendRedirect("Department.jsp");
            }
            
           
        %>
         
           
            
                                <tr><td></td><td ><input  type="submit" name="sub" class="btn btn-success" value="Submit">
            <input type="reset" name="rst" class="btn btn-warning" value="Reset"></td></tr>
        </table>
        <table>
            <tr><td><h3>Department Name</h3></td><td><h3>Department Code</h3></td></tr>
            <%
            String sel="select * from tbl_department";
            ResultSet rs=obj.select(sel);
            while(rs.next())
            {
            %>
            <tr><td><%=rs.getString("dept_name")%></td><td><%=rs.getString("dept_code")%></td><td><a href="">Edit</a>  <a href="">Delete</a></td></tr>
            <%}%>
        </table>
            
        </form>
    </body>
</html>
<%@include file="Footer.jsp" %>