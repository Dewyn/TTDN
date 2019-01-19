using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class giohang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   
        if (Request.QueryString ["MaSach"] != null)
        {
            int MaSach = int.Parse(Request.QueryString["MaSach"]);
            DataTable dt = xddl.getdata("SELECT TenSach, DonGia FROM SACH WHERE MaSach='"+MaSach+"'");
            string TenSach = dt.Rows[0][0].ToString();
            float DonGia = float.Parse(dt.Rows[0][1].ToString());
            int SoLuong = 1;
            ThemVaoGioHang(MaSach, TenSach, DonGia, SoLuong);
        }
        if (Session["GioHang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];
            System.Decimal TongThanhTien = 0;
            foreach (DataRow r in dt.Rows)
            {
                r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                TongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                lbTongThanhTien.Text = TongThanhTien.ToString();

            }
            gvgiohang.DataSource = dt;
            gvgiohang.DataBind();
        }
    }
    public void ThemVaoGioHang(int MaSach, String TenSach, float DonGia, int SoLuong)
    {
        DataTable dt;
        if (Session["GioHang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("MaSach");
            dt.Columns.Add("TenSach");
            dt.Columns.Add("DonGia");
            dt.Columns.Add("SoLuong");
            dt.Columns.Add("ThanhTien");

        }
        else
            dt = (DataTable)Session["Giohang"];
        int dong = SPDaCoTrongGioHang(MaSach, dt);
        if (dong != -1)
        {
            dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["MaSach"]=MaSach;
            dr["TenSach"]=TenSach;
            dr["DonGia"]=DonGia;
            dr["SoLuong"]=SoLuong;
            dr["ThanhTien"]=DonGia * SoLuong;
            dt.Rows.Add(dr);
        }
        Session["GioHang"]=dt;
    }
    public static int SPDaCoTrongGioHang(int MaSach, DataTable dt)
    {
        int dong = -1;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (int.Parse(dt.Rows[i]["MaSach"].ToString()) == MaSach)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }


    protected void btThanToan_Click(object sender, EventArgs e)
    {
        if (Session["TenDN"] == null)
        {
            lbThongBaoLoi.Text = "Bạn Chưa Đăng Nhập.";
            Response.Redirect("/dangnhap.aspx");
        }
        else
        {
            Response.Redirect("/thanhtoan.aspx");
        }
    }
    protected void btXoaGioHang_Click(object sender, EventArgs e)
    {
        Session["GioHang"] = null;
        Response.Redirect("~/Default.aspx");

    }
    protected void btTiepTucMua_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/trangchu.aspx");
    }
    protected void btCapNhat_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)Session["giohang"];
        foreach (GridViewRow r in gvgiohang.Rows)
        {
            foreach (DataRow dr in dt.Rows)
            {
                if (Convert.ToString(gvgiohang.DataKeys[r.DataItemIndex].Value) == dr["MaSach"].ToString())
                {
                    TextBox t = (TextBox)r.Cells[2].FindControl("txtsoluong");
                    if (Convert.ToInt32(t.Text) <= 0)
                    {
                        dt.Rows.Remove(dr);

                    }
                    else
                        dr["soluong"] = t.Text;
                    break;
                }
            }
        }
        Session["giohang"] = dt;
        Response.Redirect("~/giohang.aspx");
    }
    protected void gvgiohang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "xoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            try
            {
                DataTable dt = (DataTable)Session["GioHang"];
                dt.Rows.RemoveAt(chiso);
                Session["giohang"] = dt;
                Response.Redirect("~/giohang.aspx");
            }
            catch
            {
                Response.Redirect("/~giohang.aspx");
            }
        }
    }
}

