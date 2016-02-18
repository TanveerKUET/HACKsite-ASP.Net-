<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CommonPage.aspx.cs" Inherits="UserMainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Contact Redox - Free CSS Templates</title>
<meta name="keywords" content="contact redox, red, dark brown, free css templates, web design, CSS, HTML" />
<meta name="description" content="Contact Redox - free CSS templates + free website templates" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 156px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            
            
    <div>
    <div id="templatemo_header_wrapper">
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
                <li><a href="blog.aspx">Blog</a></li>
				
                <li><a href="Archive.aspx">Archive</a></li>
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="" class="current">UserMainPage</a></li>
               
            </ul>    	
    
    	</div> <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
	</div> <!-- end of header -->
    
</div> <!-- end of header_wrapper -->
            
<div id="templatemo_content_wrapper">
	<div id="templatemo_content">


		<div id="main_content">
        <h3>Your Information are shown below</h3>
            <div id="contact_form">
            
                  
             <%
                 int i = 0;
                 for (i = 0; i < 5;i++ )
                 {
                %>
                <br />
                <asp:Label ID="date" runat="server"></asp:Label>
                <% DateTime mydate = DateTime.Now;
                  date.Text = mydate.ToString();%>        
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="name" runat="server"></asp:Label>
                            <%name.Text = "Tanveer"; %>
                        </td>
                        <td>
                <asp:Label ID="roll" runat="server"></asp:Label>
                            <%roll.Text = "11107048"; %>
                        </td>
                    </tr>
                    </table>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Label ID="message" runat="server"></asp:Label>
                            <%message.Text = "Hello world!"; %>
                        </td>
                    </tr>
                </table>
                <%
                } %>
            </div>
        
        </div> <!-- end of main_content -->
        
        <div id="sidebar">
        
        
        <div id="sidebar_featured_project">
        	
            <h3>Featured Project</h3>
            <div class="left"><img src="images/maker.png" alt="image" /></div>
            <div class="right">
            	<h6>Lorem ipsum dolor sit</h6>
            	<p>Cras purus libero, dapibus nec rutrum in, dapibus nec risus. Ut interdum mi sit amet magna feugiat auctor.</p>
            </div>
            
             <div class="cleaner"></div>
            
        </div>
        
        <div id="news_section">
            
            <h3>User News</h3>
                    
            <div class="news_box">
                <a href="#">Lorem ipsum dolor sit amet consectetur </a>
                <p>Maecenas tellus erat, dictum vel semper a, dapibus ac elit. Nunc rutrum pretium porta.</p>
            </div>
            
             <div class="news_box">
               	<a href="#">Aenean feugiat mattis est nec egestas</a>
                <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>
            </div>
               
            <div class="cleaner"></div>     
        </div>
        
        
        </div> <!-- end of sidebar -->

		<div class="cleaner"></div>
	</div> <!-- end of content -->
    
</div> <!-- end of content_wrapper --> 

<div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">

        <ul class="footer_menu">
            
        </ul>
    
        Copyright © 2048 <a href="#">Your Company Name</a>
        
    
    </div> <!-- end of footer -->  
</div> <!-- end of footer_wrapper -->


    </div>
    </form>
</body>
</html>