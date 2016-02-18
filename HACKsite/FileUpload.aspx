<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileUpload.aspx.cs" Inherits="FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
<form id="form1" runat="server">
<div>
<h3> File Upload:</h3>
<br />
   <asp:FileUpload ID="FileUpload1" runat="server" />
   <br /><br />
   <asp:Button ID="btnsave" runat="server" 
               onclick="btnsave_Click" Text="Save" 
               Width="85px" />
   <br /><br />
   <asp:Label ID="lblmessage" runat="server" />
    <br />
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="110px" Width="219px" />
    <br />
    <br />
</div>
</form>
</body>
</html>
