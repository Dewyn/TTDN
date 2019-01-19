<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangky.aspx.cs" Inherits="dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
    ĐĂNG KÍ THÀNH VIÊN<br />
    <table class="auto-style6">
        <tr>
            <td>
                <strong>Họ và tên:</strong></td>
            <td>
                <strong>
                <asp:TextBox ID="tbhovaten" runat="server"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Giới tính:</strong></td>
            <td>
                <strong>
                <asp:RadioButtonList ID="rblgioitinh" runat="server" Height="16px" 
                    RepeatDirection="Horizontal" RepeatLayout="Flow" Width="123px">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:RadioButtonList>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Địa chỉ:</strong></td>
            <td>
                <strong>
                <asp:TextBox ID="tbdiachi" runat="server"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Điện thoại:</strong></td>
            <td>
                <strong>
                <asp:TextBox ID="tbdienthoai" runat="server"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Email:</strong></td>
            <td>
                <strong>
                <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Ngày sinh:</strong></td>
            <td>
                <strong>Ngày:<asp:DropDownList ID="ddlngay" runat="server" 
                    OnSelectedIndexChanged="ddlngay_SelectedIndexChanged" style="margin-top: 0px">
                </asp:DropDownList>
                Tháng:<asp:DropDownList ID="ddlthang" runat="server">
                </asp:DropDownList>
                Năm:<asp:TextBox ID="tbnam" runat="server" Width="59px"></asp:TextBox>
                </strong>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="tbnam" ErrorMessage="Nhập năm không đúng." ForeColor="Red" 
                    MaximumValue="2018" MinimumValue="1900"></asp:RangeValidator>
            </td>
        </tr>
    </table>
</p>
<p>
    <strong>THÔNG TIN ĐĂNG NHẬP</strong></p>
<p>
    &nbsp;</p>
<p>
    <table class="auto-style6">
        <tr>
            <td class="auto-style8">
                Tên đăng nhập:</td>
            <td>
                <asp:TextBox ID="tbtendn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                Mật khẩu:</td>
            <td>
                <strong>
                <asp:TextBox ID="tbmatkhau" runat="server"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                Nhập lại mật khẩu:</td>
            <td>
                <asp:TextBox ID="tbnhaplaimatkhau" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="tbmatkhau" ControlToValidate="tbnhaplaimatkhau" 
                    ErrorMessage="Nhập lại mật khẩu không trùng khớp." ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbnhaplaimatkhau" 
                    ErrorMessage="Nhập lại mật khẩu không được rỗng." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <strong>
    <br />
    <asp:Button ID="btndangki" runat="server" Height="26px" 
        OnClick="btndangki_Click" Text="Đăng kí" />
    <asp:Label ID="lbthongbao" runat="server" ForeColor="Red"></asp:Label>
    </strong>
</p>

</asp:Content>

