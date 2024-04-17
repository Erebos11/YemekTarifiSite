using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand(" Select * from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();


                if (Page.IsPostBack == false)
                {
                
                    SqlCommand komut2 = new SqlCommand("select * from Tbl_kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();



                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAdi=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 where Yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand sql = new SqlCommand("UPDATE Tbl_Yemekler SET durum=0", bgl.baglanti());
            sql.ExecuteNonQuery();
            bgl.baglanti().Close();


            SqlCommand sql2 = new SqlCommand("UPDATE Tbl_Yemekler SET durum=1 WHERE Yemekid=@p1", bgl.baglanti());
            sql2.Parameters.AddWithValue("@p1", id);

            sql2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
