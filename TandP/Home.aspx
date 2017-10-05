<%@ Page Title="HOME" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
        }
    .auto-style18 {
        font-size: medium;
        color: #0000CC;
    }
    .auto-style19 {
        font-size: medium;
        color: #0000CC;
        text-decoration: underline;
    }
        .newStyle2 {
            border: double #0033CC;
        }
    </style>
    <style>
        .blink {
      animation: blink 0.5s steps(5, start) infinite;
      -webkit-animation: blink 0.5s steps(5, start) infinite;
    }
    @keyframes blink {
      to {
        visibility: hidden;
      }
    }
    @-webkit-keyframes blink {
      to {
        visibility: hidden;
      }
    }
    .auto-style20 {
        font-size: medium;
        color: #0000CC;
        font-weight: bold;
    }
    .auto-style21 {
        font-size: medium;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="newStyle1">
        Here we ensure that that every student gets complete assistance required to fulfil their ambition. Unlike others we don’t believe in making empty promises, we deliver. The fact that our students are doing gloriously well in their carrier, with different companies all round the globe, only emphasises the fact that they have received the best education and industrial training. Along with education we equally focus on industrial training which allows a student to deliver his or her theoretical knowledge in the practical world.</p>
    <p class="newStyle1">
        Some of our recruiters are among the biggest companies in the world. The list of companies recruiting from our campus includes Tcs,Hcl, Adobe, Facebook, Google, Cannon, Hewlett Packard, Sony, etc. Statistics over past years would show that performance of our students in campus placements have been constantly improving. With an every expanding base of Alumni at the international level, this record is only expected to get better.
    </p>
    <p class="newStyle1">
        The main reason behind such Success is undoubtedly our esteemed list of Faculties and Industrial trainers. Industrial Trainers working with our organisation have all more that 20 year of on-field industrial experience. Our training and placement cell consists of influential people with a huge network. We are forever trying to bridge the gap between college education and Industrial aplication.
    </p>
    <p >
        &nbsp;</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="newStyle2" style="color: #0000CC; font-size: large">

                        <strong><span class="auto-style18">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style19">LOGIN NOW</span><br class="auto-style18" />
                            <br class="auto-style18" />
                            <span class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UserName: </span>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style18" Width="85px"></asp:TextBox>
                            <br class="auto-style18" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="auto-style18">
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp; </span>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style18" Width="86px" TextMode="Password"></asp:TextBox>
                            <br />
                        <span class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
                            </strong>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style21" ForeColor="Black" Height="52px" RepeatDirection="Horizontal">
                            <asp:ListItem>  STUDENT</asp:ListItem>
                            <asp:ListItem>  TPO</asp:ListItem>
                            <asp:ListItem>  COMPANY</asp:ListItem>
                        </asp:RadioButtonList>
                        <strong>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Text="LOGIN" OnClick="Button1_Click" />
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" ForeColor="Red" NavigateUrl="~/Forget.aspx">Forget Password ?</asp:HyperLink>
                        <br />
&nbsp; 
                        <br />
&nbsp;&nbsp;&nbsp; Not registered?&nbsp;&nbsp;
                            </strong>
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Red" CssClass="blink" ToolTip="Please Select From Below">Register Now !</asp:HyperLink>

                        <br />
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" CssClass="auto-style21" ForeColor="Black" Height="52px" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem>STUDENT</asp:ListItem>
                            <asp:ListItem>TPO</asp:ListItem>
                            <asp:ListItem>COMPANY</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />

                        </div>
                    </asp:Content>


