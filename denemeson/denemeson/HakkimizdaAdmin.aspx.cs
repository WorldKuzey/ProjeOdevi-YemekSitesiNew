using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace denemeson
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {     sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;//çünkü butona her bastığımızda tetikleme oluyo ve eski hakkımızda sayısı güncellendiği halde eskisi kalıyor
            if (Page.IsPostBack == false) { 
            SqlCommand komut = new SqlCommand("select * from tbl_hakkimizda", bgl.baglanti());

            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox2.Text=oku[0].ToString();
            }
            bgl.baglanti();
            }
        }

       

       

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update tbl_hakkimizda set metin=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox2.Text);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }
    }
}