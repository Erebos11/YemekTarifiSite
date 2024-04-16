using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            Panel2.Visible = false;

            //ONAYLI YORUMLAR
            SqlCommand komut = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=1", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //onaysız yorumlar
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList1.DataSource = dr2;
            DataList1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }
    }
}