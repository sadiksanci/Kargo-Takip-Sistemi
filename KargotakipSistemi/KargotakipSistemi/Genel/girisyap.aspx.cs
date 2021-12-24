using System;
using KargotakipSistemi.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargotakipSistemi.Genel
{
    public partial class girisyap1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        KTSEntities1 db = new KTSEntities1();
        protected void btngiris_Click(object sender, EventArgs e)
        {
            var model = db.admins.FirstOrDefault(x => x.kuladı == kulad.Text && x.sifre == sifre.Text);
            if (model != null)
            {
                Response.Redirect("/Genel/Kargolarr.aspx");
                
            }
            else
            {
                hata.Visible = true;
            }
        }
    }
}