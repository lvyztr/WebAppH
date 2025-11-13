<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebAppH.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 545px;
            height: 368px;
        }
        .auto-style4 {
            text-align: center;
            height: 33px;
        }
        .auto-style7 {
            width: 181px;
            height: 33px;
        }
        .auto-style29 {
            text-align: right;
            width: 181px;
            height: 33px;
        }
        .auto-style30 {
            text-align: right;
            width: 181px;
            height: 34px;
        }
        .auto-style31 {
            width: 181px;
            height: 34px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>jQueryCasesensitive</script>



    <table class="auto-style1">
        <tr>
            <td class="auto-style4" colspan="3">
                <h3>REGISTRATION PAGE</h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">User Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
            <td style="color: #FF0000" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="* Enter user name*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">First Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
            <td style="color: #FF0000" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="* Enter first name*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">Last Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
            <td style="color: #FF0000" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName" ErrorMessage="* Enter last name*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">Email:</td>
            <td class="auto-style31">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td style="color: #FF0000" class="auto-style31">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Invalid email format*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Enter email address*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">Password:</td>
            <td class="auto-style31">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="color: #FF0000" class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="*Enter password*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">Confirm Password:</td>
            <td class="auto-style31">
                <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="color: #FF0000" class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmPass" ErrorMessage="*Confirm password*"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" ErrorMessage="*Paswords don't match*"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Alumni ConnectConnectionString %>" SelectCommand="SELECT * FROM [AlumniRegistration]"></asp:SqlDataSource>
            </td>
            <td class="auto-style31">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
    </table>



</asp:Content>
