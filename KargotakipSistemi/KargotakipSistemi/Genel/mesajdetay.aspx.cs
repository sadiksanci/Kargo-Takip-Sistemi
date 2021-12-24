using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KargotakipSistemi.Models;

namespace KargotakipSistemi.Genel
{
    public partial class mesajdetay : System.Web.UI.Page
    {
        KTSEntities1 db = new KTSEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["gelenid"]);
            var model = db.mesajs.FirstOrDefault(x => x.Id == id);
                      
            mesajıd.Text = model.Id.ToString();
            mesajad.Text = model.adsoyad;
            mesajmail.Text = model.email;
            mesajkonu.Text = model.email;
            mesajlar.Text = model.mesaj1;
            tarihi.Text = model.tarih.ToString();
        }

        protected void geri_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Genel/Kargolarr.aspx");
        }
    }
    }
