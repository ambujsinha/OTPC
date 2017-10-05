<%@ Page Title="Admin Home" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
    </style>
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
        <asp:Button ID="Button5" runat="server" Font-Bold="True" PostBackUrl="~/Home.aspx" Text="LOGOUT" ToolTip="After All Work" Width="100px" OnClick="Button5_Click" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="6000">
        </asp:Timer>
        <br />
        <br />
        <div style="height: 279px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h3 class="auto-style1">NEW POSTED JOB
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cname" DataSourceID="SqlDataSource1" Height="16px" Width="1301px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="cname" HeaderText="COMPANY" ReadOnly="True" SortExpression="cname" />
                        <asp:BoundField DataField="crname" HeaderText="CR NAME" SortExpression="crname" />
                        <asp:BoundField DataField="jpost" HeaderText="POST" SortExpression="jpost" />
                        <asp:BoundField DataField="jcri" HeaderText="CRITERIA" SortExpression="jcri" />
                        <asp:BoundField DataField="jsal" HeaderText="SALARY" SortExpression="jsal" />
                        <asp:BoundField DataField="jstrm" HeaderText="STREAM" SortExpression="jstrm" />
                        <asp:BoundField DataField="jloc" HeaderText="LOCATION" SortExpression="jloc" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [job] WHERE [cname] = @original_cname AND [crname] = @original_crname AND [jpost] = @original_jpost AND [jcri] = @original_jcri AND [jsal] = @original_jsal AND [jstrm] = @original_jstrm AND [jloc] = @original_jloc" InsertCommand="INSERT INTO [job] ([cname], [crname], [jpost], [jcri], [jsal], [jstrm], [jloc]) VALUES (@cname, @crname, @jpost, @jcri, @jsal, @jstrm, @jloc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cname], [crname], [jpost], [jcri], [jsal], [jstrm], [jloc] FROM [job]" UpdateCommand="UPDATE [job] SET [crname] = @crname, [jpost] = @jpost, [jcri] = @jcri, [jsal] = @jsal, [jstrm] = @jstrm, [jloc] = @jloc WHERE [cname] = @original_cname AND [crname] = @original_crname AND [jpost] = @original_jpost AND [jcri] = @original_jcri AND [jsal] = @original_jsal AND [jstrm] = @original_jstrm AND [jloc] = @original_jloc">
                    <DeleteParameters>
                        <asp:Parameter Name="original_cname" Type="String" />
                        <asp:Parameter Name="original_crname" Type="String" />
                        <asp:Parameter Name="original_jpost" Type="String" />
                        <asp:Parameter Name="original_jcri" Type="String" />
                        <asp:Parameter Name="original_jsal" Type="String" />
                        <asp:Parameter Name="original_jstrm" Type="String" />
                        <asp:Parameter Name="original_jloc" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cname" Type="String" />
                        <asp:Parameter Name="crname" Type="String" />
                        <asp:Parameter Name="jpost" Type="String" />
                        <asp:Parameter Name="jcri" Type="String" />
                        <asp:Parameter Name="jsal" Type="String" />
                        <asp:Parameter Name="jstrm" Type="String" />
                        <asp:Parameter Name="jloc" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="crname" Type="String" />
                        <asp:Parameter Name="jpost" Type="String" />
                        <asp:Parameter Name="jcri" Type="String" />
                        <asp:Parameter Name="jsal" Type="String" />
                        <asp:Parameter Name="jstrm" Type="String" />
                        <asp:Parameter Name="jloc" Type="String" />
                        <asp:Parameter Name="original_cname" Type="String" />
                        <asp:Parameter Name="original_crname" Type="String" />
                        <asp:Parameter Name="original_jpost" Type="String" />
                        <asp:Parameter Name="original_jcri" Type="String" />
                        <asp:Parameter Name="original_jsal" Type="String" />
                        <asp:Parameter Name="original_jstrm" Type="String" />
                        <asp:Parameter Name="original_jloc" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h3>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

