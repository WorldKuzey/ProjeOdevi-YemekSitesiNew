using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//sql kütüphanemi ekledim

namespace denemeson
{
    public partial class YemekDetay : System.Web.UI.Page
    {    
         
        sqlsinif bgl  = new sqlsinif();//sql sınıfımı çağırdım neden? Çünkü  bağlantı methoum içndeki adresi kullanabilmek için çağırdım
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            // taşımış olduğum id deki değere göre o id deki yemeği listelicem burda

            yemekid = Request.QueryString["yemekId"];//string tipinde sorgumu(yemek id den sonraki yazdığım soru evalde belirttiğim yemekid yi  istiyorum
           
            SqlCommand komut = new SqlCommand("Select yemekad from tbl_yemekler where yemekId=@parametre1",bgl.baglanti());

            komut.Parameters.AddWithValue("@parametre1", yemekid);//""(boş olan yemek id ye parametre1 ile ilişkilendir
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())//oku nesnem okuma yaptığı müddetçe label3'e okudan gelecek olan sorgudaki 0. parametreyi yazdır(aktar) 0. parametrede yemek ad var
            {
                Label3.Text = oku[0].ToString();
            }
            bgl.baglanti().Close();

           // ******************************************************************************************************************
           //YORUMLARI LİSTELEME
            
            SqlCommand komut2 = new SqlCommand("select * from tbl_yorumlar where yemekId=@parametre2",bgl.baglanti());
            komut2.Parameters.AddWithValue("@parametre2",yemekid);
            SqlDataReader okusun = komut2.ExecuteReader();
            DataList2.DataSource = okusun;
            DataList2.DataBind();
            //*******************************************************************************************************************
            //YORUM YAPMA PANELİ



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into  tbl_yorumlar(yorumadsoyad,yorummail,yorumIcerik,yemekId)values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();//diyip sorgumu gerçekleştiriyorum
            bgl.baglanti().Close();

        }
    }
}