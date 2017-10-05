<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Std_Cpny.aspx.cs" Inherits="Std_Cpny" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 800px">
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Student_Home.aspx" Text="HOME" ToolTip="Go To Student Home Page" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Student_Update.aspx" Text="UPADTE " ToolTip="Update Your Details" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" Text="VIEW" ToolTip="COMPANY" Width="164px" PostBackUrl="~/Std_Cpny.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Posted_Job.aspx" Text="JOBS" ToolTip="NEW POSTED JOB" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Height="39px" ToolTip="USER NAME" Width="225px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Height="20px" Text="LOGOUT" Width="100px" PostBackUrl="~/Home.aspx" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="cname" HeaderText="Company" SortExpression="cname" />
                <asp:BoundField DataField="crname" HeaderText="CR Name" SortExpression="crname" />
                <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="addr" HeaderText="Address" SortExpression="addr" />
                <asp:BoundField DataField="ph" HeaderText="Contact" SortExpression="ph" />
                <asp:BoundField DataField="edate" HeaderText="Established" SortExpression="edate" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [email], [cname], [crname], [addr], [ph], [edate] FROM [com]"></asp:SqlDataSource>
    </div>
    <div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

