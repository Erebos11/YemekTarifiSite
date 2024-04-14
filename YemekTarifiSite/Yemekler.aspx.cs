using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Yemekler : System.Web.UI.Page
    {   Sqlsinif bgl = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        { 
            Panel2.Visible = false;
            Panel4.Visible = false;

            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //KATEGORİ LİSTESİ
            SqlCommand komut2 = new SqlCommand("select * from Tbl_kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel4.Visible=true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}