<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Student_View.aspx.cs" Inherits="Studennt_View" %>

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
        <asp:Button ID="Button5" runat="server" Font-Bold="True" PostBackUrl="~/Home.aspx" Text="LOGOUT" ToolTip="After All Work" Width="100px"/>
        <br />
        <br />
        <div style="height: 279px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="357px" Width="1300px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="EMAIL" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                    <asp:BoundField DataField="add" HeaderText="ADDRESS" SortExpression="add" />
                    <asp:BoundField DataField="batch" HeaderText="BATCH" SortExpression="batch" />
                    <asp:BoundField DataField="cgpa" HeaderText="CGPA" SortExpression="cgpa" />
                    <asp:BoundField DataField="cntct" HeaderText="CONTACT" SortExpression="cntct" />
                    <asp:BoundField DataField="m1" HeaderText="10th MARKS" SortExpression="m1" />
                    <asp:BoundField DataField="m2" HeaderText="12th MARKS" SortExpression="m2" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [stu] WHERE [email] = @original_email AND [name] = @original_name AND [dob] = @original_dob AND [add] = @original_add AND [batch] = @original_batch AND [cgpa] = @original_cgpa AND [cntct] = @original_cntct AND [m1] = @original_m1 AND [m2] = @original_m2" InsertCommand="INSERT INTO [stu] ([name], [email], [dob], [add], [batch], [cgpa], [cntct], [m1], [m2]) VALUES (@name, @email, @dob, @add, @batch, @cgpa, @cntct, @m1, @m2)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [name], [email], [dob], [add], [batch], [cgpa], [cntct], [m1], [m2] FROM [stu]" UpdateCommand="UPDATE [stu] SET [name] = @name, [dob] = @dob, [add] = @add, [batch] = @batch, [cgpa] = @cgpa, [cntct] = @cntct, [m1] = @m1, [m2] = @m2 WHERE [email] = @original_email AND [name] = @original_name AND [dob] = @original_dob AND [add] = @original_add AND [batch] = @original_batch AND [cgpa] = @original_cgpa AND [cntct] = @original_cntct AND [m1] = @original_m1 AND [m2] = @original_m2">
                <DeleteParameters>
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_dob" Type="String" />
                    <asp:Parameter Name="original_add" Type="String" />
                    <asp:Parameter Name="original_batch" Type="String" />
                    <asp:Parameter Name="original_cgpa" Type="String" />
                    <asp:Parameter Name="original_cntct" Type="String" />
                    <asp:Parameter Name="original_m1" Type="String" />
                    <asp:Parameter Name="original_m2" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="add" Type="String" />
                    <asp:Parameter Name="batch" Type="String" />
                    <asp:Parameter Name="cgpa" Type="String" />
                    <asp:Parameter Name="cntct" Type="String" />
                    <asp:Parameter Name="m1" Type="String" />
                    <asp:Parameter Name="m2" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="add" Type="String" />
                    <asp:Parameter Name="batch" Type="String" />
                    <asp:Parameter Name="cgpa" Type="String" />
                    <asp:Parameter Name="cntct" Type="String" />
                    <asp:Parameter Name="m1" Type="String" />
                    <asp:Parameter Name="m2" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_dob" Type="String" />
                    <asp:Parameter Name="original_add" Type="String" />
                    <asp:Parameter Name="original_batch" Type="String" />
                    <asp:Parameter Name="original_cgpa" Type="String" />
                    <asp:Parameter Name="original_cntct" Type="String" />
                    <asp:Parameter Name="original_m1" Type="String" />
                    <asp:Parameter Name="original_m2" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

