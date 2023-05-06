
<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Demo1.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>

    </table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="263px" Width="310px" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
    <ItemTemplate>
        <table>
            <tr>
                <td style="text-align:center">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("r_name") %>' Font-Names="Arial"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Image ID="Image1" runat="server" Height="279px" ImageUrl='<%# Eval("r_image") %>' Width="278px" />
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("cook") %>' Font-Names="Arial"></asp:Label>

                </td>
            </tr>

        </table>
        <br />
        <br />
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecipeConnectionString3 %>" SelectCommand="SELECT [r_name], [cook], [r_image] FROM [recipe]"></asp:SqlDataSource>
</asp:Content>

