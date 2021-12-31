using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace denemeson
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        sqlsinif bgl = new sqlsinif();

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_mesajlar (mesajsahip,mesajmail,mesajbaslik,mesajIcerik)values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txt_Mesaj_AdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", Txt_Mesaj_Mail.Text);
            komut.Parameters.AddWithValue("@p3", Txt_Msj_Konu.Text);
            komut.Parameters.AddWithValue("@p4", Txt_Mesaj_Icerik.Text);
            komut.ExecuteNonQuery();//deyip sorgumuzu çalıştırıyoruz
            bgl.baglanti().Close();

        }
    }
}