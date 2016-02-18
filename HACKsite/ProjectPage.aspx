<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjectPage.aspx.cs" Inherits="AdminPage" %>

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
            height: 112px;
            width: 126px;
            margin-left: 0px;
        }
        #TextArea2 {
            height: 31px;
            width: 478px;
        }
        .auto-style5 {
            height: 74px;
            width: 84px;
        }
        .auto-style13 {
            width: 84px;
        }
        .auto-style14 {
            height: 74px;
            width: 36px;
        }
        .auto-style15 {
            width: 36px;
        }
        .auto-style32 {
            height: 74px;
            width: 92px;
        }
        .auto-style33 {
            width: 92px;
        }
        .auto-style35 {
            height: 74px;
            width: 120px;
        }
        .auto-style36 {
            width: 120px;
        }
        .auto-style38 {
            height: 74px;
            width: 115px;
        }
        .auto-style39 {
            width: 115px;
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
                <li><a href="web_design.aspx">Projects</a></li>
                
				<li><a href="Registration.aspx">Register</a></li>
                
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><asp:Button ID="Button2" Text="MyPage" runat="server" ForeColor="Red" BackColor="Black" OnClick="Button2_Click" /></li>

               
            </ul>    	
    
    	</div> <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
	</div> <!-- end of header -->
    
</div> <!-- end of header_wrapper -->
            
<div id="templatemo_content_wrapper">
	<div id="templatemo_content">


		<div id="main_content">
        <h3>The Projects are submitted by the members</h3>
         <div style="float:left; height: 155px; width: 666px;">
             <%for (int i = b1; i <= b2; i++)
          {
              if (postflag == true){
              Id.Text = id[i];
              name.Text = Name[i];
              projectname.Text = projecName[i];
              timedate.Text = time[i];
              
              
              Image1.ImageUrl = "~/ProjectFile/" + imagname[i];
              %>
            <br />
        <table style="width:99%; height: 110px;">
            

            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Id" runat="server"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Label ID="name" runat="server"></asp:Label>
                </td>
                <td class="auto-style35">
                    <asp:Label ID="projectname" runat="server"></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:Label ID="timedate" runat="server"></asp:Label>
                </td>
                
                <td class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="72px" Width="168px" />
                </td>
            </tr>
            <tr><td class="auto-style15">&nbsp;</td><td class="auto-style33">&nbsp;</td><td class="auto-style36">&nbsp;</td><td class="auto-style39">&nbsp;</td><td class="auto-style13">&nbsp;</td></tr>

        </table>
             <%
            }   
            } %>
         </div>   
          <div style="height: 63px; width: 160px; float:right;">


              project id&nbsp; <asp:TextBox ID="pid" runat="server" Height="16px" Width="50px"></asp:TextBox>
              <br />
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button1" runat="server"  ForeColor="Red" BackColor="Black"  OnClick="Button1_Click" Text="Download" />
            </div>
        </div> <!-- end of main_content -->
        
        <!-- end of sidebar -->

		<div class="cleaner"></div>
	</div> <!-- end of content -->
    
</div> <!-- end of content_wrapper --> 




    </div>
    </form>
</body>
</html>
