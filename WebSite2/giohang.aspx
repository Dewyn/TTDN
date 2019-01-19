<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="giohang.aspx.cs" Inherits="giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gvgiohang" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Mã Sách" DataField="MaSach" />
            <asp:BoundField HeaderText="Tên Sách" DataField="TenSach" />
            <asp:BoundField HeaderText="Đơn giá" DataField="DonGia" />
            <asp:TemplateField HeaderText="Số Lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Thành Tiền" DataField="ThanhTien" />
            <asp:ButtonField ButtonType="Image" ImageUrl="~/hinh_anh/Delete.jpg" 
                Text="Xóa" />
        </Columns>
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Tổng Cộng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbTongThanhTien" runat="server" Text="Tổng Thành Tiền"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Button ID="btTiepTucMua" runat="server" Text="Tiếp Tục Mua" Width="85px" 
        onclick="btTiepTucMua_Click" />
&nbsp;
    <asp:Button ID="btXoaGioHang" runat="server" Text="Xóa Giỏ Hàng" Width="85px" 
        onclick="btXoaGioHang_Click" />
    <strong> &nbsp;
    <asp:Button ID="btCapNhat" runat="server" Text="Cập Nhật" Width="85px" 
        onclick="btCapNhat_Click" />
&nbsp;
    <asp:Button ID="btThanToan" runat="server" Text="Đặt Hàng" Width="85px" 
        onclick="btThanToan_Click" />
    <br />
    </strong>
    <table class="auto-style1">
        <tr>
            <td>
    <strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
    </strong>
            </td>
        </tr>
    </table>
</asp:Content>

