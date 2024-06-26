﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class TarifOner : System.Web.UI.Page
    {
        Sqlsinif sqlsinif = new Sqlsinif(); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGönder_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("INSERT INTO Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) VALUES(@p1,@p2,@p3,@p4,@p5,@p6)", sqlsinif.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            sqlCommand.Parameters.AddWithValue("@p3", TxtYapilis.Text);
            sqlCommand.Parameters.AddWithValue("@p4", FileUpload1.FileName);
            sqlCommand.Parameters.AddWithValue("@p5", TxtTarifOneren.Text);
            sqlCommand.Parameters.AddWithValue("@p6", TxtMail.Text);
            sqlCommand.ExecuteNonQuery();
            sqlsinif.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır");
        }
    }
}