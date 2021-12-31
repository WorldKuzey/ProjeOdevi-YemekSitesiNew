﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace denemeson
{
    public partial class Tarifler : System.Web.UI.Page
    {  sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            //onaysız
            SqlCommand komut= new SqlCommand("select * from tbl_tarifler where tarifdurum=0",bgl.baglanti());
            SqlDataReader oku =komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //onaylı
            SqlCommand komut2 = new SqlCommand("select * from tbl_tarifler where tarifdurum=1", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

              
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
    }
}