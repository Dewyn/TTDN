<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitietsach.aspx.cs" Inherits="chitietsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
        DataKeyField="MaSach">
    <ItemTemplate>
        <br />
        <table class="auto-style1">
            <tr>
                <td rowspan="11">
                    <strong>
                    <asp:Image ID="HinhMinhHoaLabel" runat="server" Height="169px" 
                        ImageUrl='<%# "~/hinh_anh/image_sach/"+Eval("HinhMinhHoa") %>' Width="123px" />
                    </strong>
                </td>
                <td>
                    <strong>Mã Sách:
                    <asp:Label ID="MaSachLabel" runat="server" Text='<%# Eval("MaSach") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Tên Sách:
                    <asp:Label ID="TenSachLabel" runat="server" Text='<%# Eval("TenSach") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Đơn Vị Tính:
                    <asp:Label ID="DonViTinhLabel" runat="server" Text='<%# Eval("DonViTinh") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Đơn Giá:
                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Mô Tả:
                    <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Mã Chủ Đề:
                    <asp:Label ID="MaCDLabel" runat="server" Text='<%# Eval("MaCD") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Mã NXB:<asp:Label ID="MaNXBLabel" runat="server" 
                        Text='<%# Eval("MaNXB") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Ngày Cập nhập:
                    <asp:Label ID="NgayCapNhatLabel" runat="server" 
                        Text='<%# Eval("NgayCapNhat") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Số Lượng Bán:
                    <asp:Label ID="SoLuongBanLabel" runat="server" 
                        Text='<%# Eval("SoLuongBan") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Số Lần Xem:
                    <asp:Label ID="SoLanXemLabel" runat="server" Text='<%# Eval("SoLanXem") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl='<%# "~/giohang.aspx?MaSach="+Eval("MaSach") %>'>Mua</asp:HyperLink>
                </td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" 
        SelectCommand="SELECT * FROM [SACH] WHERE ([MaSach] = @MaSach)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSach" QueryStringField="MaSach" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="SELECT [Mo Ta] AS Mo_Ta, [MaSach] FROM [SACH] WHERE ([MaSach] = @MaSach)">
    <SelectParameters>
        <asp:QueryStringParameter Name="MaSach" QueryStringField="MaSach" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

