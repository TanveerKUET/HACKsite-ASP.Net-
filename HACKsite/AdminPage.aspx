<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

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
            height: 66px;
            width: 132px;
            margin-left: 0px;
        }
        #TextArea2 {
            height: 31px;
            width: 478px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
            
            
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
                
				<li><a href="Registration.aspx">Register</a></li>
                
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="Verfy.aspx">verifyuser</a></li>
                <li><a href="AdminAccountEdit.aspx">Account</a></li>
               <li>&nbsp;&nbsp; <asp:Button ID="Button1" Text="Logout" runat="server" ForeColor="Red" BackColor="Black" OnClick="Button1_Click"/></li>
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
            
                  
                <asp:Image ID="Image1" runat="server" Height="83px" Width="100px" />
                
                <br />
                <table style="width:158%;">
                    <tr>
                        <td>
            
                  
                <asp:Label ID="Name" runat="server"></asp:Label>
                
                        </td>
                    </tr>
                    </table>
                <br />
                <table style="width:713%; height: 144px;">
                    <tr>
                        <td class="auto-style2">Write something to your forum</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <textarea id="TextArea2" name="S1" runat="server"></textarea></td>
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
                        <td class="auto-style2">ProjectName&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Project Image&nbsp;
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
        
        </div> <!-- end of main_content -->
        
        <div id="sidebar">
        
        
        <div id="sidebar_featured_project">
        	
            <h3>Latest Notice</h3>
            <br />
            <div class="right2" style="background-color:gray; height: 97px;">

                &nbsp;<asp:Label ID="date" runat="server"></asp:Label>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />

                <asp:Label ID="notice" runat="server"></asp:Label>

            </div>
            <div class="right">

                <br />
                <br />
                <br />

                <textarea id="TextArea1" runat="server" name="S2" cols="20" rows="1"></textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Message" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="update" />

            </div>
            
            <br />
            
        </div>
        
        
        </div>
        <!-- end of sidebar -->

		<div class="cleaner"></div>
	</div> <!-- end of content -->
    
</div> <!-- end of content_wrapper --> 




    </div>
    </form>
</body>
</html>
