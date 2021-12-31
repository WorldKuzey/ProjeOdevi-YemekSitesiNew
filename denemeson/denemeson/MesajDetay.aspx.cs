using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace denemeson
{
    public partial class MesajDetay : System.Web.UI.Page
    {   sqlsinif bgl = new sqlsinif();
        string id="";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajId"];
            SqlCommand komut = new SqlCommand("select * from tbl_mesajlar where mesajId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader oku = komut.ExecuteReader();
            //datalist kullanmadığımız için sql data readerdan sonra döngü ile dönüyoruz
            while (oku.Read())
            {
                TextBox4.Text=oku[1].ToString();
                TextBox5.Text=oku[2].ToString();
                TextBox6.Text=oku[3].ToString();
                TextBox7.Text=oku[4].ToString();

            }
            bgl.baglanti().Close();
        }
    }
}