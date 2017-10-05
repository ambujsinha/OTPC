<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addjob.aspx.cs" Inherits="addjob" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .auto-style18 {
            width: 100%;
        }
        .auto-style20 {
            width: 408px;
            height: 62px;
        }
        .auto-style21 {
            height: 62px;
        }
        .auto-style22 {
            width: 408px;
            height: 109px;
        }
        .auto-style23 {
            height: 109px;
        }
        .auto-style24 {
            width: 408px;
            height: 68px;
        }
        .auto-style25 {
            height: 68px;
        }
        .auto-style26 {
            width: 408px;
            height: 64px;
        }
        .auto-style27 {
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 440px">

        <table class="auto-style18">
            <tr>
                <td class="auto-style20" style="font-size: x-large; color: #0000FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COMPANY NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style21" style="font-size: x-large; color: #0000FF">
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22" style="color: #0000FF; font-size: large">COMPANY
                    <br />
                    REPRESENTATIVE&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="189px"></asp:TextBox>
                    <br />
                    NAME</td>
                <td class="auto-style23" style="color: #0000FF; font-size: large">JOB CRITERIA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Height="24px" TextMode="MultiLine" Width="189px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" style="color: #0000FF; font-size: large">POST OFFERED&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="189px"></asp:TextBox>
                </td>
                <td class="auto-style25" style="color: #0000FF; font-size: large">STREAMS ELIGIBLE&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="189px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26" style="color: #0000FF; font-size: large">SALARY RANGE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="189px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style27" style="color: #0000FF; font-size: large">JOB LOCATION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server" Height="24px" Width="189px"></asp:TextBox>
                </td>
            </tr>
        </table>

    
    

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" style="margin-right: 16px; margin-top: 1px" Text="SUBMIT" Width="93px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="38px" style="margin-right: 16px; margin-top: 1px" Text="RESET" Width="88px" OnClick="Button2_Click" />

    </div>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

