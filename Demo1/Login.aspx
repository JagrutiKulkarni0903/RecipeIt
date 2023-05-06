<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Demo1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" style="background-color: #99CCFF; width: 500px; height: 400px">
        <tr>
            <td colspan="2" align="center"><h2>Login</h2></td>
        </tr>
        <tr>
            <td style="width:50%"><b>Email(as your username)</b></td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" Height="48px" TextMode="Email" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  style="width:50%"><b>Password</b></td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" Height="48px" TextMode="Password" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="true" 
                Font-size="Large" Height="50px" Width="154px" />
            </td>
        </tr>
        <tr>
            <td colspan="2"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>
    </form>
</body>
</html>
