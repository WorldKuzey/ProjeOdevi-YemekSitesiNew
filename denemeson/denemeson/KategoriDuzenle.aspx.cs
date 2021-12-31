using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace denemeson
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {  
            id=Request.QueryString["KategoriId"];
            if (Page.IsPostBack == false) { //sayfayı yeniden yükleme bi kere yükle yeter yoksa eski verileri yeniliyor güncellemiyo böylece
            SqlCommand komut = new SqlCommand("Select * from tbl_Kategoriler where kategoriıd=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text=oku[1].ToString();
                TextBox2.Text=oku[2].ToString();
            }
            bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_Kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriId=@p3",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}