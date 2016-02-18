<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserMainPage.aspx.cs" Inherits="UserMainPage" %>

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
        .auto-style2 {
            width: 248px;
        }
        .auto-style3 {
            width: 248px;
            height: 30px;
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
                <!--<li><a href="blog.aspx">Blog</a></li>-->
				<li><a href="Edit.aspx">Account</a></li>
                
                <li><a href="<%=forumname %>.aspx"><%=forumname %></a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="UserMainPage.aspx" class="current">UserPage</a></li>
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
            
                  
                <asp:Label ID="Name" runat="server"></asp:Label>
                
                <asp:Image ID="Image2" runat="server" Height="75px" Width="129px" />
                
                <br />
                <asp:Label ID="roll" runat="server"></asp:Label>
            
                  
                <br />
                <asp:Label ID="email" runat="server"></asp:Label>
                <br />
                <asp:Label ID="forum" runat="server"></asp:Label>
                <br />
                <table style="width:758%; height: 316px;">
                    <tr>
                        <td class="auto-style2">Write something to your forum</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <textarea id="TextArea1" name="S1" runat="server"></textarea></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
   <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="203px">
                                <asp:ListItem>roboticsforum</asp:ListItem>
                                <asp:ListItem>artificialintelligence</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
   <asp:Button ID="btnsave" runat="server" 
               onclick="btnsave_Click" Text="Upload" 
               Width="85px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">ProjectName&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Project Imag
   <asp:FileUpload ID="FileUpload2" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Project zip File
   <asp:FileUpload ID="FileUpload3" runat="server" />

                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><asp:Button ID="Button3" runat="server" Text="submit" OnClick="Button3_Click" />
                            <asp:Label ID="UploadMessage" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
              </div>
        
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
    
        Copyright © 2048 right © 2048 <a href="#">Your Company Name</a>
        
    
    </div> <!-- end of footer -->  
</div> <!-- end of footer_wrapper -->


    </div>
    </form>
</body>
</html>