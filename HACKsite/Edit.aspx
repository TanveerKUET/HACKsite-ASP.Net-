<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="UserMainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Contact Redox - Free CSS Templates</title>
<meta name="keywords" content="contact redox, red, dark brown, free css templates, web design, CSS, HTML" />
<meta name="description" content="Contact Redox - free CSS templates + free website templates" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #TextArea1 {
            height: 43px;
            width: 233px;
        }
        .auto-style1 {
            width: 217px;
        }
        .auto-style2 {
            width: 248px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            
            
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
                
				<li><a href="Edit.aspx" class="current">Edit</a></li>
                
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="UserMainPage.aspx">UserPage</a></li>
               <li><asp:Button ID="Button1" Text="Logout" runat="server" ForeColor="Red" BackColor="Black" OnClick="Button1_Click"/></li>
               <li></li>
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
            
                  
                <asp:Image ID="Image2" runat="server" Height="75px" Width="129px" />
                
                <br />
                <table style="width: 450%; height: 235px;">
                    <tr>
                        <td class="auto-style1">
            
                  
                            &nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="changeInfo" runat="server" OnClick="Button2_Click" Text="Info" />
                            <asp:Button ID="imgchange" runat="server" OnClick="imgchange_Click" Text="changeimage" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
            
                  
                <asp:Label ID="Name" runat="server">Name</asp:Label>
                
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="nametb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="roll" runat="server">roll</asp:Label>
            
                  
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="rolltb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="email" runat="server">email</asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="emailtb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="forum" runat="server" Text="forum"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="forumtb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="passLabel" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="passtb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="newpasslabel" runat="server" Text="New Password"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="newpasstb" runat="server"></asp:TextBox>
&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="updatebutton" runat="server" OnClick="updatebutton_Click" Text="update" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="imageLabel" runat="server" Text="Choose image"></asp:Label>
                        </td>
                        <td class="auto-style2">
   <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td id="Message" class="auto-style2">
                            <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="ok" />
            
                  
                <asp:Label ID="message" runat="server" ForeColor="Red"></asp:Label>
                
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            
                  
            &nbsp;<br />
&nbsp;</div>
        
        </div> <!-- end of main_content -->
        
        <div id="sidebar">
        
        
        <div id="sidebar_featured_project">
        	
            <h3>Latest Notice</h3>
            <div class="left"><img src="images/maker.png" alt="image" /></div>
            <div class="right" style="background-color:gray">

                &nbsp;<asp:Label ID="date" runat="server"></asp:Label>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />

                <asp:Label ID="notice" runat="server"></asp:Label>

            </div>
            
        </div>
        
        
        </div>
        <!-- end of sidebar -->

		<div class="cleaner"></div>
	</div> <!-- end of content -->
    
</div> <!-- end of content_wrapper --> 

<div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">

        <ul class="footer_menu">
            
        </ul>
    
        Copyright © 2014 HACk <a href="Homepage.aspx">HACK</a>
        
    
    </div> <!-- end of footer -->  
</div> <!-- end of footer_wrapper -->


    </div>
    </form>
</body>
</html>