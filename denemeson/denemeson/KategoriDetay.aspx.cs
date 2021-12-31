using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace denemeson
{
    public partial class KategoriDetay : System.Web.UI.Page
    {

        sqlsinif bgl   = new sqlsinif();
        string Kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Kategoriid = Request.QueryString["KategoriId"];
            //yönlendir    sorgu sringini getir(kaegori id ye göre yemekleri getircem)


            SqlCommand komut = new SqlCommand("Select*from tbl_yemekler where kategoriId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Kategoriid);
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
            
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}