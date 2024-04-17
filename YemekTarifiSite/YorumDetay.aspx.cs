using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        Sqlsinif sqlsinif = new Sqlsinif();
        string yorumid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yorumid = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {




                SqlCommand sqlCommand = new SqlCommand("SELECT YorumAdSoyad,YorumMail,Yorumicerik,YemekAdi FROM Tbl_Yorumlar INNER JOIN Tbl_Yemekler ON Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid WHERE Yorumid = @p1", sqlsinif.baglanti());
                sqlCommand.Parameters.AddWithValue("@p1", yorumid);
                SqlDataReader reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[0].ToString();
                    TextBox2.Text = reader[1].ToString();
                    TextBox3.Text = reader[2].ToString();
                    TextBox4.Text = reader[3].ToString();

                }
                sqlsinif.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sql = new SqlCommand("UPDATE Tbl_Yorumlar Set Yorumicerik=@p1,YorumOnay=@p2 WHERE Yorumid=@p3", sqlsinif.baglanti());
            sql.Parameters.AddWithValue("@p1", TextBox3.Text);
            sql.Parameters.AddWithValue("@p2", "True");
            sql.Parameters.AddWithValue("@p3", yorumid);
            sql.ExecuteNonQuery();
            sqlsinif.baglanti().Close();

        }
    }
}