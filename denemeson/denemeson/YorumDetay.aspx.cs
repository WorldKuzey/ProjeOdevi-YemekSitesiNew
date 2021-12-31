using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace denemeson
{
    public partial class YorumDetay : System.Web.UI.Page
    {  
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

             id=Request.QueryString["YorumId"];


            if (Page.IsPostBack == false) { 
            SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd from tbl_yorumlar inner join tbl_Yemekler on tbl_yorumlar.yemekıd=tbl_Yemekler.yemekId where YorumId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            //**********İNNER JOİN İŞLEMİNİ YEMEK ADINI ALABİLMEK İÇİN YEMEKLER TABLOSUYLA KULLANIYORUZ***************
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                txt_ad.Text = oku[0].ToString();
                txt_mail.Text = oku[1].ToString();
                txt_icerik.Text = oku[2].ToString();
                txt_yemek.Text=oku[3].ToString();

            }
           
            bgl.baglanti().Close();
            }


       
 }
        protected void btn_onayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand(" update tbl_yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where yorumId=@p3",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",txt_icerik.Text);
            komut2.Parameters.AddWithValue("@p2","True");
            komut2.Parameters.AddWithValue("@p3", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}