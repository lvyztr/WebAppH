<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebAppH.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        Login</td>
                    </tr>
                </table>
         
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text="Username :"></asp:Label>
&nbsp;<asp:TextBox ID="txtUsername" runat="server" Width="187px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Password :"></asp:Label>
&nbsp;<asp:TextBox ID="txtPass" runat="server" Width="186px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Login" />
&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Exit" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
         
                <br />
                         
</asp:Content>
