<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="schedule.aspx.cs" Inherits="todaSchedulingSystem.schedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *{
            margin:0px;
            padding:0px;
            box-sizing:border-box;
        }
       
        .newStyle1 {
            position: absolute;
        }
        table, th, td {
          border:1px solid black;
          
        }
        .newStyle2 {
            position: absolute;
        }
        .newStyle3 {
            position: absolute;
            top: 11px;
            left: 574px;
            height: 454px;
            width: 627px;
            text-align:center;
        }

        #form1 {
            width: 1254px;
            height: 668px;
        }

        .newStyle4 {
            position: absolute;
            
        }
        .auto-style1 {
            top: 8px;
            left: 123px;
            width: 447px;
            height: 249px;
        }
        
        .auto-style2 {
            right: 1170px;
        }
      
        .newStyle8 {
            font-weight: 700;
        }
        .newStyle9 {
            position: absolute;
            top: 33px;
            left: 40px;
            font-weight: bold;
            font-size: 25px;
            height: 29px;
        }
        .newStyle10 {
            position: absolute;
            top: 33px;
            left: 23px;
           font-weight: bold;
            font-size: 25px;
        }
      
        .newStyle11 {
            position: absolute;
            top: 153px;
            left: 2px;
            height: 27px;
            width: 58px;
            font-weight: 700;
        }
      
        .newStyle12 {
            position: absolute;
            top: 202px;
            left: 0px;
            height: 27px;
            width: 53px;
            font-weight: 700;
        }
        .newStyle13 {
            position: absolute;
        }
        .auto-style3 {
            top: 251px;
            left: 1px;
            height: 27px;
            width: 49px;
            font-weight: 700;
        }
      
        .newStyle14 {
            position: absolute;
        }
        .auto-style4 {
            top: 500px;
            left: 1103px;
            width: 95px;
        }
      
    </style>
</head>
<body style="height: 670px; width: 1264px">
    <form id="form1" runat="server">
   
    
        <asp:Panel ID="pnlCalendar" runat="server" CssClass="newStyle4 auto-style1">
            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Height="241px" Width="441px"><TodayDayStyle BackColor="Blue"
                        ForeColor="Yellow">
         </TodayDayStyle>

            </asp:Calendar>
        </asp:Panel>
    
        
            <asp:GridView ID="Gvschedule" runat="server" CssClass="newStyle3" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        
    
        <!--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>-->
    
   
        <asp:Panel ID="pnlSidebar" runat="server" BackColor="#5D6D7E" CssClass="newStyle5 auto-style2" Height="665px" Width="115px">
            <asp:Label ID="Label2" runat="server" CssClass="newStyle10" ForeColor="#FF0D0D" Text="T"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="newStyle9" ForeColor="WhiteSmoke" Text="ODA"></asp:Label>
            <asp:Button ID="Button2" runat="server" BackColor="Transparent" BorderColor="Transparent" CssClass="newStyle12" Enabled="False" ForeColor="White" Text="Schedule" Width="110px" />
            <asp:Button ID="btnAddmember" runat="server" BackColor="Transparent" BorderColor="Transparent" CssClass="newStyle13 auto-style3" ForeColor="#B2BABB" OnClick="btnAddmember_Click" Text="Add Member" Width="110px" />
            <asp:Button ID="btnExportSched" runat="server" CssClass="newStyle14 auto-style4" OnClick="btnExportSched_Click" Text="Export Excel" />
        </asp:Panel>
    
   
        <asp:Button ID="btnDashboard" runat="server" CssClass="newStyle11" Text="Dashboard" BackColor="Transparent" BorderColor="Transparent" ForeColor="#B2BABB" Width="110px" OnClick="btnDashboard_Click" />
    
   
    </form>
</body>
</html>
