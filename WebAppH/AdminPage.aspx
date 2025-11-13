<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebAppH.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <asp:SqlDataSource ID="SqlDataSourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:AlumniConnectConnectionString %>" SelectCommand="SELECT * FROM [Admins]"></asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSourceAdmin" DefaultMode="Insert">
    <EditItemTemplate>
        UserName:
        <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
        <br />
        Password:
        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        UserName:
        <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
        <br />
        Password:
        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        UserName:
        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
        <br />
        Password:
        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSourceAlumniDetails" runat="server" ConnectionString="<%$ ConnectionStrings:Alumni ConnectConnectionString %>" SelectCommand="SELECT * FROM [AlumniDetails]"></asp:SqlDataSource>


</asp:Content>
