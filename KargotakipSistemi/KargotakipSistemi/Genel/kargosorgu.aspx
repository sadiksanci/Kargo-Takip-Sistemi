<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kargosorgu.aspx.cs" Inherits="KargotakipSistemi.Genel.kargosorgu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


   

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Kargo Sorgulama</title>
    <style>
        html {
  
    background: #60a3bc !important;
}
        #kargo {
            border-collapse: collapse;
            width: 50%;
            background-color:white;
            color: #000000;
        }

            #kargo td, #personel th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #kargo tr:nth-child(even) {
                background-color: #f2f2f2;
                color: #000000;
            }

            #kargo tr:hover {
                background-color: #2ecc71;
                color: #000000;
            }

            #kargo th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #2c3e50;
                color: white;
            }

        #ekran {
            display: block;
            margin: auto;
            background: #60a3bc;
            border-radius: 5px;
            width: 50%;
            height: 20em;
            height: auto;
            padding: 1em 1em 1em 1em;
            margin: auto;
            text-align: center;
            display: block;
            background-color: #60a3bc;
            /*border: 1px dashed white;*/
            width: 60%;
            height: auto;
        }

        #ekran1 {
            display: block;
            margin: auto;
            background: #6f92dc;
            border-radius: 5px;
            width: 50%;
            height: 20em;
            height: auto;
            padding: 1em 1em 1em 1em;
            margin: auto;
            text-align: center;
            display: block;
            background-color: #6f92dc;
            /*border: 1px dashed white;*/
            width: auto
            height: auto;
        }
        @import url(//fonts.googleapis.com/css?family=Lato:100,300,300i,400);

body {
  box-sizing: border-box;
  font-family: Lato, Arial;
  text-align: center;
  color: #eee;
  background-color:#60a3bc;

}

h2 {
  margin-top: 1em;
  margin-bottom: 1em;
  color: #eee;
  font-weight: 400;
  text-align: center;
  font-size: 200%;
  letter-spacing: 4px;
}

h4 {
  margin-top: 1em;
  color: #eee;
  font-size: 150%;
  font-weight: 300;
  text-align: center;
}

button {
  display: inline;
  background: #01A4E0;
  color: #2184AC;
  border: 0;
  padding: 4px;
}

input {
    display: block;
    width: 98%;
  height: 30px; 
    margin-top: 1.0em;
   padding: 4px;
}

small {
  display: inline-block;
  margin-top: 5px;
  color: white;
  font-size: 100%;
  color: #fff;
}

.login-box {
    padding: 1em 1em 1em 1em;
    margin: auto;
    text-align: center;
    display: block;
    background-color: #60a3bc;
    /*border: 1px dashed white;*/
    width: 50%;
  height: auto;
}

.outer-box {
    display: block;
    margin: auto;
    background: #60a3bc;
    border-radius: 5px;
    width: 50%;
    height: 20em;
  height: auto;
}

.btnsor {
  display: block;
  width: 150px;
  height: 40px;
  margin-top: 2.0em;
  border-radius: 4px;
  background-color: #3366cc;
  color: #fff;
}
.ust {
                margin-top:0px;
                height: 150px;
               
                 background-color: #60a3bc;
               
            }

            .sol {
                float: left;
                width: 400px;
                height: 400px;
                 background-color: #60a3bc;
            }

            .sag {
                background-color: #60a3bc;
                height: 400px;
            }

            .temizle {
                clear: both;
            }

            .alt {
                height: 50px;
                background-color: #60a3bc;
            }



    </style>
    <link href="../tasarim.css" rel="stylesheet" />
</head>

<body>
   

        <div class="sayfa">
            <div class="ust" style="margin-top:0"> 
                <center> 
                    <div style="width:250px; height:150px; margin-top:20px">
                <input ID="sad" name="sad" placeholder="Kargo Numarası" required="">
                 <asp:Button id="btnsor" runat="server"  Text="Sorgula" OnClick="sorgu_Click" />
               </div></center>  
            </div>

            <div class="icerik">
                <div class="sol">
                
                        <div id="sorgulardivi" visible="true" runat="server">  <img src="/image/soru1.png"  style="width:200px; height:200px;"> </div>
                       
                </div>
                <center><div class="sag">
                
    <div id="ekran" style="background-color:#60a3bc" runat="server" visible="false">
        
 <table id="kargo">
            <thead>
                <tr>

                    <th>Kargo no</th>
                    <th>Gönderen Ad Soyad</th>
                    <th>Gönderen Adres</th>
                    <th>Gönderen Tel No</th>
                    <th>Alıcı Ad Soyad</th>
                    <th>Alıcı Adres</th>
                    <th>Alıcı Tel No</th>
                    <th>Durum</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>

                    <td>
                        <asp:Label ID="kargono" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="gadsoyad" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="gadres" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="gtelno" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="aadsoyad" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="aadres" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="atelno" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="durum" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </tbody>
        </table>
    </div>
          
                </div></center>
                <div class="temizle"></div>
            </div>
            <div class="alt">
                <div id="Div1" visible="true" runat="server">  <img src="/image/alt2.png"  style="width:auto; height:50px;">

                             </div>
        </div>
    

    
</body>
</html>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
