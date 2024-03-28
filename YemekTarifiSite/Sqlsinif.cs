using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Common;

namespace YemekTarifiSite
{
    public class Sqlsinif
    {
         public SqlConnection baglanti()
         {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-6CBVI98\SQLEXPRESS;Initial Catalog=Dbo_yemektarif;Integrated Security=True");
            baglan.Open();
            return baglan;    
         }
       
    }
}