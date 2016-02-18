<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Verfy.aspx.cs" Inherits="AdminPage" %>

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
            height: 89px;
            width: 133px;
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
                
				<li><a href="Registration.aspx">Register</a></li>
                
                <li><a href="LogIn.aspx">LogIn</a></li>
				<li><a href="Forum.aspx">Forum</a></li>
				<li><a href="AdminPage.aspx">AdminPage</a></li>
               <li><asp:Button ID="Button1" Text="Logout" runat="server" ForeColor="Red" BackColor="Black" OnClick="Button1_Click"/></li>
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
                
                <br />
                <br />
                <br />
                <br />
            
                  
            &nbsp;<br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="roll" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Height="155px" Width="954px" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="roll" HeaderText="roll" ReadOnly="True" SortExpression="roll" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                        <asp:BoundField DataField="forum" HeaderText="forum" SortExpression="forum" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="verified" HeaderText="verified" SortExpression="verified" />
                        <asp:BoundField DataField="securityques" HeaderText="securityques" SortExpression="securityques" />
                        <asp:BoundField DataField="securityqans" HeaderText="securityqans" SortExpression="securityqans" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hackdatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [HACK] WHERE [roll] = @roll" InsertCommand="INSERT INTO [HACK] ([roll], [name], [email], [department], [forum], [password], [verified], [securityques], [securityqans]) VALUES (@roll, @name, @email, @department, @forum, @password, @verified, @securityques, @securityqans)" ProviderName="<%$ ConnectionStrings:hackdatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [roll], [name], [email], [department], [forum], [password], [verified], [securityques], [securityqans] FROM [HACK]" UpdateCommand="UPDATE [HACK] SET [name] = @name, [email] = @email, [department] = @department, [forum] = @forum, [password] = @password, [verified] = @verified, [securityques] = @securityques, [securityqans] = @securityqans WHERE [roll] = @roll">
                    <DeleteParameters>
                        <asp:Parameter Name="roll" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="roll" Type="Int32" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="department" Type="String" />
                        <asp:Parameter Name="forum" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="verified" Type="String" />
                        <asp:Parameter Name="securityques" Type="String" />
                        <asp:Parameter Name="securityqans" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="department" Type="String" />
                        <asp:Parameter Name="forum" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="verified" Type="String" />
                        <asp:Parameter Name="securityques" Type="String" />
                        <asp:Parameter Name="securityqans" Type="String" />
                        <asp:Parameter Name="roll" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        
        </div> <!-- end of main_content -->
        
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
