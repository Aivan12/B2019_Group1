<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="todaSchedulingSystem.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        body{
            background-color:#283747;
        }
        .newStyle1 {
            position: absolute;
        }
        .newStyle2 {
            position: absolute;
        }
        .newStyle3 {
            position: absolute;
            top: 153px;
            left: 2px;
            width: 110px;
            font-weight: 700;
        }
        .newStyle4 {
            position: absolute;
        }
        .newStyle5 {
            position: absolute;
        }
        .newStyle6 {
            position: absolute;
        }
        .auto-style1 {
            margin-right: 3px;
        }
        .pnlDashboard{
            margin-left:0px;
            height: 990px;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-top:0px;
            height:559px;
           
            overflow: hidden; 
           
        }
        .auto-style3 {
            position: absolute;
            top: 251px;
            left: 1px;
            width: 112px;
            font-weight: 700;
        }
        .auto-style4 {
            position: absolute;
            top: 202px;
            left: 0px;
            font-weight: 700;
        }
        .newStyle7 {
            position: absolute;
        }
        .newStyle8 {
            position: absolute;
            font-weight: bold;
            top: 33px;
            left: 23px;
            width: 13px;
            height: 21px;
            font-size: 25px;
        }
        .newStyle9 {
            position: absolute;
            font-weight: bold;
            font-size: 25px;
        }
        .auto-style5 {
            top: 33px;
            left: 40px;
            height: 22px;
            width: 52px;
        }
        .newStyle10 {
            position: absolute;
        }
        .auto-style6 {
            top: 28px;
            left: 214px;
            width: 120px;
            height: 101px;
        }
        .newStyle11 {
            position: absolute;

        }
        .auto-style7 {
            top: 21px;
            left: 54px;
            width: 39px;
            height: 27px;
            font-size: larger;
            font-weight: 700;
        }
        .newStyle12 {
            position: absolute;
        }
        .auto-style8 {
            top: 69px;
            left: 13px;
            width: 78px;
            font-weight: 700;
        }
        .newStyle13 {
            position: absolute;
        }
        .auto-style9 {
            top: 145px;
            left: 126px;
            width: 1146px;
            height: 107px;
        }
        .newStyle14 {
            position: absolute;
        }
        .auto-style10 {
            top: 7px;
            left: 9px;
            width: 142px;
            height: 24px;
            font-weight: 700;
            font-size: larger;
        }
        .newStyle15 {
            position: absolute;
        }
        .auto-style11 {
            top: 44px;
            left: 0px;
        }
        .newStyle16 {
            position: absolute;
        }
        .auto-style12 {
            top: 44px;
            left: 93px;
        }
        .newStyle17 {
            position: absolute;
        }
        .auto-style13 {
            top: 42px;
            left: 268px;
        }
        .newStyle18 {
            position: absolute;
        }
        .newStyle19 {
            position: absolute;
            top: 42px;
            left: 341px;
            height: 28px;
            width: 70px;
        }
        .newStyle20 {
            position: absolute;
        }
        .auto-style14 {
            top: 73px;
            left: 92px;
            width: 61px;
        }
        .newStyle21 {
            position: absolute;
        }
        .auto-style15 {
            top: 43px;
            left: 449px;
        }
        .newStyle22 {
            position: absolute;
        }
        .auto-style16 {
            top: 43px;
            left: 506px;
            right: 516px;
        }
        .newStyle23 {
            position: absolute;
            text-align:center;
        }
        .auto-style17 {
            top: 267px;
            left: 131px;
            width: 1140px;
            height: 282px;
        }

        #gridviewCon {
            position: absolute;
            width: 1031px;
            height: 226px;
            overflow: scroll;
            top: 12px;
            left: 31px;
        }
        .newStyle24 {
            position: absolute;
        }
        .auto-style18 {
            top: 248px;
            left: 965px;
            width: 99px;
        }
    </style>
</head>
<body class="auto-style2">
    <form id="form1" runat="server">
    <div class="pnlDashboard">
   
        <asp:Panel ID="pnlDashboard" runat="server" BackColor="#5D6D7E" Height="643px" Width="115px" CssClass="auto-style1">
            <asp:Button ID="btnDashboard" runat="server" BackColor="Transparent" BorderColor="Transparent" CssClass="newStyle3" ForeColor="White" Text="Dashboard" Width="110px" Enabled="False" />
            <asp:Button ID="btnSchedule" runat="server" BackColor="Transparent" BorderColor="Transparent" CssClass="auto-style4" ForeColor="#B2BABB" OnClick="btnSchedule_Click" Text="Schedule" Width="110px" />
            <asp:Button ID="btnLogout" runat="server" BackColor="Transparent" BorderColor="Transparent" CssClass="newStyle5" ForeColor="#B2BABB" style="top: 521px; left: 1px; font-weight: 700;" Text="Logout" Width="110px" OnClick="btnLogout_Click" />
            <asp:Button ID="btnAddmember" runat="server" BackColor="Transparent" BorderColor="Transparent" CssClass="auto-style3" ForeColor="#B2BABB" OnClick="btnAddmember_Click" Text="Add Member" Width="110px" />
            <asp:Label ID="Label2" runat="server" CssClass="newStyle8" ForeColor="#FF0D0D" Text="T"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="newStyle9 auto-style5" ForeColor="WhiteSmoke" Text="ODA"></asp:Label>
            <asp:Panel ID="pnlTotalmember" runat="server" CssClass="newStyle10 auto-style6" Height="100px" Width="150px" BackColor="#5D6D7E">
                <asp:Label ID="lblTotalMember" runat="server" CssClass="newStyle11 auto-style7" Text="Label" ForeColor="White"></asp:Label>
                <asp:Label ID="Label4" runat="server" CssClass="newStyle12 auto-style8" Text="Members" ForeColor="#B2BABB"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="pnlDailyBoundry" runat="server" CssClass="newStyle13 auto-style9">
                <asp:Label ID="Label5" runat="server" CssClass="newStyle14 auto-style10" Text="Daily Boundary" ForeColor="White"></asp:Label>
                <asp:Label ID="Label6" runat="server" CssClass="newStyle15 auto-style11" Text="Member ID :" ForeColor="White"></asp:Label>
                <asp:TextBox ID="txtbMemberid" runat="server" CssClass="newStyle16 auto-style12"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" CssClass="newStyle17 auto-style13" Text="Payment :" ForeColor="White"></asp:Label>
                <asp:DropDownList ID="ddPayment" runat="server" CssClass="newStyle19">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnDailyBoundry" runat="server" CssClass="newStyle20 auto-style14" OnClick="btnDailyBoundry_Click" Text="Save" />
                <asp:Label ID="Label8" runat="server" CssClass="newStyle21 auto-style15" Text="Date :" ForeColor="White"></asp:Label>
                <asp:TextBox ID="txtbdate" runat="server" CssClass="newStyle22 auto-style16" Enabled="False"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="pnlgridview" runat="server" CssClass="newStyle23 auto-style17" BackColor="White" ForeColor="Black">
                 <div ID="gridviewCon">
                <asp:GridView ID="gwDashboard" runat="server" CssClass="auto-style18" Height="93px" Width="1134px">
                </asp:GridView>
                </div>
                 <asp:Button ID="tbnExport" runat="server" CssClass="newStyle24 auto-style18" OnClick="tbnExport_Click" Text="Export Excel" />
            </asp:Panel>
        </asp:Panel>
        <br />
        <br />
   
    </div>
    </form>
</body>
</html>
