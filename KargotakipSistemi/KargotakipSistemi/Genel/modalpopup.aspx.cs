using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KargotakipSistemi.Models;

namespace KargotakipSistemi.Genel
{
    public partial class modalpopup : System.Web.UI.Page
    {
        KTSEntities1 db = new KTSEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.takips.OrderByDescending(x => x.Kargono).Take(1).ToList();

            Repeater1.DataSource = model;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Genel/Kargolarr.aspx");
        }
    }
}