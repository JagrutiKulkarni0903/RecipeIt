 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Demo1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 345px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <table align="center" style="background-color: #99CCFF; width: 700px; height: 600px">
        <tr>
            <td colspan="2" align="center" class="auto-style5"><h2>Registration</h2></td>
        </tr>
        <tr>
            <td style="width:50%"><b>First Name</b></td>
            <td class="auto-style1" >
                <asp:TextBox ID="TextBox1" runat="server" Height="43px" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="First name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only characters accepted" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%"><b>Last Name</b></td>
            <td class="auto-style1" >
                <asp:TextBox ID="TextBox2" runat="server" Height="48px" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only characters accepted" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%"><b>Email(as your username)</b></td>
            <td class="auto-style1" >
                <asp:TextBox ID="TextBox3" runat="server" Height="48px" Width="297px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="email is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%"><b>Phone No</b></td>
            <td class="auto-style1" >
                <asp:TextBox ID="TextBox4" runat="server" Height="48px" Width="297px" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Phone no is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%"><b>Password</b></td>
            <td class="auto-style1" >
                <asp:TextBox ID="TextBox5" runat="server" Height="48px" Width="297px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%"><b>Confirm Password</b></td>
            <td class="auto-style1" >
                <asp:TextBox ID="TextBox6" runat="server" Height="48px" Width="297px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password dose not match" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password does  ot match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="true" 
                Font-size="Large" Height="50px" Width="145px" OnClick="Button1_Click"/></td>
        </tr>
            <tr>
                <td colspan="2" style="background-color: #FFFFFF">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        <tr>
            <td colspan="2"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>

        </tr>
    </table>
    </form>
</body>
</html>
