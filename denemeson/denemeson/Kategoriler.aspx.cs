using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace denemeson
{
    public partial class Kategoriler : System.Web.UI.Page
    {
       
        sqlsinif bgl = new sqlsinif();
      
        protected void Page_Load(object sender, EventArgs e)
        {
          


            SqlCommand komut = new SqlCommand("select *from tbl_kategoriler", bgl.baglanti());

            SqlDataReader oku   = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();


         


           

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible=true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            SqlCommand komut= new SqlCommand("insert into tbl_kategoriler (kategoriad) values (@p1)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}