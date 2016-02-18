<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forum.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Contact Redox - Free CSS Templates</title>
<meta name="keywords" content="contact redox, red, dark brown, free css templates, web design, CSS, HTML" />
<meta name="description" content="Contact Redox - free CSS templates + free website templates" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 115px;
        }
        .auto-style2 {
            width: 115px;
            height: 33px;
        }
        .auto-style3 {
            height: 33px;
        }
        #TextArea1 {
            height: 35px;
            width: 267px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
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
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="forum.aspx" class="current">Forum</a></li>
				<li><a href="Registration.aspx">Register</a></li>
                <li><asp:Button ID="Button3" Text="Logout" runat="server" ForeColor="Red" BackColor="Black" OnClick="Button3_Click" /></li>

            </ul>    	
    
    	</div> <!-- end of templatemo_menu -->
        
        <div class="cleaner"></div>
	</div> <!-- end of header -->
    
</div> <!-- end of header_wrapper -->
            
<div id="templatemo_content_wrapper">
	<div id="templatemo_content">


		<div id="main_content">

        
       <div style="height: 514px; width: 585px; margin-right:0px;">
           <div style="background-color:green">


               <h1>Problems And Solution</h1>

               <% for (int i = b1; i <= b2; i++)
                  {
                      Name.Text = name[i];
                      date.Text = time[i];
                      questionNo.Text = "Question No: "+id[i];
                      question.Text = Q[i];  
               %>

               <br />
               <div style="background-color: wheat">
                   <asp:Label ID="Name" runat="server" Text="Name" ForeColor="red"></asp:Label>
                   &nbsp;<asp:Label ID="date" runat="server" Text="timedate" ForeColor="MidnightBlue"></asp:Label>
               </div>
               <div style="background-color: darkmagenta">
                   <asp:Label ID="questionNo" runat="server" Text="no"></asp:Label>
                   &nbsp;<asp:Label ID="question" runat="server" Text="question"></asp:Label>
               </div>
               <div >
                   <br />
          <% int n;
               for (int j = 1; j <= a; j++)
              {
                  n = Int32.Parse(id1[j]);
                   if(n==i)
                   {
                       replierName.Text = name1[j];
                       replyDate.Text = time1[j];
                       Answer0.Text = "Answer : "+id1[j];
                       Answer.Text = Q1[j]; 
              %>
               <div style="background-color: white">
                <asp:Label ID="replierName" runat="server" Text="replierName" ForeColor="Green"></asp:Label>
            &nbsp;<asp:Label ID="replyDate" runat="server" Text="timedate" ForeColor="MidnightBlue"></asp:Label>
                   </div>
               <div style="background-color: white">
                    <asp:Label ID="Answer0" runat="server" Text="No" ForeColor="Red"></asp:Label>
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Answer" runat="server" Text="answer" Font-Names="Comic Sans MS" ForeColor="Fuchsia"></asp:Label>
                    &nbsp;
                   </div>
                   <%} %>
                    <%} %>
           </div>
               <% }%>
           </div>
           
          
                <div style="height: 156px">
                    <br />
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                your question/ans</td>
                            <td>
                                &nbsp;<textarea id="TextArea1" runat="server" name="S1"></textarea>&nbsp;
                                <asp:Button ID="Button1" runat="server"  Text="ask?" OnClick="Button1_Click" style="height: 26px" />
                    <asp:Label ID="Message" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="qno" runat="server" Text="Ans to Question No"></asp:Label>
                                </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="121px"></asp:TextBox>
                                <asp:Button ID="Button4" runat="server"  Text="answer"  style="height: 26px" OnClick="Button4_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td class="auto-style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>

        
        </div> <!-- end of main_content -->
        
        <div id="sidebar">
        
        
        <div id="sidebar_featured_project">
        	
            <h3>&nbsp;</h3>
            <div class="right">
            	<h6>&nbsp;</h6>
            </div>
            
        </div>
        
        <div id="news_section">
            
            <h3>&nbsp;</h3>
                    
        </div>
        
        
        </div> <!-- end of sidebar -->

		<div class="cleaner"></div>
            <div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">

        </div> <!-- end of footer -->  

    </div>
	</div> <!-- end of content -->
    
</div> <!-- end of content_wrapper --> 


    </form>

</body>
</html>
