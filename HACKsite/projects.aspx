<%@ Page Language="C#" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="web_design" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Recent project Activities</title>
<meta name="keywords" content="redox, red, dark brown, free css templates, web design, CSS, HTML" />
<meta name="description" content="Redox Design - free CSS templates + free website templates" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   
    <div id="templatemo_header_wrapper" style="background:fixed;">
	<div id="templatemo_header">
    
    	<div id="site_title"style="margin-right: 150px;">
            <h1><a href="index.html">
                <strong>HACK</strong>
				
                <span style="color:red;font-family:Comic Sans MS;">Hardware Acceleration Club of KUET</span>
            </a></h1>
        </div>
        
        <div id="templatemo_menu">
    
            <ul>
                <li><a href="HomePage.aspx">Home</a></li>
                <li><a href="projects.aspx">Projects</a></li>
                <li><a href="Archive.aspx">Archive</a></li>
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="Default.aspx">Register</a></li>
            </ul>    	
    
    	</div> <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
	</div> <!-- end of header -->
    
</div> <!-- end of header_wrapper -->
            
<div id="templatemo_content_wrapper" style="background:fixed;">
	<div id="templatemo_content">

		<div id="main_content">
        
            <h2>Recent Projects Thats are going on</h2>
            
            <p>From the birth of HACK the goal of its founder and the members was to improve the field of  intelligent field in Bangladesh.Almost in the field of<a href="http://validator.w3.org/check?uri=referer" rel="nofollow">Robotics</a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow">Artificial Intelligence</a>.</p>
            
            <div class="cleaner_h30"></div>
        <% 
            for(int i=1;i<5;i++)
            {
            %>
            <div class="services_section">
            
                <h4><a href="#">Line Follower Robot</a></h4>
    
<div class="services_content">
                
                  <div class="left">
                        <a href="#"><img src="images/templatemo_image_02.jpg" alt="image 2" /></a>                    </div>
                    
<div class="right">
                        <p>At present time line follower robot has become very popular and the beginners prefer to work first on it </p>
                  </div>
                    <div class="cleaner"></div>
                </div>
                
               <div class="cleaner"></div> 
    
            </div>
            <% }%>
      <div class="services_section">
            
                <h4><a href="#">Obstacle Detector Robot</a></h4>
                
<div class="services_content">
                
                  <div class="left">
                        <a href="#"><img src="images/templatemo_image_.jpeg" alt="image 3" /></a>                    </div>
                    
<div class="right">
                    
                        <p>In id libero purus, eleifend  varius lacus. Phasellus elementum pellentesque hendrerit. Cum sociis  natoque penatibus et magnis dis parturient montes, nascetur ridiculus  mus. Pellentesque id dolor eros, ut iaculis elit. Suspendisse pulvinar  nulla sed sapien egestas suscipit. Lorem ipsum dolor sit amet,  consectetur. Nam  quis leo quis purus aliquam consequat a consequat lorem.                    </p>
                </div>
                    
                    <div class="cleaner"></div>
                </div>
                <div class="cleaner">asdf</div>
            </div>
            
      <div class="services_section">
            
                <h4><a href="#">Digital image Processing</a></h4>
    
<div class="services_content">
                
                  <div class="left">
                        <a href="#"><img src="images/images_012.jpg" alt="image 4" /></a>                    </div>
                    
<div class="right">
                    
                        <p>Pellentesque quis lacus arcu, ac porttitor nisi. Nulla lacus leo,  tincidunt at blandit sed, faucibus nec magna. Quisque aliquet ipsum  elementum ipsum euismod dictum. Mauris lacinia, dolor nec ornare adipiscing, orci orci tempus  massa, a aliquam magna massa sed metus. Duis pretium, odio nec sagittis  blandit, nulla tellus faucibus erat, ac malesuada sem ante a erat.  </p>
                  </div>
                    
                    <div class="cleaner"></div>
                </div>
                <div class="cleaner"></div>
            </div>
        
        
      </div> <!-- end of main_content -->
        
        <div id="sidebar">
        
	</div>
    
</div>
    </div>
    </form>
</body>
</html>
