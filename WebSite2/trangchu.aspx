<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trangchu.aspx.cs" Inherits="trangchu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" 
        DataSourceID="SqlDataSource1" RepeatColumns="3" 
        RepeatDirection="Horizontal">
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
                        <strong>
                        <asp:Image ID="Image1" runat="server" 
                            ImageUrl='<%# "~/hinh_anh/image_sach/"+Eval("HinhMinhHoa") %>' />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        Gi<strong>á:
                        <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" 
                            NavigateUrl='<%# "~/chitietsach.aspx?MaSach="+Eval("MaSach") %>'>Xem Chi Tiết</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" 
        SelectCommand="SELECT * FROM [SACH]"></asp:SqlDataSource>
    <div _designerregion="0">
    </div>
    
</asp:Content>

