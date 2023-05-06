
<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AddRecipe.aspx.cs" Inherits="Demo1.AddRecipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center; background-color: #99CCFF; position: static">
    <table align="center" >
        <tr>
            <td><h1>Add Recipe</h1></td>
        </tr>
        <tr>
            <td><h3>Recipe Id</h3></td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><h3>Recipe Name</h3></td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><h3>Recipe By</h3>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><h3>Recipe Image</h3></td>
            <td class="auto-style7">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td><h3>Procedure</h3></td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" width="50%" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Add" />
            </td>
        </tr>
        <tr>
            <td colspan="2"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>

        </tr>
    </table>
</div>

</asp:Content>

