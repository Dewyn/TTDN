<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sachtheochude.aspx.cs" Inherits="sachtheochude" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 83px;
        }
        .auto-style5 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" 
    DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td>
                    <strong>
                    <asp:Label ID="TenSachLabel" runat="server" Text='<%# Eval("TenSach") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl='<%# "~/hinh_anh/image_sach/"+Eval("HinhMinhHoa") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Giá:
                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>
                    <asp:HyperLink ID="HyperLink3" runat="server" 
                        ImageUrl="~/hinh_anh/nut_chonmua.gif"></asp:HyperLink>
                    </strong>
                </td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" 
    SelectCommand="SELECT * FROM [SACH] WHERE ([MaCD] = @MaCD)">
    <SelectParameters>
        <asp:QueryStringParameter Name="MaCD" QueryStringField="maCD" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
    </asp:Content>

