<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="KargotakipSistemi.Genel.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <head>
    <title>İletişim Formu</title>
        <link href="../tasarim2.css" rel="stylesheet" />
          <script type = "text/javascript">
              function Confirm() {

                  alert("Mesajınız Gönderildi...")
              }
          </script>
    <style>
        label {
            display: block;
            margin-top: 20px;
            letter-spacing: 2px;
        }

        .iletisim-form {
            width: 459px;
            padding: 50px;
            display: block;
            margin: 0 auto;
            background: rgb(255,214,94); /* Old browsers */
            background: -moz-linear-gradient(top, rgba(255,214,94,1) 0%, rgba(254,191,4,1) 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top, rgba(255,214,94,1) 0%,rgba(254,191,4,1) 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom, rgba(255,214,94,1) 0%,rgba(254,191,4,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffd65e', endColorstr='#febf04',GradientType=0 ); /* IE6-9 */
        }

        form {
            margin: 0 auto;
        }

        input, textarea {
            width: 439px;
            height: 27px;
            background: #efefef;
            border: 1px solid #dedede;
            padding: 10px;
            margin-top: 3px;
            font-size: 0.9em;
            color: #3a3a3a;
        }


        input, textarea {
            width: 439px;
            height: 27px;
            background: #efefef;
            border: 1px solid #dedede;
            padding: 10px;
            margin-top: 3px;
            font-size: 0.9em;
            color: #3a3a3a;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }

        textarea {
             width: 439px;
            height: 220px;
            background: #efefef;
            background-size: contain;
        }

            input:focus, textarea:focus {
                border: 1px solid #97d6eb;
            }
       

            #kaydet:hover {
                opacity: .9;
            }
        .auto-style2 {
            float: right;
            width: 207px;
            height: 28px;
            margin-left: 6px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 195px;
            float: left;
        }
        .auto-style4 {
            width: 439px;
        }
        .auto-style5 {
            width: 455px;
            height: 22px;
        }
        .auto-style6 {
            width: 75px;
        }
        .auto-style7 {
            width: 402px;
            height: 59px;
        }
        .auto-style8 {
            width: 465px;
            height: 322px;
            margin-left: 0px;
            margin-right: 1px;
        }
           #Button1 {
    width:127px;
    height:38px;
background: #45484d; /* Old browsers */
background: -moz-linear-gradient(top,  #45484d 0%, #000000 100%); /* FF3.6-15 */
background: -webkit-linear-gradient(top,  #45484d 0%,#000000 100%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(to bottom,  #45484d 0%,#000000 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#45484d', endColorstr='#000000',GradientType=0 ); /* IE6-9 */
            color:#fff;
    border:none;
    margin-top:20px;
    cursor:pointer;
}

	#Button1:hover {
	    opacity:.9;
	}
        </style>
    </head>


    <body>

        <div class="iletisim-form">
            <form >
              <b>  <label class="auto-style6">İsim</label></b>
               <div>
                
                    <input  id="isim" name="isim" type="text" placeholder="Adınız" class="auto-style3" required="" >
                    <input  id="isim1" name="isim1" type="text" placeholder="Soyadınız" class="auto-style2" required="" >

               </div> <br /><br />
                <div class="auto-style8">
                <b> <label class="auto-style5">E Posta</label><br /></b>
                <input  id="email" name="email" type="email" placeholder="Mail Adresiniz" class="auto-style4" >

                <b><label>Başlık</label></b>
                <input ID="TextBox1" name="TextBox1" type="text" placeholder="Mail Adresiniz" required=""    >

               <b> <label>İleti</label></b>
                <textarea id="mesajı" name="mesajı" placeholder="Mesajınız" class="auto-style7" required=""></textarea>
                
                 </div> 
                 <asp:Button ID="Button1" runat="server" type="submit" Text="Gönder"   class=" btngiris" OnClick="Button1_Click1"  OnClientClick = "Confirm()"/>

             
            </form>
        </div>


    </body>
</asp:Content>
