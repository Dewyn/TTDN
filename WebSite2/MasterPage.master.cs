using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDN"] != null)
        {
            adangnhap.Visible = false;
            adangky.Visible = false;
            lbxinchao.Visible = true;
            lbxinchao.Text = "xin chao" + Session["TenDN"].ToString();
            Button1.Visible = true;
        }
        else
        {
            lbxinchao.Visible = false;

        }
        if (Session["gio hang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["gio hang"];
            System.Int32 tongsl = 0;
            foreach (DataRow r in dt.Rows)
            {
                tongsl += Convert.ToInt32(r["so luong"]);

                Lable.Text = tongsl.ToString();
            }
        }
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dangnhap.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void adangky_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dangky.aspx");
    }
}
