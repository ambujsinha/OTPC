<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Posted_Job.aspx.cs" Inherits="Posted_Job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 800px">
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Student_Home.aspx" Text="HOME" ToolTip="Go To Student Home Page" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Student_Update.aspx" Text="UPADTE " ToolTip="Update Your Details" Width="164px"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" Text="VIEW" ToolTip="COMPANY" Width="164px"  PostBackUrl="~/Std_Cpny.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Posted_Job.aspx" Text="JOBS" ToolTip="NEW POSTED JOB" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Height="39px" ToolTip="USER NAME" Width="225px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Height="20px" Text="LOGOUT" Width="100px"  PostBackUrl="~/Home.aspx" />
        <br />
        <div style="height: 461px; width: 1301px">
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cname" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="518px" Width="1300px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="cname" HeaderText="COMPANY" ReadOnly="True" SortExpression="cname" />
                    <asp:BoundField DataField="crname" HeaderText="CR NAME" SortExpression="crname" />
                    <asp:BoundField DataField="jpost" HeaderText="POST" SortExpression="jpost" />
                    <asp:BoundField DataField="jcri" HeaderText="CRITERIA" SortExpression="jcri" />
                    <asp:BoundField DataField="jsal" HeaderText="SALARY" SortExpression="jsal" />
                    <asp:BoundField DataField="jstrm" HeaderText="STREAM" SortExpression="jstrm" />
                    <asp:BoundField DataField="jloc" HeaderText="LOCATION" SortExpression="jloc" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cname], [crname], [jpost], [jcri], [jsal], [jstrm], [jloc] FROM [job]"></asp:SqlDataSource>
            <br />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

