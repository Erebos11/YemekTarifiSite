using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        Sqlsinif sqlbaglantisi = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Tbl_Mesajlar", sqlbaglantisi.baglanti());
            SqlDataReader reader = sqlCommand.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible=false;
        }
    }
}