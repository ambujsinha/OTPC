<%@ Page Title="NOTICE" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Notice.aspx.cs" Inherits="Notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 293%;
        }
        .auto-style21 {
            width: 765px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
            <div style="height: 324px; width: 296px;">
                <table class="auto-style18">
        <tr><td class="auto-style21">
                <marquee direction="up" behavior="alternate" scrollamount="3" style="height: 300px; width: 300px; font-size: x-large; color: #3333CC">
                 1) Microsoft came on last week of August........</br></br>
                 2) Google came on last week of July.............</br></br>
                 3) Tcs came on 1st week of August...............</br></br>
                 4) Facebook came on last week of September......</br></br>
                 5) Wipro came on mid  week of August............</br></br>
                 6) TechMahendra came on 1st week of September...</br></marquee>
            </td>
             <td>   
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NEW POSTED JOB<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cname" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="270px">
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
            </td>
          </tr>
    </table></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

