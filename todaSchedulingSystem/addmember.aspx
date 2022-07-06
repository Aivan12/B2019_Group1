<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addmember.aspx.cs" Inherits="todaSchedulingSystem.addmember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            position: absolute;
        }
        .newStyle2 {
            position: absolute;
        }
        .newStyle3 {
            position: absolute;
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
        .newStyle7 {
            position: absolute;
        }
        .newStyle8 {
            position: absolute;
        }
        .newStyle9 {
            position: absolute;
        }
        .newStyle10 {
            position: absolute;
        }
        .newStyle11 {
            position: absolute;
        }
        .newStyle12 {
            position: absolute;
        }
        .newStyle13 {
            position: absolute;
        }
        .newStyle14 {
            position: absolute;
        }
        .newStyle15 {
            position: absolute;
        }
        .newStyle16 {
            position: absolute;
        }
        .newStyle17 {
            position: relative;
        }
        .newStyle18 {
            position: absolute;
        }
        .auto-style1 {
            top: -3px;
            left: 0px;
            width: 1px;
            margin-left: 0px;
        }
        .pnlDashboard{
            margin-left:0px;
        }
        .auto-style2{
         margin-left: 0px;
         margin-top:10px;
         height:auto;
           
        }
       
        .newStyle19 {
            position: absolute;
            top: 156px;
            left: 2px;
            font-weight: 700;
        }
        .newStyle20 {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 108px;
        }
        .newStyle21 {
            position: absolute;
            top: 205px;
            left: 0px;
            height: 23px;
            width: 104px;
            bottom: 363px;
            font-weight: 700;
        }
        .newStyle22 {
            position: absolute;
            top: 254px;
            left: 1px;
            width: 110px;
            font-weight: 700;
        }
       
        .newStyle23 {
            position: absolute;
            top: 535px;
            left: 2px;
        }
       
        .newStyle24 {
            position: absolute;
        }
        .auto-style3 {
            position: absolute;
            left: 457px;
            top: 263px;
        }
        .newStyle25 {
            position: absolute;
        }
        .auto-style4 {
            position: absolute;
            left: 527px;
            top: 261px;
            width: 116px;
            height: 15px;
        }
        .newStyle26 {
            position: absolute;
        }
        .auto-style5 {
            position: absolute;
            left: 722px;
            top: 117px;
        }
        .newStyle27 {
            position: absolute;
        }
        .auto-style6 {
            position: absolute;
            left: 806px;
            top: 118px;
        }
        #GridView1{
            height 300px;
            width:300px;
            overflow:hidden;
            margin-left: 5px;
        }
       
        .auto-style7 {
            position: relative;
            top: 18px;
            left: 0px;
            width: 1070px;
            height: 562px;
        }
        .newStyle28 {
            position: absolute;
        }
        .auto-style8 {
            position: absolute;
            width: 693px;
            height: 186px;
            overflow: scroll;
            left: 323px;
            top: 383px;
        }
       
        .newStyle29 {
            position: absolute;
            top: 36px;
            left: 40px;
            height: 19px;
            width: 44px;
            font-weight: bold;
            font-size: 25px;
        }
        .newStyle30 {
            position: absolute;
            top: 36px;
            left: 23px;
            width: 14px;
            font-weight: bold;
            font-size: 25px;
        }
       
    </style>
</head>
<body class="auto-style2">
    <form id="form1" runat="server">
    
        
        <asp:Panel ID="Panel1" runat="server" style="margin-left: 159px; " CssClass="auto-style7">
            <asp:Label ID="Label1" runat="server" Text="Adding New Member" CssClass="newStyle1" style="top: 36px; left: 411px; height: 10px"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="newStyle2" style="top: 115px; left: 187px" Text="Full Name:"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="newStyle3" style="top: 146px; left: 187px" Text="Age:"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="newStyle4" style="top: 181px; left: 187px" Text="Address:"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="newStyle5" style="top: 219px; left: 187px" Text="Contact"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="newStyle6" style="top: 260px; left: 189px" Text="Group:"></asp:Label>
            <asp:TextBox ID="txtbFullname" runat="server" BackColor="Transparent" CssClass="newStyle7" style="top: 116px; left: 284px" Width="40%"></asp:TextBox>
            <asp:TextBox ID="txtbAge" runat="server" CssClass="newStyle8" style="top: 147px; left: 285px; right: 501px" Width="40%"></asp:TextBox>
            <asp:TextBox ID="txtbAddress" runat="server" CssClass="newStyle9" style="top: 183px; left: 285px" Width="40%"></asp:TextBox>
            <asp:TextBox ID="txtbContact" runat="server" CssClass="newStyle10" style="top: 221px; left: 286px" Width="40%"></asp:TextBox>
            <asp:DropDownList ID="ddGroup" runat="server" CssClass="newStyle11" style="top: 263px; left: 286px; height: 16px; width: 125px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnInsert" runat="server" CssClass="newStyle12" OnClick="btnInsert_Click" style="top: 320px; left: 275px" Text="Insert" />
            <asp:Button ID="btnUpdate" runat="server" CssClass="newStyle14" style="top: 319px; left: 383px" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnDelete" runat="server" CssClass="newStyle15" style="top: 320px; left: 506px" Text="Delete" OnClick="btnDelete_Click" />
           
            
         
               
            <asp:Label ID="lblmemberid" runat="server"></asp:Label>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style3" Text="Location:"></asp:Label>
            <asp:DropDownList ID="ddLocation" runat="server" CssClass="auto-style4">
                <asp:ListItem>Palengke</asp:ListItem>
                <asp:ListItem>Tcu</asp:ListItem>
                <asp:ListItem>Poolan</asp:ListItem>
                <asp:ListItem>Aquino</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style5" Text="Tricycle No."></asp:Label>
            <asp:TextBox ID="txtbTriNum" runat="server" CssClass="auto-style6"></asp:TextBox>
        </asp:Panel>
    
    
        <asp:Panel ID="pnlDashboard" runat="server" BackColor="#5D6D7E" CssClass="newStyle18 auto-style1" Width="115px" style="left: 0px; top: -3px; height: 594px">
            <asp:Button ID="btnDashboard" runat="server" BackColor="Transparent" BorderColor="Transparent" CssClass="newStyle19" ForeColor="#B2BABB" Text="Dashboard" Width="110px" OnClick="btnDashboard_Click" />
            <asp:Button ID="btnSchedule" runat="server" CssClass="newStyle21" Text="Schedule" BackColor="Transparent" BorderColor="Transparent" ForeColor="#B2BABB" Height="26px" Width="110px" OnClick="btnSchedule_Click1" />
            <asp:Button ID="btnAddmember" runat="server" CssClass="newStyle22" Text="Add Member" BackColor="Transparent" BorderColor="Transparent" Enabled="False" ForeColor="White" />
            <asp:Label ID="Label10" runat="server" CssClass="newStyle30" ForeColor="#FF0D0D" Text="T"></asp:Label>
            <asp:Label ID="Label11" runat="server" CssClass="newStyle29" ForeColor="WhiteSmoke" Text="ODA"></asp:Label>
        </asp:Panel>
        <div ID="gridviewCon" class="auto-style8">
            <asp:GridView ID="GridView1" runat="server" Height="171px" Width="638px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            </div>
    </form>
</body>
</html>
