 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="com_pro1.aspx.cs" Inherits="com_pro1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            width: 100%;
            height: 265px;
        }
        .auto-style24 {
            height: 52px;
        }
        .auto-style25 {
            width: 465px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="height: 483px; margin-top: 0px">

       <table class="auto-style23">
           <tr>
               <td class="auto-style24" colspan="2" style="color: #660066; font-size: xx-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HI
                   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style25" style="color: #0000FF; font-size: large">
                   <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True">EDIT MY PROFILE!! </asp:HyperLink>
                   <br />
                   <br />
                   <asp:HyperLink ID="HyperLink2" runat="server">ADD NEW JOB</asp:HyperLink>
                   <br />
                   <br />
                   VIEW STUDENTS:&nbsp;&nbsp;&nbsp;
                   <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="164px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                       <asp:ListItem>Select</asp:ListItem>
                       <asp:ListItem>CGPA &gt;9.0</asp:ListItem>
                       <asp:ListItem>CGPA &gt;8.0</asp:ListItem>
                       <asp:ListItem>CGPA&gt;7.0</asp:ListItem>
                       <asp:ListItem>CGPA &lt;7.0</asp:ListItem>
                   </asp:DropDownList>
&nbsp;&nbsp;
                   <asp:Button ID="Button2" runat="server" Height="26px" Text="VIEW" Width="69px" OnClick="Button2_Click" />
                   <br />
                   <br />
               </td>
               <td>
                   <asp:Image ID="Image16" runat="server" Height="169px" ImageAlign="Right" style="margin-left: 13px" />
               </td>
           </tr>
       </table>
       <div style="height: 231px">

           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="email" DataSourceID="SqlDataSource1">
               <Columns>
                   <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                   <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                   <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                   <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                   <asp:BoundField DataField="batch" HeaderText="batch" SortExpression="batch" />
                   <asp:BoundField DataField="cgpa" HeaderText="cgpa" SortExpression="cgpa" />
                   <asp:BoundField DataField="m10" HeaderText="m10" SortExpression="m10" />
                   <asp:BoundField DataField="m12" HeaderText="m12" SortExpression="m12" />
                   <asp:BoundField DataField="addr" HeaderText="addr" SortExpression="addr" />
                   <asp:BoundField DataField="ph" HeaderText="ph" SortExpression="ph" />
               </Columns>
               <FooterStyle BackColor="White" ForeColor="#000066" />
               <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
               <RowStyle ForeColor="#000066" />
               <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#007DBB" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#00547E" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [stu]"></asp:SqlDataSource>

       </div>

   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

