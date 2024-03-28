using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        Sqlsinif Sqlsinif = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Tbl_Yemekler", Sqlsinif.baglanti());
            SqlDataReader reader = sqlCommand.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();   
        }
    }
}