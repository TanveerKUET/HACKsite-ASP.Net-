<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Robotics.aspx.cs" Inherits="Robotics" %>

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
            height: 39px;
            width: 348px;
        }
        #postDetails {
            height: 235px;
            width: 713px;
        }
        #post {
            height: 28px;
            width: 714px;
        }
        #img {
            height: 140px;
            margin-top: 0px;
        }
        #imgage {
            height: 227px;
            width: 502px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            
            
    <div>
    <div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    
    	<div id="site_title"style="margin-right: 150px;">
            <h1><a href="HomePage.aspx" runat="server">
                <strong>HACK</strong>
				
                <span style="color:red;font-family:Comic Sans MS;">Hardware Acceleration Club of KUET</span>
            </a></h1>
        </div>
        
        <div id="templatemo_menu">
    
            <ul>
                <li><a href="HomePage.aspx">Home</a></li>
                
                
				<li><a href="Registration.aspx">Register</a></li>
                
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="Robotics.aspx" class="current">Robotics</a></li>
                <li><a href="UserMainPage.aspx">UserPage</a></li>
               <li></li>
            </ul>    	
    
    	</div> <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
	</div> <!-- end of header -->
    
</div> <!-- end of header_wrapper -->
            
<div id="templatemo_content_wrapper">
	<div id="templatemo_content">

        <%for (int i = b1; i <= b2; i++)
          {
              if (postflag == true){
              
              Name.Text = name[i];
              timedate.Text = time[i];
              //details.Text = post[i];
              Label1.Text = post[i];
              Image1.ImageUrl = "~/Robotics/" + imagname[i];
              Image2.ImageUrl = "~/Robotics/" + personimage[i];
          %>
          <br />
		<div id="main_content">
            <div id="contact_form" style="color:red;">
                <asp:Image ID="Image2" runat="server" Height="45px" Width="71px" />
            </div>
            <div id="postHeader" style="margin-left:74px; height: 69px; color:green; margin-top: 0px;">
                
                    &nbsp;
                    <br />
                <asp:Label ID="Name" runat="server" Text="Label"></asp:Label>
                    <br />
                <asp:Label ID="timedate" runat="server" Text="timedate"></asp:Label>
            </div>
            <div id="postDetails">
             <div id="imgage" style="margin-left:100px;background:fixed;">
                 
                 <asp:Image ID="Image1" runat="server" Height="223px" Width="499px" />
                 
                </div>
            </div>
        <!--<div id="post"><asp:Label ID="details" runat="server" Text="Label" ForeColor="Violet"></asp:Label></div>-->
            <div style="height: 99px;background:fixed;">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
            
        </div> <!-- end of main_content -->
        <%}
          } %>
        </div>
    </div>
        <!-- end of sidebar -->

		<div class="cleaner"></div>
	 <!-- end of content -->
    
<!-- end of content_wrapper --> 

<div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">

        <ul class="footer_menu">
            
        </ul>
    
         Copyright © 2014 <a href="HomePage.aspx">Hardware Acceleration Club KUET</a>
        
    
    </div> <!-- end of footer -->  
</div> <!-- end of footer_wrapper -->


    </div>
    </form>
</body>
</html>
