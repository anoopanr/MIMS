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
        <title>Events</title>
    </head>
    <body>
        <form>
      
            <table class="table table-hover"  >
                                <tr><td>Event</td><td><input type="text" name="txtevent" required="" placeholder="Enter Event Name"></td></tr>
                                <tr><td>Event Date</td><td><input type="Date" name="txtEventDate" required="" ></td></tr>
                                <tr><td>Event Description</td><td><textarea name="txtdesc"> </textarea></td></tr>
                                <tr><td></td></tr>
                                    
        <%
            
            String sub=request.getParameter("sub");
            if(sub!=null)
            {
              String event=request.getParameter("txtevent"); 
              String eventdesc=request.getParameter("txtdesc"); 
           String eventdate=request.getParameter("txtEventDate"); 
              String ins="insert into tbl_events (event_name,event_date,event_description) values ('"+event+"','"+eventdate+"','"+eventdesc+"')";
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
              response.sendRedirect("Events.jsp");
            }
            
           
        %>
         
           
            
                                <tr><td></td><td ><input  type="submit" name="sub" class="btn btn-success" value="Submit">
            <input type="reset" name="rst" class="btn btn-warning" value="Reset"></td></tr>
        </table>
        <table>
            <tr><td><h3>Event Name</h3></td><td><h3>Event Date</h3></td><td><h3>Event Desc</h3></td></tr>
            <%
            String sel="select * from tbl_events";
            ResultSet rs=obj.select(sel);
            while(rs.next())
            {
            %>
            <tr><td><%=rs.getString("event_name")%></td><td><%=rs.getString("event_date")%></td><td><%=rs.getString("event_description")%></td><td><a href="">Edit</a>  <a href="">Delete</a></td></tr>
            <%}%>
        </table>
            
        </form>
    </body>
</html>
<%@include file="Footer.jsp" %>