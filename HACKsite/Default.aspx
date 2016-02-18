<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 129px;
        }
        .auto-style3 {
            width: 638px;
        }
        .auto-style4 {
            width: 129px;
            height: 30px;
        }
        .auto-style5 {
            width: 638px;
            height: 30px;
        }
        .auto-style6 {
            width: 129px;
            height: 23px;
        }
        .auto-style7 {
            width: 638px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Roll</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="UserIDTB" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="IDValidator" runat="server" ErrorMessage="*Not a valid id" MinimumValue="1107001" MaximumValue="1107060" SetFocusOnError="True" Type="Integer" ControlToValidate="UserIDTB" Font-Names="Comic Sans MS" ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="NameTB" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="*User name required" ControlToValidate="NameTB" Font-Names="Comic Sans MS" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">password:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="passTB" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ErrorMessage="*password required" ControlToValidate="passTB" Font-Names="Comic Sans MS" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">email:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="emailTB" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="emailvalidator" runat="server" ErrorMessage="*email required" ControlToValidate="emailTB" Font-Names="Comic Sans MS" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Department</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>CSE</asp:ListItem>
                            <asp:ListItem>EEE</asp:ListItem>
                            <asp:ListItem>ME</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ErrorMessage="errormessage" ControlToValidate="DropDownList1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Forum</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Robotics</asp:ListItem>
                            <asp:ListItem>BioInformatics</asp:ListItem>
                            <asp:ListItem>Embedded System</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ErrorMessage="errormessage" ControlToValidate="DropDownList2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Register" runat="server" OnClick="Register_Click" Text="Register" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">
                        <asp:Label ID="Message" runat="server" ForeColor="#66FF66"></asp:Label>
                    </td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
