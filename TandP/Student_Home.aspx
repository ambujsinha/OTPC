<%@ Page Title="Student Home" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Student_Home.aspx.cs" Inherits="Student_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 800px">
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Student_Home.aspx" Text="HOME" ToolTip="Go To Student Home Page" Width="164px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Student_Update.aspx" Text="UPADTE " ToolTip="Update Your Details" Width="164px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" Text="VIEW" ToolTip="COMPANY" Width="164px" OnClick="Button3_Click" PostBackUrl="~/Std_Cpny.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Posted_Job.aspx" Text="JOBS" ToolTip="NEW POSTED JOB" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Height="39px" ToolTip="USER NAME" Width="225px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Height="20px" Text="LOGOUT" Width="100px" OnClick="Button4_Click" PostBackUrl="~/Home.aspx" />
        <br />
        
        <asp:Timer ID="Timer1" runat="server">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="add" HeaderText="add" SortExpression="add" />
                <asp:BoundField DataField="cgpa" HeaderText="cgpa" SortExpression="cgpa" />
                <asp:BoundField DataField="batch" HeaderText="batch" SortExpression="batch" />
                <asp:BoundField DataField="cntct" HeaderText="cntct" SortExpression="cntct" />
                <asp:BoundField DataField="m1" HeaderText="m1" SortExpression="m1" />
                <asp:BoundField DataField="m2" HeaderText="m2" SortExpression="m2" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [email], [dob], [add], [cgpa], [batch], [cntct], [m1], [m2] FROM [stu] WHERE ([email] = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="std_eid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

