using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class HakkımızdaAdmin : System.Web.UI.Page
    {   
        Sqlsinif bgl = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible = false;

            SqlCommand komut = new SqlCommand("select * from Tbl_Hakkimizda", bgl.baglanti());
            SqlDataReader dr =komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text= dr[0].ToString();
            }
            bgl.baglanti().Close(); 
       }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible=true;    
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible=false;
        }
    }
}