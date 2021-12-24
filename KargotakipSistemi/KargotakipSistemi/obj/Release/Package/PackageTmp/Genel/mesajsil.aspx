<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mesajsil.aspx.cs" Inherits="KargotakipSistemi.Genel.mesajsil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      
        <title>İletişim</title>
        <link href="../tasarim2.css" rel="stylesheet" />
    
     
        <link href="../tasarim.css" rel="stylesheet" />
  
        <style>
      
            .contact-form {
                padding: 50px;
                margin: 30px 0;
            }

                .contact-form h1 {
                    color: #19bc9d;
                    font-weight: bold;
                    margin: 0 0 15px;
                }

                .contact-form .form-control, .contact-form .btn {
                    min-height: 38px;
                    border-radius: 2px;
                }

                    .contact-form .form-control:focus {
                        border-color: #19bc9d;
                    }

                .contact-form .btn-primary, .contact-form .btn-primary:active {
                    color: #fff;
                    min-width: 150px;
                    font-size: 16px;
                    background: #19bc9d !important;
                    border: none;
                }

                    .contact-form .btn-primary:hover {
                        background: #15a487 !important;
                    }

                .contact-form .btn i {
                    margin-right: 5px;
                }

                .contact-form label {
                    opacity: 0.7;
                }

                .contact-form textarea {
                    resize: vertical;
                }

            .hint-text {
                font-size: 15px;
                padding-bottom: 20px;
                opacity: 0.6;
            }

            .sayfa {
                margin: 0px auto;
            }

            .ust {
                margin-top: 0;
                height: 150px;
                ;
                background-color: coral;
            }

            .sol {
                float: left;
                width: 200px;
                height: 400px;
                ;
                background-color: aqua;
            }

            .sag {
                background-color: dodgerblue;
                height: 400px;
            }

            .temizle {
                clear: both;
            }

            .alt {
                height: 50px;
                background-color: crimson;
            }
            .auto-style1 {
                width: 49px;
            }
             .Textbox
{
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    border: 1px solid #2cace5;
    outline:0;  
}
.Textbox:hover {
background: white;
    border: 1px solid #2cace5;
    border-radius: 5px;
    -moz-border-radius: 5px;
    -webkit-moz-border-radius: 5px;
    box-shadow: 0 0 4px 2px #7cc5e5;
    color: #666;
    outline: none;
}
.Textbox:focus {
background: white;
    border: 1px solid #2cace5;
    border-radius: 5px;
    -moz-border-radius: 5px;
    -webkit-moz-border-radius: 5px;
    box-shadow: 0 0 4px 2px #2cace5;
    color: #666;
    outline: none;
}
  
       
        .auto-style1 {
            width: 334px;
            height: 28px;
        }
            .auto-style8 {
                width: 334px;
                height: 6px;
            }
            .auto-style9 {
                height: 6px;
            }
            .auto-style10 {
                width: 176px;
                height: 171px;
            }
            .auto-style11 {
                height: 452px;
                width: 373px;
                margin-left: 13px;
            }
            .auto-style12 {
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                border-radius: 5px;
                border: 1px solid #2cace5;
                outline: 0;
                margin-left: 0px;
            }
            .auto-style13 {
                width: 54px;
            }
            .auto-style14 {
                background-color: dodgerblue;
                height: 454px;
            }
            .auto-style15 {
                width: 334px;
                height: 47px;
            }
            .auto-style16 {
                height: 47px;
            }
            .auto-style17 {
                width: 54px;
                height: 47px;
            }
        </style>
    </head>  
    <body>

    
    
   

      
<section>
   <form runat="server">

        <div class="sayfa">
            <div class="ust">Üst</div>

            <div class="icerik">
                <div class="sol">Sol</div>
                <center><div class="auto-style14">
           <div>
                 <table style="background-color:gray" class="auto-style11">
<tr>
    <th class="auto-style15"><asp:Label ID="Label5" runat="server" Text="ID:"></asp:Label></th>
<td class="auto-style16"><asp:TextBox ID="mesajıd" CssClass="Textbox" runat="server" Width="233px"  Height="25px" ></asp:TextBox></td>
<th class="auto-style15"><asp:Label ID="Label1" runat="server" Text="Ad Soyad:"></asp:Label></th>
<td class="auto-style16"><asp:TextBox ID="mesajad" CssClass="Textbox" runat="server" Width="233px"  Height="25px" ></asp:TextBox></td>
     
<th class="auto-style17"><asp:Label ID="Label2" runat="server" Text="Mail"></asp:Label></th>
<td class="auto-style16"><asp:TextBox ID="mesajmail" CssClass="Textbox" runat="server" TextMode="Email"  Height="25px" Width="241px"  Required=""></asp:TextBox></td>

</tr>
  <tr>
<th class="auto-style1"><asp:Label ID="Label4" runat="server" Text="Konu"></asp:Label></th>
<td><asp:TextBox ID="mesajkonu" CssClass="Textbox" runat="server"    Height="25px" Width="234px"   ></asp:TextBox></td>
      <td> <td width="200" height="400" rowspan="3" align="center"><img src="/image/sil.jpg"  border="2" class="auto-style10"></td>
</tr>
<tr>
<th class="auto-style8"><asp:Label ID="Label3" runat="server" Text="Mesaj"></asp:Label></th>
<td class="auto-style9"><asp:TextBox ID="mesajlar" CssClass="Textbox" runat="server" TextMode="MultiLine" Width="318px" Height="117px" Required=""></asp:TextBox></td>
 
</tr>
  <tr>
<th class="auto-style1"><asp:Label ID="Label6" runat="server" Text="Tarih"></asp:Label></th>
<td><asp:TextBox ID="tarihi" CssClass="auto-style12" runat="server"  Width="143px" Height="25px" ></asp:TextBox>
</td>
      <td></td> <td class="auto-style13"> &nbsp;</td>
        <td> <asp:Button ID="geri" runat="server"  Text="Geri" CssClass="btn-primary" style="margin-left:0" Height="40px" Width="100px"></asp:Button> </td>
</tr>

</table>
                
           </div></div></center>
               
    
   </form>
    
</section></body>
</html>
