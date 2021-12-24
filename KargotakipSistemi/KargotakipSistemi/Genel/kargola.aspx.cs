using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KargotakipSistemi.Models;

namespace KargotakipSistemi.Genel
{
    public partial class kargola : System.Web.UI.Page
    {
        KTSEntities1 db = new KTSEntities1();
        public string tarihformatı(DateTime date)
        {
            string tarih1 = "";
            tarih1 = date.ToString("dd/MM/yy");
            return tarih1;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                var model =(from x in db.illers select new
                {
                    value = x.id.ToString(),
                    text = x.sehir
                }) .ToList();
                sehirler.DataSource = model;
                sehirler.DataTextField = "text";
                sehirler.DataValueField = "value";
                sehirler.DataBind();
                sehirler.Items.Insert(0, new ListItem("---Seçiniz---", "0"));

                var model1 = (from x in db.illers
                             select new
                             {
                                 value = x.id.ToString(),
                                 text = x.sehir
                             }).ToList();
                sehirler1.DataSource = model;
                sehirler1.DataTextField = "text";
                sehirler1.DataValueField = "value";
                sehirler1.DataBind();
                sehirler1.Items.Insert(0, new ListItem("---Seçiniz---", "0"));



            }
        }

        protected void kayit_Click(object sender, EventArgs e)
        {
            



            sehirler.DataTextField = "sehir";

            var model = new takip
            {
                Gadsoyad = Gadsoyad.Text,
                Gadres = Gadres.Text + " " + sehirler.SelectedItem.Text + "/" + ilcelerr.SelectedItem.Text,
                Gtelno = Gtelno.Text,
                Aadsoyad = Aadsoyad.Text,
                Aadres = Aadres.Text + " " + sehirler1.SelectedItem.Text + "/" + ilcelerr2.SelectedItem.Text,
                Atelno = Atelno.Text,
                Durum = RadioButtonList1.SelectedValue

            };

            db.takips.Add(model);
            db.SaveChanges();

            Response.Redirect("/Genel/modalpopup.aspx");
        }

        protected void sehirler_SelectedIndexChanged(object sender, EventArgs e)
        {
            int sehirID = int.Parse(sehirler.SelectedValue);
            var model = db.ilcelers.Where(x => x.sehir == sehirID).ToList();

            ilcelerr.DataSource = model;
            ilcelerr.DataTextField = "ilce";
            ilcelerr.DataValueField = "id";
            ilcelerr.DataBind();
            ilcelerr.Items.Insert(0, new ListItem("---Seçiniz---", "0"));
        }
        protected void sehirler1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int sehirID1 = int.Parse(sehirler1.SelectedValue);
            var model1 = db.ilcelers.Where(x => x.sehir == sehirID1).ToList();

            ilcelerr2.DataSource = model1;
            ilcelerr2.DataTextField = "ilce";
            ilcelerr2.DataValueField = "id";
            ilcelerr2.DataBind();
            ilcelerr2.Items.Insert(0, new ListItem("---Seçiniz---", "0"));
        }
    }
}