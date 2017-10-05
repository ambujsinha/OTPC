<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Company_View.aspx.cs" Inherits="Company_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 500px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Admin_Home.aspx" Text="HOME" ToolTip="Admin Home Page" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" Text="STUDENT" ToolTip="Student Details" Width="164px" PostBackUrl="~/Student_View.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" Text="TPO" ToolTip="TPO Details" Width="164px" PostBackUrl="~/TPO_View.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Arial Black" Height="39px" Text="COMPANY" ToolTip="Company Details" Width="164px" PostBackUrl="~/Company_View.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Height="39px" Text="Welcome AMY!!!!!" Width="159px"></asp:Label>
&nbsp;
        <asp:Button ID="Button5" runat="server" Font-Bold="True" PostBackUrl="~/Home.aspx" Text="LOGOUT" ToolTip="After All Work" Width="100px" />
        <br />
        <br />
        <div style="height: 279px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="241px" Width="1309px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="cname" HeaderText="COMPANY" SortExpression="cname" />
                    <asp:BoundField DataField="crname" HeaderText="CR NAME" SortExpression="crname" />
                    <asp:BoundField DataField="email" HeaderText="EMAIL" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="ph" HeaderText="PHONE" SortExpression="ph" />
                    <asp:BoundField DataField="addr" HeaderText="ADDRESS" SortExpression="addr" />
                    <asp:BoundField DataField="edate" HeaderText="ESTABLISHED" SortExpression="edate" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [com] WHERE [email] = @original_email AND [cname] = @original_cname AND [crname] = @original_crname AND [ph] = @original_ph AND [addr] = @original_addr AND [edate] = @original_edate" InsertCommand="INSERT INTO [com] ([cname], [crname], [email], [ph], [addr], [edate]) VALUES (@cname, @crname, @email, @ph, @addr, @edate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cname], [crname], [email], [ph], [addr], [edate] FROM [com]" UpdateCommand="UPDATE [com] SET [cname] = @cname, [crname] = @crname, [ph] = @ph, [addr] = @addr, [edate] = @edate WHERE [email] = @original_email AND [cname] = @original_cname AND [crname] = @original_crname AND [ph] = @original_ph AND [addr] = @original_addr AND [edate] = @original_edate">
                <DeleteParameters>
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_cname" Type="String" />
                    <asp:Parameter Name="original_crname" Type="String" />
                    <asp:Parameter Name="original_ph" Type="String" />
                    <asp:Parameter Name="original_addr" Type="String" />
                    <asp:Parameter Name="original_edate" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cname" Type="String" />
                    <asp:Parameter Name="crname" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="ph" Type="String" />
                    <asp:Parameter Name="addr" Type="String" />
                    <asp:Parameter Name="edate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cname" Type="String" />
                    <asp:Parameter Name="crname" Type="String" />
                    <asp:Parameter Name="ph" Type="String" />
                    <asp:Parameter Name="addr" Type="String" />
                    <asp:Parameter Name="edate" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_cname" Type="String" />
                    <asp:Parameter Name="original_crname" Type="String" />
                    <asp:Parameter Name="original_ph" Type="String" />
                    <asp:Parameter Name="original_addr" Type="String" />
                    <asp:Parameter Name="original_edate" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

