<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .auto-style3 {
            width: 100%;
            border: 0px solid #aa8e70;
            background-color:Silver;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="2"><p>Đăng nhập</p></td>
           
        </tr>
        <tr>
            <td>&nbsp;tài khoản</td>
            <td>&nbsp;<asp:TextBox runat="server" ID="txttk"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;mật khẩu</td>
            <td class="auto-style3">&nbsp;<asp:TextBox runat="server" ID="txtmk"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;<asp:Button runat="server" ID="btndn" Text="Đăng nhập" OnClick="btndn_Click" /></td>
            
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td colspan="2">
                <marquee direction="right">
                    <p>Đăng nhập để mua hàng</p></marquee>&nbsp;</td>
            
        </tr>
    </table>
</asp:Content>

