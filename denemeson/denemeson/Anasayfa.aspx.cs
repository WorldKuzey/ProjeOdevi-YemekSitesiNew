using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace denemeson
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler", bgl.baglanti());//sql sorgumuzu yazabilmek için kullanılır
            SqlDataReader oku = komut.ExecuteReader();//veri okuyucusu
            DataList2.DataSource = oku;
            DataList2.DataBind();//veri bağlantısı yapar
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}