<%@ Page Language="C#" AutoEventWireup="true" CodeFile="q.aspx.cs" Inherits="q" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="timedate" HeaderText="timedate" SortExpression="timedate" />
                <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                <asp:BoundField DataField="roll" HeaderText="roll" SortExpression="roll" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hackdatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [question] WHERE [Id] = @Id" InsertCommand="INSERT INTO [question] ([name], [timedate], [question], [roll]) VALUES (@name, @timedate, @question, @roll)" ProviderName="<%$ ConnectionStrings:hackdatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [name], [timedate], [question], [roll] FROM [question]" UpdateCommand="UPDATE [question] SET [name] = @name, [timedate] = @timedate, [question] = @question, [roll] = @roll WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="timedate" Type="DateTime" />
                <asp:Parameter Name="question" Type="String" />
                <asp:Parameter Name="roll" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="timedate" Type="DateTime" />
                <asp:Parameter Name="question" Type="String" />
                <asp:Parameter Name="roll" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
