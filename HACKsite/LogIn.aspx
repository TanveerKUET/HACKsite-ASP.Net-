<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

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
            width: 234px;
        }
        .auto-style2 {
            width: 514px;
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
                <li><a href="projects.aspx">Projects</a></li>
                
				
                
                <li><a href="LogIn.aspx" class="current">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="Registration.aspx">Register</a></li>
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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
    
        <table style="width:92%; height: 187px;">
            <tr>
                <td>
    
        <asp:Label ID="Label1" runat="server" Text="Roll"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
               <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        </ContentTemplate>
                    </asp:UpdatePanel>
               
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*required" ForeColor="red" />
                </td>
            </tr>
            <tr>
                <td>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*required" ForeColor="red" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="login" />
    
                    <asp:CheckBox ID="RememberMeCheckBox" runat="server" Text="" />remember me
    
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                    <asp:Label ID="message" runat="server" Text="" ForeColor="yellow" Font-Size="Large"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <a href="PasswordRecovery.aspx" ><p style="text-decoration:none;color:red;font-size:larger; height: 21px; width: 253px;">Forget your Password ?</p></a>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</div>
        
        </div> <!-- end of main_content -->
        
        
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
