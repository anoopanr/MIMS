<%-- 
    Document   : District
    Created on : Mar 9, 2017, 3:43:53 PM
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
            <table>
          
                              
            
           <%
            String sub=request.getParameter("sub");
            if(sub!=null)
            {
              String district=request.getParameter("district");
              String state=request.getParameter("state");
              String ins="insert into tbl_district (district_name,state_id) values ('"+district+"','"+state+"')";
              out.println(ins);
              boolean bl=obj.insert(ins);
              if(bl)
              {
                  out.println("inserted");
              }
              else
              {
                  out.println("not inserted");
              }
              response.sendRedirect("district.jsp");
            }
            
           
        %>
            
            <tr><td>State</td>
            <td>
                
                <select name="state" style="width: 100%" >
                
                    <option >------------select------------</option>
                    <% 
                      String sel="select * from tbl_state";
                      ResultSet rs=obj.select(sel);
                      while(rs.next())
                      {
                          String sname=rs.getString("state_name");
                          %>
                          <option value="<%=rs.getString("state_id")%>"><%=sname%></option>
                          <%
                          
                      }
                    
                    %>
                
                
            </select>
            </td>
            </tr>
              <tr><td>District</td><td><input type="text" name="district" required="" placeholder="Distrct Name"></td></tr>
              <tr><td></td><td colspan="1"><input type="submit" name="sub" class="btn btn-primary" value="submit"> 
                <input type="reset" name="rst" class="btn btn-warning" value="Reset"> </td></tr>
            
        </table>
                
                    
                    <table><tr><td>State Name</td><td>District Name</td><td></td></tr>
                    <%
                    
                    String selq="select * from tbl_state s inner join tbl_district d on s.state_id=d.state_id";
                    ResultSet rsq=obj.select(selq);
                    while(rsq.next())
                    {
                    
                    %>
                    <tr><td><%=rsq.getString("state_name")%></td><td><td><%=rsq.getString("state_name")%></td><td><a href="">Edit</a>  <a href="">Delete</a></td></tr>
                    
                    <%}%>
                    
                    </table>
                    
        </form>
                    
    </body>
</html>
<%@include file="Footer.jsp"  %>