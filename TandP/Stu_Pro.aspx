<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stu_Pro.aspx.cs" Inherits="comcr1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 100%;
            height: 64px;
        }
        .auto-style22 {
            width: 100%;
            height: 155px;
        }
        .auto-style23 {
            width: 572px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 486px; margin-top: 0px">
        <div>
       <table class="auto-style18">
           <tr>
               <td style="color: #660066; font-size: xx-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HI,<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               </td>
           </tr>
       </table>
        <table class="auto-style22">
            <tr>
                <td class="auto-style23" style="color: #0000FF; font-size: large">SEARCH JOBS:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="162px">
                        <asp:ListItem>All</asp:ListItem>
                        <asp:ListItem>By Company Name</asp:ListItem>
                        <asp:ListItem>By Salary</asp:ListItem>
                    </asp:DropDownList>
                    <br />
&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Search" Width="75px" OnClick="Button2_Click1" />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Overline="False">EDIT MY PROFILE INFO!!</asp:HyperLink>
                </td>
                <td>
                    <asp:Image ID="Image13" runat="server" Height="150px" ImageAlign="Right" style="margin-left: 0px" />
                </td>
            </tr>
        </table>
            </div>
       <div style="height: 212px; margin-top: 0px">

           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cname" DataSourceID="SqlDataSource1" Height="179px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="822px">
               <Columns>
                   <asp:BoundField DataField="cname" HeaderText="cname" ReadOnly="True" SortExpression="cname" />
                   <asp:BoundField DataField="jpost" HeaderText="jpost" SortExpression="jpost" />
                   <asp:BoundField DataField="jcri" HeaderText="jcri" SortExpression="jcri" />
                   <asp:BoundField DataField="jsal" HeaderText="jsal" SortExpression="jsal" />
                   <asp:BoundField DataField="jstrm" HeaderText="jstrm" SortExpression="jstrm" />
                   <asp:BoundField DataField="jloc" HeaderText="jloc" SortExpression="jloc" />
                   <asp:BoundField DataField="jtp" HeaderText="jtp" SortExpression="jtp" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [job]"></asp:SqlDataSource>

       </div><br />
       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   </div> 
     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

