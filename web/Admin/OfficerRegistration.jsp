<%-- 
    Document   : Officer
    Created on : Jul 22, 2017, 7:52:31 PM
    Author     : Anoop
--%>
<%@include file="Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <script >
            function seldis(x)
            {
                 $.ajax({url: "ActionDistrict.jsp?x=" + x, success: function(result) {

                            $("#dist").html(result);
                        }});
               
            }
            function availabe(x)
            {
                
            }
            function checkusername(uname)
            {
               
                    $.ajax({url: "ActionUsernameAvaiabilty.jsp?uname=" + uname, success: function(result) {

                            $("#availablilty").html(result);
                        }});
               
            }
            //
        </script>




        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Officer Registration</title>
    </head>
    <body>
        <form action="UploadActionOfficer.jsp" enctype="multipart/form-data" method="post">
        

            <table >


                <tr>
                    <td>Department</td>
                    <td>  <select  name="department" ><option value="0">--Select--</option>
                             <%
                            String seldep="select * from tbl_department";
                            ResultSet rsdep=con.select(seldep);
                            while(rsdep.next())
                            {
                            %>
                            <option value="<%=rsdep.getString("dept_id")%>"><%=rsdep.getString("dept_name")%></option>
                            <%
                            }%>
                        </select>

                </tr>

                <tr>
                    <td>Designation</td>
                    <td>
                        <select name="designation" >

                            <option value="0">--Select--</option>
                             <%
                            String seldesig="select * from tbl_designation";
                            ResultSet rsdesig=con.select(seldesig);
                            while(rsdesig.next())
                            {
                            %>
                            <option value="<%=rsdesig.getString("desig_id")%>"><%=rsdesig.getString("desig_name")%></option>
                            <%
                            }%>


                        </select>

                    </td>
                </tr>



                <tr>
                    <td>First Name</td>
                    <td>
                        <input type="text" name="txtfname"/>
                    </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>
                        <input type="text" name="txtlname"/>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="rbtn" value="male"/>Male
                        <input type="radio" name="rbtn" value="female"/>Female
                    </td>




                <tr>
                    <td>Contact</td>
                    <td>
                        <input type="number" name="txtcontact"/>
                    </td>

                </tr>
                <tr>
                    <td>E-mail</td>
                    <td>
                        <input type="email" name="txtmail"/>
                    </td>
                </tr>








                <tr>
                    <td>Username</td>
                    <td>
                        <input type="text" name="txtuser" onkeyup="checkusername(this.value)"/><div id="availablilty"></div>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" name="txtpass"/>
                    </td>
                </tr>

                <tr><td>

                        FileUpload
                    </td><td><input type="file" name="upload"></td></tr>



                <tr>
                    <td>State:</td>
                    <td>  <select  name="state" onchange="seldis(this.value)"   id="state"><option value="0">--Select--</option>
                            
                            <%
                            String sel="select * from tbl_state";
                            ResultSet rsq=con.select(sel);
                            while(rsq.next())
                            {
                            %>
                            <option value="<%=rsq.getString("state_id")%>"><%=rsq.getString("state_name")%></option>
                            <%
                            }%>
                        </select>

                </tr>

                <tr>
                    <td>District</td>
                    <td>
                        <select name="dist" id="dist">

                            <option value="0">--Select--</option>


                        </select>

                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <textarea name="txtadress"></textarea>

                    </td>
                </tr>
                <tr></tr>


                <tr>
                    <td colspan="2" align = "right">
                        <input type="submit" name="btregister" value="Submit"/>
                        <input type="reset" name="btcancel" value="Cancel"/>
                    </td>
                </tr>






            </table>
        </form>
    </body>
</html>
<%@include file="Footer.jsp" %>