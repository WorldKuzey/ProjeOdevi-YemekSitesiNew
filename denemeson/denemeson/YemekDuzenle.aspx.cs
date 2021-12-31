using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace denemeson
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];
            if (Page.IsPostBack == false)
            { //sayfayı yeniden yükleme bi kere yükle yeter yoksa eski verileri yeniliyor güncellemiyo böylece
                SqlCommand komut = new SqlCommand("Select * from tbl_yemekler where yemekıd=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[1].ToString();
                    TextBox2.Text = oku[2].ToString();
                    TextBox3.Text=oku[3].ToString();
                }
                bgl.baglanti().Close();
            }

            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            FileUpload1.SaveAs(Server.MapPath("/resimler/") + FileUpload1.FileName);
            SqlCommand komut3 = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriıd=@p4,yemekresim=@p5 where kategoriId=@p6", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut3.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut3.Parameters.AddWithValue("@p5", "~/resimler/" + FileUpload1.FileName);
            komut3.Parameters.AddWithValue("@p6", id);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {  //********TÜM YEMEKLERİN DURUMUNU FALSE YAPTIK********
            SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            //************Gunun Yemeği İçin durumu true yaptık********
            SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekıd=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}