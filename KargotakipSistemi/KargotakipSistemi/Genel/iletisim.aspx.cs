using System;
using KargotakipSistemi.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargotakipSistemi.Genel
{
    public partial class iletisim : System.Web.UI.Page
    {
        KTSEntities1 db = new KTSEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string isim = Request.Form["isim"].ToString();
            string isim1 = Request.Form["isim1"].ToString();
            string mail = Request.Form["email"].ToString();
            string baslık = Request.Form["TextBox1"].ToString();
            string mesajı = Request.Form["mesajı"].ToString();
            mesaj model = new mesaj
            {
                adsoyad = isim+" "+isim1,
                email = mail,
                konu = baslık,
                mesaj1 = mesajı,
                tarih = DateTime.Now



            };
            db.mesajs.Add(model);
            db.SaveChanges();

          

        }

    }
    }
