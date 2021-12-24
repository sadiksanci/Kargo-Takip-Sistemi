using System;
using KargotakipSistemi.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargotakipSistemi.Genel
{
    public partial class kargosorgu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        KTSEntities1 db = new KTSEntities1();

        protected void sorgu_Click(object sender, EventArgs e)
        {
         

            string isim = Request.Form["sad"].ToString();
            var model = db.takips.FirstOrDefault(x => x.Kargono.ToString() == isim);

            if (model != null)
            {
                ekran.Visible = true;
                

                kargono.Text = model.Kargono.ToString();
                gadsoyad.Text = model.Gadsoyad;
                gadres.Text = model.Gadres;
                gtelno.Text = model.Gtelno;
                aadsoyad.Text = model.Aadsoyad;
                aadres.Text = model.Aadres;
                atelno.Text = model.Atelno;
                durum.Text = model.Durum;





            }

        }
    }
}