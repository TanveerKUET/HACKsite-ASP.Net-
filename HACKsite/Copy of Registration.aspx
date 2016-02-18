<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Contact Redox - Free CSS Templates</title>
<meta name="keywords" content="contact redox, red, dark brown, free css templates, web design, CSS, HTML" />
<meta name="description" content="Contact Redox - free CSS templates + free website templates" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    
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
				<li><a href="contact.aspx">Tutorial</a></li>
                <li><a href="Archive.aspx">Archive</a></li>
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="contact.aspx">Forum</a></li>
				<li><a href="Registration.aspx" class="current">Register</a></li>
            </ul>    	
    
    	</div> <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
	</div> <!-- end of header -->
    
</div> <!-- end of header_wrapper -->
            
<div id="templatemo_content_wrapper">
	<div id="templatemo_content">


		<div id="main_content">
        <h3>Enter your Information Here</h3>
            <div id="contact_form">
            <form id="form1" runat="server">
                
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="name" runat="server" Width="135px"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="name" runat="server" ForeColor="Red" />
                <br />
                <asp:Label ID="Label2" runat="server" Text="   Roll"></asp:Label>
                <asp:TextBox ID="roll" runat="server" style="margin-left: 13px" Width="134px"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="roll" runat="server" ForeColor="Red" />
                <br />
                <asp:Label ID="Label3" runat="server" Text="email"></asp:Label>
                <asp:TextBox ID="email" runat="server" Width="138px"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="errormessage" ControlToValidate="email" runat="server" />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Forum"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Robotics</asp:ListItem>
                    <asp:ListItem>Artificial Intelligence</asp:ListItem>
                    <asp:ListItem>BioInformatics</asp:ListItem>
                    <asp:ListItem>Embedded System</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="password" runat="server" Width="72px"></asp:TextBox>
                <br />
                
                <asp:CheckBox ID="CheckBox1" runat="server" Text="I accept the terms and condition" OnCheckedChanged="CheckBox1_CheckedChanged"/> <asp:Label ID="Label6" runat="server" Text="*" ForeColor="red"></asp:Label>
               
                <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
                <br />
                
              </form>  
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
            <li><a href="index.html">Home</a></li>
            <li><a href="web_design.html">Web Design</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="templates.html">Portfolio</a></li>
            <li class="last_menu"><a href="contacs.html">Contact Us</a></li>
        </ul>
    
        Copyright © 2048 <a href="#">Your Company Name</a> | 
        <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    
    </div> <!-- end of footer -->  
</div> <!-- end of footer_wrapper -->


    </div>
    
</body>
</html>