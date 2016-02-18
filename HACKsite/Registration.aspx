<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 157px;
        }
        .auto-style3 {
            width: 157px;
        }
        .auto-style4 {
            height: 26px;
            width: 86px;
        }
        .auto-style5 {
            width: 86px;
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
                
				
                
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
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
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                
                <table style="width: 98%; height: 329px;">
                    <tr>
                        <td>
                <asp:Label ID="Label2" runat="server" Text="   Roll"></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <asp:TextBox ID="roll" runat="server" style="margin-left: 0px" Width="134px" AutoPostBack="true" OnTextChanged="roll_TextChanged" ></asp:TextBox>
                </ContentTemplate>
                 </asp:UpdatePanel>
                        
                        </td>
                        <td class="auto-style5">
                    <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="roll" runat="server" ForeColor="Red" ID="RequiredFieldValidator2"/>
                        
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style2">
                <asp:TextBox ID="name" runat="server" Width="135px"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="name" runat="server" ForeColor="Red" ID="RequiredFieldValidator1"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                <asp:Label ID="Label3" runat="server" Text="email"></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="email" runat="server" Width="138px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="email" runat="server" ForeColor="Red" ID="RequiredFieldValidator3"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                </asp:DropDownList>
                        </td>
                        <td class="auto-style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="Label5" runat="server" Text="Forum"></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Robotics</asp:ListItem>
                    <asp:ListItem>Artificial Intelligence</asp:ListItem>
                    <asp:ListItem>BioInformatics</asp:ListItem>
                    <asp:ListItem>Embedded System</asp:ListItem>
                </asp:DropDownList>
                        </td>
                        <td class="auto-style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="password" runat="server" Width="72px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="password" runat="server" ForeColor="Red" ID="RequiredFieldValidator4"/>
                        </td>
                    </tr>
                    <tr>
                        <td>ConfirmPassword</td>
                        <td class="auto-style3">
                <asp:TextBox ID="password0" runat="server" Width="72px" TextMode="Password"></asp:TextBox>

                        </td>
                        <td class="auto-style5">

                            <asp:Label ID="passcheck" runat="server" ForeColor="Red" Text="*notmatched"></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>SecurityQuestion</td>
                        <td class="auto-style3">
               
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="148px">
                                <asp:ListItem>What is favourite game?</asp:ListItem>
                                <asp:ListItem>What is tha name your best friend?</asp:ListItem>
                                <asp:ListItem>Where you was born?</asp:ListItem>
                                <asp:ListItem>Who is your favourite teacher?</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td class="auto-style5">
               
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>SecurityQ/answer</td>
                        <td class="auto-style3">
               
                            <asp:TextBox ID="securityQans" runat="server" Width="129px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
               
                            <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="securityQans" runat="server" ForeColor="Red" ID="RequiredFieldValidator5"/>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
               
                <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Button1_Click" />
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                            <asp:Label ID="Message" runat="server" Text="Message" ForeColor="yellow" Font-Size="Larger"></asp:Label>
                    </ContentTemplate>
                                </asp:UpdatePanel>
                        </td>
                        <td class="auto-style5">
               
                            &nbsp;</td>
                    </tr>
                </table>
              

                
              </form>  
            </div>
        
        </div> <!-- end of main_content -->
        
        <div id="sidebar">
        
        
        
        
        
        
        
        </div> <!-- end of sidebar -->

		<div class="cleaner"></div>
	</div> <!-- end of content -->
    
</div> <!-- end of content_wrapper --> 

        <!-- end of footer_wrapper -->


    </div>
    
</body>
</html>