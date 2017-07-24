<%-- 
    Document   : UploadactionTouristInsert
    Created on : Dec 10, 2016, 11:06:11 AM
    Author     : MYcomputerr
--%>

<%@page import="db.ConnectionClass"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>
<jsp:useBean class="db.ConnectionClass" id="obj"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String field_name="";
        FileItem f_item=null;
String file_name="";

File savedFile=null;
String fn="",pf="";

String field[] = new String[20];
String value[]=new String[20];

//checking if request cotains multipart data
boolean isMultipart=ServletFileUpload.isMultipartContent(request);

if(isMultipart)
{

    FileItemFactory factory=new DiskFileItemFactory();
    ServletFileUpload upload=new ServletFileUpload(factory);

    //declaring a list of form fields
    List items_list=null;

    //assigning fields to list 'items_list'
    try
    {
    items_list=upload.parseRequest(request);
    }
    catch(FileUploadException ex)
    {
        out.println(ex);
    }

          //declaring iterator
   Iterator itr=items_list.iterator();
    int k=0;
    //iterating through the list 'items_list'
    while(itr.hasNext())
    {
        //typecasting next element in items_list as fileitem
        f_item=(FileItem)itr.next();

        //checking if 'f_item' contains a formfield(common controls like textbox,dropdown,radio buttonetc)
       if(f_item.isFormField())
        {
          
            //getting fieldname and value
            field[k]=f_item.getFieldName();
            value[k]=f_item.getString();
                System.out.println(k+" "+value[k]+" "+ field[k]);
                k++;
        }
       else
       {
            //f_item=(FileItem)itr.next();
            
           file_name=f_item.getName();
           field_name=f_item.getFieldName();
          // if(field_name.equals("photo"))
           {
           String ext=file_name.substring(file_name.lastIndexOf("."));
            //setting path to store image
            File proj_path=new File(config.getServletContext().getRealPath("/"));
            String file_path=proj_path.getParentFile().getParentFile().getPath()+"\\web\\Admin\\OfficerPhotos\\";
            Random r=new Random();
             int r_num=r.nextInt(1111)+999;
            fn="OFFICER_"+r_num+ext;
            //creating a file object
            savedFile=new File(file_path+fn);
            try
            {
                //writing the file object
                f_item.write(savedFile);               
                
            }
            catch(Exception ex)
            {
                out.println(ex);
            }
            }
           
           
          
           
       }
           
           }
    //Strinh str1="insert into tbl_user ()";
    //String image=request.getParameter("image");
       String str1="insert into tbl_officer(depart_id,desig_id,officer_firstname,officer_lastname,officer_gender,officer_contact,officer_email,officer_username,officer_password,officer_photos,dist_id) values('"+value[0]+"','"+value[1]+"','"+value[2]+"','"+value[3]+"','"+value[4]+"','"+value[5]+"','"+value[6]+"','"+value[7]+"','"+value[8]+"', '"+fn+"'    ,'"+value[10]+"')";
       out.println(str1);
   
    boolean status=obj.insert(str1);
    
    if(status==true)
    {
      %> 
       <script type="text/javascript">
            alert("Upload Successfully..");
            setTimeout(function(){window.location.href='StudentRegistration.jsp'},100);
        </script>
     <%
    }
     }   



      

        %>
    </body>
</html>
