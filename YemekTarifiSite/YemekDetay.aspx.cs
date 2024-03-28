using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        Sqlsinif sqlbaglantisi = new Sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];

            SqlCommand sqlCommand = new SqlCommand("SELECT YemekAdi FROM Tbl_Yemekler WHERE Yemekid = @p1", sqlbaglantisi.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                Label3.Text = reader[0].ToString();

            }
            sqlbaglantisi.baglanti().Close();


            //    // Yorumlar
            //    SqlCommand cmd2 = new SqlCommand("SELECT * FROM Yorumlar WHERE yemekid = @p2", sqlbaglantisi.baglanti());
            //    cmd2.Parameters.AddWithValue("@p2", yemekid);
            //    SqlDataReader reader2 = cmd2.ExecuteReader();
            //    DataList2.DataSource = reader2;
            //    DataList2.DataBind();
            //}
        }
    }
}