<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebAppH.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="UniID" DataValueField="UniID">
                <asp:ListItem>Select University</asp:ListItem>
                <asp:ListItem>The University of Cape Town</asp:ListItem>
                <asp:ListItem>Stellenbosch University</asp:ListItem>
                <asp:ListItem>University of Pretoria</asp:ListItem>
                <asp:ListItem>University of Witswatersrand</asp:ListItem>
                <asp:ListItem>University of Kwazulu Natal</asp:ListItem>
                <asp:ListItem>University of Western Cape</asp:ListItem>
                <asp:ListItem>Rhodes University</asp:ListItem>
                <asp:ListItem>The University of South Africa</asp:ListItem>
                <asp:ListItem>North West Uiversity</asp:ListItem>
                <asp:ListItem>University of the Free State</asp:ListItem>
                <asp:ListItem>Nelson Mandela University</asp:ListItem>
                <asp:ListItem>Cape Peninsula University of Technology</asp:ListItem>
                <asp:ListItem>Durban University of Technology</asp:ListItem>
                <asp:ListItem>University of Zululand</asp:ListItem>
                <asp:ListItem>Monash University</asp:ListItem>
                <asp:ListItem>Vaal University of Technology</asp:ListItem>
                <asp:ListItem>Central University of Technology</asp:ListItem>
                <asp:ListItem>Walter Sisulu University</asp:ListItem>
                <asp:ListItem>University of Limpopo</asp:ListItem>
                <asp:ListItem>Tshwane University of Technology</asp:ListItem>
                <asp:ListItem>University Of Fort hare</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlumniConnectConnectionString %>" SelectCommand="SELECT * FROM [University]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="submit" />
        </div>
    </form>
</body>
</html>
