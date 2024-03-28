using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class iletisim : System.Web.UI.Page
    {
        Sqlsinif sqlsinif = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("INSERT INTO Tbl_Mesajlar (Mesajgonderen,Mesajbaslik,Mesajmail,Mesajicerik) VALUES(@p1,@p2,@p3,@p4)", sqlsinif.baglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox3.Text);
            command.Parameters.AddWithValue("@p3", TextBox2.Text);
            command.Parameters.AddWithValue("@p4", TextBox4.Text);
            command.ExecuteNonQuery();
            sqlsinif.baglanti().Close();
        }
    }
}