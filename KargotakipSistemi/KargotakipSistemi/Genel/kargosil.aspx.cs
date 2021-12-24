using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KargotakipSistemi.Models;
namespace KargotakipSistemi.Genel
{
    public partial class kargosil : System.Web.UI.Page
    {
        KTSEntities1 db = new KTSEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["gelenid"]);
            var model1 = db.takips.FirstOrDefault(x => x.Kargono == id);
            db.takips.Remove(model1);
            db.SaveChanges();
            Response.Redirect("/Genel/Kargolarr.aspx");
        }
    }
}