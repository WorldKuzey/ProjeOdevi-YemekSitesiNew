using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace denemeson
{
    public partial class Yemekler : System.Web.UI.Page
    {


        sqlsinif bgl=new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

           
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
               

                SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }


            //******YEMEK listesi***********
            SqlCommand komut = new SqlCommand("select * from tbl_yemekler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();


          

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible=false;
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {// ******************YEMEK EKLEME***********************
            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler(YemekAd,YemekMalzeme,YemekTarif,KategoriId) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut2.Parameters.AddWithValue("p3",TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


            //**************KAEGORİ SAYISINI ARTTIRMA*****************
            SqlCommand sqlCommand = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriıd=@p1", bgl.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            sqlCommand.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}