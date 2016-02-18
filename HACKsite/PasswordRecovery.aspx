<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" %>

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
            height: 24px;
        }
    </style>
</head>
<body>
    
    <div>
    <div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    
    	<div id="site_title"style="margin-right: 150px;">
            <h1><a id="A1" href="HomePage.aspx" runat="server">
                <strong>HACK</strong>
				
                <span style="color:red;font-family:Comic Sans MS;">Hardware Acceleration Club of KUET</span>
            </a></h1>
        </div>
        
        <div id="templatemo_menu">
    
            <ul>
                <li><a href="HomePage.aspx">Home</a></li>
                <li><a href="ProjectPage.aspx">Projects</a></li>
                
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="Registration.aspx">Register</a></li>
               
                <li><a href="LogIn.aspx">LogIn</a></li>
                <li><a href="PasswordRecovery.aspx" class="current">PasswordRecovery</a></li>
				
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
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>
    
        <asp:Label ID="Label1" runat="server" Text="Roll"></asp:Label>
                </td>
                <td>
               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="SecurityQuestion"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="179px">
                    <asp:ListItem>What is favourite game?</asp:ListItem>
                                <asp:ListItem>What is tha name your best friend?</asp:ListItem>
                                <asp:ListItem>Where you was born?</asp:ListItem>
                                <asp:ListItem>Who is your favourite teacher?</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Answer</td>
                <td class="auto-style1">
                    <asp:TextBox ID="ans" runat="server"></asp:TextBox>
    
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="recover" />
                                    </td>
            </tr>
            <tr>
                <td>password</td>
                <td>
                    <asp:TextBox ID="pass" runat="server"></asp:TextBox>
    
                                    </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                                    <asp:Label ID="message" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</div>
        
        </div> <!-- end of main_content -->
        
        <div id="sidebar">
        
        
        
        
        
        
        
        </div> <!-- end of sidebar -->

		<div class="cleaner"></div>
	</div> <!-- end of content -->
    
</div> <!-- end of content_wrapper --> 

<div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">

        <ul class="footer_menu">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li class="last_menu"></li>
        </ul>
    
        Copyright © 2014 <a href="HomePage.aspx">Hardware Acceleration Club of KUET</a> 
        
    
    </div> <!-- end of footer -->  
</div> <!-- end of footer_wrapper -->


    </div>
    
</body>
</html>

