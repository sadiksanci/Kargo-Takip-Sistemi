using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KargotakipSistemi.Models;
namespace KargotakipSistemi.Genel
{
    public partial class mesajsil : System.Web.UI.Page
    {
        KTSEntities1 db = new KTSEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id=int.Parse(Request.QueryString["gelenid"]);
            int id = int.Parse(Request.QueryString["gelenid"]);
            var model = db.mesajs.FirstOrDefault(x=>x.Id == id);
            db.mesajs.Remove(model);
            db.SaveChanges();
            Response.Redirect("/Genel/Kargolarr.aspx");
            //mesajıd.Text = model.Id.ToString();
            //mesajad.Text = model.adsoyad;
            //mesajmail.Text = model.email;
            //mesajkonu.Text = model.email;
            //mesajlar.Text = model.mesaj1;
            //tarihi.Text = model.tarih.ToString();
        }

      
    }
}