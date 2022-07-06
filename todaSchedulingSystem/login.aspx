 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="todaSchedulingSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            position: absolute;
        }
        .auto-style1 {
            top: 131px;
            left: 476px;
            width: 303px;
        }
        .newStyle2 {
            position: absolute;
        }
        .auto-style2 {
            top: 176px;
            left: 478px;
            width: 309px;
        }
        .newStyle3 {
            position: absolute;
            top: 130px;
            left: 395px;
            width: 56px;
        }
        .newStyle4 {
            position: absolute;
        }
        .auto-style3 {
            top: 178px;
            left: 398px;
        }
        .newStyle5 {
            position: absolute;
        }
        .auto-style4 {
            top: 96px;
            left: 524px;
            height: 19px;
        }
        .newStyle6 {
            position: absolute;
        }
        .auto-style5 {
            top: 214px;
            left: 477px;
            width: 91px;
            right: 717px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtUsername" runat="server" CssClass="newStyle1 auto-style1"></asp:TextBox>
        <br />
        <asp:TextBox  ID="txtPassword" runat="server" TextMode="Password" CssClass="newStyle2 auto-style2"></asp:TextBox>
        <asp:Panel ID="Panel1" runat="server" Height="282px" style="margin-left: 355px" Width="528px" BorderStyle="Solid">
            <asp:Label ID="Label1" runat="server" CssClass="newStyle3" Text="Username:"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="newStyle4 auto-style3" Text="Password"></asp:Label>
            <asp:Label ID="lblnotif" runat="server" CssClass="newStyle5 auto-style4" Text="Label" Visible="False"></asp:Label>
        </asp:Panel>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="newStyle6 auto-style5" />
    
    </div>
    </form>
</body>
</html>
