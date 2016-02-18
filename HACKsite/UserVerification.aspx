<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserVerification.aspx.cs" Inherits="UserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="roll" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
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
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
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
    </form>
</body>
</html>
