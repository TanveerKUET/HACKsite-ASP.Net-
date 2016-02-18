<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a.aspx.cs" Inherits="a" %>

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
                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                <asp:BoundField DataField="qno" HeaderText="qno" SortExpression="qno" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hackdatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [qanswer] WHERE [Id] = @Id" InsertCommand="INSERT INTO [qanswer] ([name], [timedate], [answer], [qno]) VALUES (@name, @timedate, @answer, @qno)" SelectCommand="SELECT [Id], [name], [timedate], [answer], [qno] FROM [qanswer]" UpdateCommand="UPDATE [qanswer] SET [name] = @name, [timedate] = @timedate, [answer] = @answer, [qno] = @qno WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="timedate" Type="DateTime" />
                <asp:Parameter Name="answer" Type="String" />
                <asp:Parameter Name="qno" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="timedate" Type="DateTime" />
                <asp:Parameter Name="answer" Type="String" />
                <asp:Parameter Name="qno" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <p>
            <textarea id="TextArea1" runat="server" cols="20" name="S1" rows="2"></textarea><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
    </form>
</body>
</html>
