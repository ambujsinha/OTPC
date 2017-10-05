<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
        width: 100%;
        height: 467px;
    }
    .auto-style20 {
        width: 277px;
        height: 14px;
    }
    .auto-style22 {
        width: 277px;
        height: 124px;
    }
    .auto-style25 {
        width: 277px;
        height: 71px;
    }
    .auto-style26 {
        height: 71px;
    }
    .auto-style27 {
        width: 277px;
        height: 41px;
    }
    .auto-style28 {
        height: 41px;
    }
    .auto-style29 {
        height: 124px;
    }
    .auto-style30 {
        height: 14px;
    }
        .auto-style31 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table class="auto-style18">
    <tr>
        <td class="auto-style25"><strong>ENTER NAME<span class="auto-style31">/</span>COMPANY NAME</strong><br />
        </td>
        <td class="auto-style26">
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 37px" Width="300px" Height="30px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27"><strong>ENTER EMAIL ID</strong><br />
        </td>
        <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="300px" Height="30px" TextMode="Email" ToolTip="Please Enter Your Email_Id"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="EX:-abc@gmail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22"><strong>MESSAGE:-</strong></td>
        <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="136px" style="margin-left: 0px" Width="455px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Message"></asp:RequiredFieldValidator>
            &nbsp;<br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style30">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" style="margin-left: 43px" Text="SUBMIT" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" OnClick="Button1_Click" Width="164px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="CLEAR " Width="164px" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Height="39px" PostBackUrl="~/Feedback.aspx" ToolTip="Clear Message" OnClick="Button2_Click" />
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

