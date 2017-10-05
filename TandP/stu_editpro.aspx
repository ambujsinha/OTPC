<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stu_EditPro.aspx.cs" Inherits="stu_editpro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            width: 413px;
        }
        .auto-style20 {
            height: 55px;
        }
        .auto-style21 {
            height: 18px;
        }
        .auto-style22 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 443px">

        <table class="auto-style18">
            <tr>
                <td class="auto-style20" colspan="2" style="color: #0000FF; font-size: xx-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EDIT PROFILE&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19" rowspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CHANGE PASSWORD<br />
&nbsp;<br />
                    CURRENT PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="191px"></asp:TextBox>
                    <br />
                    <br />
                    NEW PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="191px"></asp:TextBox>
                    <br />
                    <br />
                    RE-ENTER NEW
                    <br />
                    PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Width="191px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style21">EMAIL-ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="191px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>RESIDENTIAL&nbsp;
                    <br />
                    ADDRESS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="191px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>CONTACT NO.
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="191px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="I am sure I want to make the following changes" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="SUBMIT" Width="98px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Height="30px" OnClick="Button2_Click" Text="RESET" Width="98px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

