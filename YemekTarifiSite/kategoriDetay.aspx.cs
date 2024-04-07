using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace YemekTarifiSite
{
    public partial class kategoriDetay : System.Web.UI.Page
    {   Sqlsinif snf = new Sqlsinif();
        string Kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Kategoriid = Request.QueryString[Kategoriid];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Kategoriid=@p1 ", snf.baglanti());
            komut.Parameters.AddWithValue("@p1", Kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }

    }
}