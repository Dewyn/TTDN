using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class dangky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //add ngay thang nam.
        for (int i = 1; i <= 31; i++)
        {
            ddlngay.Items.Add(i.ToString());
        }
        for (int j = 1; j <= 12; j++)
        {
            ddlthang.Items.Add(j.ToString());
        }
    }
    protected void btndangki_Click(object sender, EventArgs e)
    {
        try
        {
            string str1 = @"Select taikhoan From KHACH_HANG Where taikhoan=N'" + tbtendn.Text + "'";
            if (xddl.getdata(str1).Rows.Count > 0)
            {
                lbthongbao.Text = "tên đăng nhập đã tồn tại.";
                tbtendn.Focus();
            }
            else
            {
                /* SqlConnection con = new SqlConnection(XDDL.strCon);
                 con.Open();
                 SqlCommand cmd = new SqlCommand();
                 cmd.CommandType = CommandType.Text;
                 cmd.Connection = con;
                 cmd.CommandText = @"INSERT INTO KHACH_HANG(tenkh,diachi,sdt,taikhoan,matkhau,email)
                                     VALUE(@tenkh,@diachi,@sdt,@taikhoan,@matkhau,@email)";
                 cmd.Parameters.Add("@tenkh", SqlDbType.NChar, 30);
                 cmd.Parameters["@tenkh"].Value = tbhovaten.Text;
                 cmd.Parameters.Add("@diachi", SqlDbType.NChar, 50);
                 cmd.Parameters["@diachi"].Value = tbdiachi.Text;
                 cmd.Parameters.Add("@sdt", SqlDbType.Char, 12);
                 cmd.Parameters["@sdt"].Value = tbdienthoai.Text;
                 cmd.Parameters.Add("@taikhoan", SqlDbType.Char, 20);
                 cmd.Parameters["@taikhoan"].Value = tbtendn.Text;
                 cmd.Parameters.Add("@matkhau", SqlDbType.Char, 20);
                 cmd.Parameters["@matkhau"].Value = tbmatkhau.Text;
                 cmd.Parameters.Add("@email", SqlDbType.Char, 50);
                 cmd.Parameters["@email"].Value = tbemail.Text;
                // cmd.Parameters.Add("@ngaysinh", SqlDbType.Date);
                // cmd.Parameters["@ngaysinh"].Value = DateTime.Parse(ddlthang.Text + "/" + ddlngay.Text + "/" + tbnam.Text);
                // cmd.Parameters.Add("@gioitinh", SqlDbType.Char, 5);
                // cmd.Parameters["@gioitinh"].Value = Convert.ToInt16(rblgioitinh.SelectedItem.Value);
                 cmd.ExecuteNonQuery();
                 Response.Redirect("~/dangnhap.aspx");*/
                string chen = "insert into KHACH_HANG(tenkh,taikhoan,matkhau,diachi,sdt,email,gioitinh,ngaysinh) values(N'" + tbhovaten.Text + "','" + tbtendn.Text + "','" + tbmatkhau.Text + "',N'" + tbdiachi.Text + "','" + tbdienthoai.Text + "','" + tbemail.Text + "','" + rblgioitinh.SelectedItem.Value + "','" + ddlthang.Text + "/" + ddlngay.Text + "/" + tbnam.Text + "')";
                xddl.getdata(chen);
                lbthongbao.Text = "Đăng kí thành công.";
                Response.Redirect("~/dangnhap.aspx");
            }
        }
        catch
        {
            lbthongbao.Text = "Đăng kí thất bại.";
        }
    }
    protected void ddlngay_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
}