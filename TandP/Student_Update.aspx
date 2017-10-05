<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Student_Update.aspx.cs" Inherits="Student_Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 400px; width: 1300px">
        <br />
        &nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Student_Home.aspx" Text="HOME" ToolTip="Go To Student Home Page" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Student_Update.aspx" Text="UPADTE " ToolTip="Update Your Details" Width="164px"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" Text="VIEW" ToolTip="COMPANY" Width="164px" PostBackUrl="~/Std_Cpny.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Posted_Job.aspx" Text="JOBS" ToolTip="NEW POSTED JOB" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Height="39px" ToolTip="USER NAME" Width="196px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Height="20px" Text="LOGOUT" Width="100px" PostBackUrl="~/Home.aspx" />
        <br />
        
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [stu] WHERE [email] = @original_email AND [name] = @original_name AND [pass] = @original_pass AND [dob] = @original_dob AND [add] = @original_add AND [cgpa] = @original_cgpa AND [batch] = @original_batch AND [cntct] = @original_cntct AND [m1] = @original_m1 AND [m2] = @original_m2" InsertCommand="INSERT INTO [stu] ([name], [pass], [email], [dob], [add], [cgpa], [batch], [cntct], [m1], [m2]) VALUES (@name, @pass, @email, @dob, @add, @cgpa, @batch, @cntct, @m1, @m2)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [name], [pass], [email], [dob], [add], [cgpa], [batch], [cntct], [m1], [m2] FROM [stu] WHERE ([email] = @email)" UpdateCommand="UPDATE [stu] SET [name] = @name, [pass] = @pass, [dob] = @dob, [add] = @add, [cgpa] = @cgpa, [batch] = @batch, [cntct] = @cntct, [m1] = @m1, [m2] = @m2 WHERE [email] = @original_email AND [name] = @original_name AND [pass] = @original_pass AND [dob] = @original_dob AND [add] = @original_add AND [cgpa] = @original_cgpa AND [batch] = @original_batch AND [cntct] = @original_cntct AND [m1] = @original_m1 AND [m2] = @original_m2">
            <DeleteParameters>
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_pass" Type="String" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_add" Type="String" />
                <asp:Parameter Name="original_cgpa" Type="String" />
                <asp:Parameter Name="original_batch" Type="String" />
                <asp:Parameter Name="original_cntct" Type="String" />
                <asp:Parameter Name="original_m1" Type="String" />
                <asp:Parameter Name="original_m2" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="add" Type="String" />
                <asp:Parameter Name="cgpa" Type="String" />
                <asp:Parameter Name="batch" Type="String" />
                <asp:Parameter Name="cntct" Type="String" />
                <asp:Parameter Name="m1" Type="String" />
                <asp:Parameter Name="m2" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="std_eid" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="add" Type="String" />
                <asp:Parameter Name="cgpa" Type="String" />
                <asp:Parameter Name="batch" Type="String" />
                <asp:Parameter Name="cntct" Type="String" />
                <asp:Parameter Name="m1" Type="String" />
                <asp:Parameter Name="m2" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_pass" Type="String" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_add" Type="String" />
                <asp:Parameter Name="original_cgpa" Type="String" />
                <asp:Parameter Name="original_batch" Type="String" />
                <asp:Parameter Name="original_cntct" Type="String" />
                <asp:Parameter Name="original_m1" Type="String" />
                <asp:Parameter Name="original_m2" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

