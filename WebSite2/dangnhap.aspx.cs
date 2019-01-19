using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btndn_Click(object sender, EventArgs e)
    {
        try
        {

            DataTable dt = xddl.getdata("select * from KHACHHANG where TenDN='"+txttk.Text+"'and MatKhau='"+txtmk.Text+"'");
            if (dt.Rows.Count > 0)
            {
                Session["TenDN"] = txttk.Text;
                Response.Redirect("~/trangchu.aspx");
                
            }
            else
            {
                Label1.Text = "error";
            }
        }
        catch
        {
            Label1.Text = "fail";
        }
    }
}