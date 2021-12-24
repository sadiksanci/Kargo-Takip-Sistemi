using KargotakipSistemi.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargotakipSistemi.Genel
{
    public partial class Kargolarr : System.Web.UI.Page
    {

        KTSEntities1 db = new KTSEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.takips.ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
            var model2 = db.mesajs.ToList();
            Repeater2.DataSource = model2;
            Repeater2.DataBind();

            if (!IsPostBack)
            {


                var model12 = (from x in db.illers
                             select new
                             {
                                 value = x.id.ToString(),
                                 text = x.sehir
                             }).ToList();
                sehirler.DataSource = model12;
                sehirler.DataTextField = "text";
                sehirler.DataValueField = "value";
                sehirler.DataBind();
                sehirler.Items.Insert(0, new ListItem("---Seçiniz---", "0"));

                var model13 = (from x in db.illers
                              select new
                              {
                                  value = x.id.ToString(),
                                  text = x.sehir
                              }).ToList();
                sehirler1.DataSource = model12;
                sehirler1.DataTextField = "text";
                sehirler1.DataValueField = "value";
                sehirler1.DataBind();
                sehirler1.Items.Insert(0, new ListItem("---Seçiniz---", "0"));

            }



        }
        protected void kayit_Click(object sender, EventArgs e)
        {




            sehirler.DataTextField = "sehir";

            var modeli = new takip
            {
                Gadsoyad = Gadsoyad.Text,
                Gadres = Gadres.Text + " " + sehirler.SelectedItem.Text + "/" + ilcelerr.SelectedItem.Text,
                Gtelno = Gtelno.Text,
                Aadsoyad = Aadsoyad.Text,
                Aadres = Aadres.Text + " " + sehirler1.SelectedItem.Text + "/" + ilcelerr2.SelectedItem.Text,
                Atelno = Atelno.Text,
                Durum = RadioButtonList1.SelectedValue

            };

            db.takips.Add(modeli);
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
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (kargolardiv.Visible == true)
            {
                kargolardiv.Visible = false;
            }
            else if (kargolardiv.Visible == false)
            {
                kargolardiv.Visible = true;
            }
            if (karlardivi.Visible == true)
            {
                karlardivi.Visible = false;
            }
            else if (karlardivi.Visible == false)
            {
                karlardivi.Visible = true;
            }
           
            if (Div1.Visible == true)
            {
                Div1.Visible = false;
            }
            if (eklemediv.Visible == true)
            {
                eklemediv.Visible = false;
            }
            if (mesajdivi.Visible == true)
            {
                mesajdivi.Visible = false;
            }
            if (ekledivi.Visible == true)
            {
                ekledivi.Visible = false;
            }

        }

        protected void btnmesaj_Click(object sender, EventArgs e)
        {
            if (Div1.Visible == true)
            {
                Div1.Visible = false;
            }
            else if (Div1.Visible == false)
            {
                Div1.Visible = true;
            }
            if (mesajdivi.Visible == false)
            {
                mesajdivi.Visible = true;
            }
            else if (mesajdivi.Visible == true)
            {
                mesajdivi.Visible = false;
            }

            if (karlardivi.Visible == true)
                {
                    karlardivi.Visible = false;
                }
             if (ekledivi.Visible == true)
            {
                ekledivi.Visible = false;
            }
            if (kargolardiv.Visible == true)
            {
                kargolardiv.Visible = false;
            }
            if (eklemediv.Visible == true)
            {
                eklemediv.Visible = false;
            }



        }


        protected void ekleme1_Click(object sender, EventArgs e)
        {
            if (eklemediv.Visible == false)
            {
                eklemediv.Visible = true;
            }
            else if (eklemediv.Visible == true)
            {
                eklemediv.Visible = false;
            }
            if (ekledivi.Visible == false)
            {
                ekledivi.Visible = true;
            }
            else if (eklemediv.Visible == true)
            {
                eklemediv.Visible = false;
            }
            if (Div1.Visible == true)
            {
                Div1.Visible = false;
            }

             if  (kargolardiv.Visible == true)
            {
                kargolardiv.Visible = false;
            }

            
            if (mesajdivi.Visible == true)
            {
                mesajdivi.Visible = false;
            }

            if (karlardivi.Visible == true)
            {
                karlardivi.Visible = false;
            }
        }

        protected void cik_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Genel/girisyap.aspx");
        }


    }
}
   