<%-- 
    Document   : Header
    Created on : Jul 21, 2017, 2:24:28 PM
    Author     : Anoop
--%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../Jquery/jquery.min.js"></script>
        
        <link href="css/military-styles.css" rel="stylesheet" type="text/css" />
<link href="css/navigation.css" rel="stylesheet" type="text/css" />
<link href="css/list-objects.css" rel="stylesheet" type="text/css" />
<link href="css/Mycss.css" rel="stylesheet" type="text/css" />


<!-- JAVASCRIPT FILES SOCIAL MEDIA -->
<script type="text/javascript" src="js/clock.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <form id="form1" runat="server">
    <div>      
    </div>

    <div id="banner">
	<div id="banner-L">
		<span class="website-title">Military Site v2.0</span>
		<br/>
		<span class="website-slogan">"One For All, All For One"</span>
		<br/>
		<span class="website-subslogan"></span>
	</div>
	
	<div class="clearB"></div>
	
	<div id="banner-Hnav">
	
	
		<ul class="nav">
            <br />
           <%%>
			<li><a href="Home.aspx">Home</a></li>
                        <li><a href="Department.jsp">Department</a></li>
                        <li><a href="Designation.jsp">Designation</a></li>
                        <li><a href="State.jsp">State</a></li>
                        <li><a href="Designation.jsp">District</a></li>
            <li><a href="events.aspx">Events</a></li>
            <li><a href="news.aspx">News</a></li>
            <li><a href="upload.aspx">Gallery</a></li>
           <li><a href="uploadvideo.aspx">Videos</a></li>
            <li><a href="Logout.aspx">Logout</a></li>
            
		<%--<li><a href="#">Profile</a>
				<ul>
					<li><a href="OffShowProfile.aspx">Show </a></li>
					<li><a href="OffChangePassword.aspx"></a></li>
					<li class="dropdown"><a href="#">Level 1</a>
						<ul>
							<li><a href="#">Level 2</a></li>
							<li><a href="#">Level 2</a></li>
							<li><a href="#">Level 2</a></li>
							<li class="dropdown"><a href="#">Level 2</a>
								<ul>
									<li><a href="#">Level 3</a></li>
									<li><a href="#">Level 3</a></li>
									<li><a href="#">Level 3</a></li>
									<li><a href="#">Level 3</a></li>
									<li><a href="#">Level 3</a></li>
								</ul>
							</li>
							<li><a href="#">Level 2</a></li>
						</ul>
					</li>
					<li><a href="#">Level 1</a></li>
					<li><a href="#">Level 1</a></li>
				</ul>
		</li>
		 	<li><a href="OfficerMailBox.aspx">Compose Mail</a></li>
			<li><a href="OfficerUserLabels.aspx">Add Labels</a></li>
			<li><a href="OffQickList.aspx">Add to Quicklist</a></li>
			<li><a href="VideoInbox.aspx">Show Videos</a></li>
			<li><a href="../Login.aspx">LogOut</a></li>--%>
		</ul>
		
		
	</div>
	
</div>


<div id="cnt-box">
	<div id="cnt-top"></div>
	<div id="cnt-filler">
	
		<div id="col-L">
		
			<div class="sb-box">
				<div class="sb-top">
					<div class="sb-title">Navigation</div>
				</div>
				<div class="sb-filler">
				
					<div class="sb-info">
						<ul>
                            <li><a href="officer.aspx">Officer Registration</a></li>
                            <li><a href="OfficerSearch.aspx">Search</a></li>
                            <li><a href="KeyGeneration.aspx">Key Generation</a></li>
                            <li><a href="../MailingAdmin/MailHome.aspx">Mailing</a></li>
                            <li><a href="ComplaintsReplay.aspx">Complaints</a></li>
                            <li><a href="adminchangepass.aspx">Change Password</a></li>
                            
						</ul>
					</div>
				
				</div>
				<div class="sb-footer"></div>
			</div>
			
			
			
			
			<div class="sb-box">
				<div class="sb-top">
					<div class="sb-title">Military Time</div>
				</div>
				<div class="sb-filler">
				
					<div class="sb-clock">
					
						<script type="text/javascript">						    new imageclock.display()</script>
					
					</div>
			
				</div>
				<div class="sb-footer"></div>
			</div>

			
			
			
		
			<div class="sb-box">
				<%--<div class="sb-top">
					<div class="sb-title">Twitter Activity</div>
				</div>--%>
				<div class="sb-filler">
				
					<%--<div class="sb-info">
				
						<script type="text/javascript" src="http://widgets.twimg.com/j/2/widget.js"></script>
						<script>
						    new TWTR.Widget({
						        version: 2,
						        type: 'profile',
						        rpp: 6,
						        interval: 8000,
						        width: 184,
						        height: 250,
						        theme: {
						            shell: {
						                background: '#343523',
						                color: '#c4b470'
						            },
						            tweets: {
						                background: '#343523',
						                color: '#c4b470',
						                links: '#cdcdb4'
						            }
						        },
						        features: {
						            scrollbar: false,
						            loop: true,
						            live: true,
						            hashtags: true,
						            timestamp: true,
						            avatars: false,
						            behavior: 'default'
						        }
						    }).render().setUser('g4tv').start();
						</script>
					
					</div>--%>
			
				</div>
				<%--<div class="sb-footer"></div>--%>
			</div>
		
		
		</div>
		
		
		<div id="col-R">
		
			<div class="main-box">
				<div class="main-top"></div>
				<div class="main-filler">
				
					<div class="main-info">
						

      

        
  
		
	



