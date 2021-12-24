<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mesajdetay.aspx.cs" Inherits="KargotakipSistemi.Genel.mesajdetay" %>

<%--<!DOCTYPE html>

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
      <td> &nbsp;<td width="200" height="400" rowspan="3" align="center"> <asp:Button ID="geri" runat="server"  Text="Geri" CssClass="btn-primary" style="margin-left:0" Height="40px" Width="103px" OnClick="geri_Click"></asp:Button> <th class="auto-style1"><asp:Label ID="Label6" runat="server" Text="Tarih"></asp:Label></th>
<td><asp:TextBox ID="tarihi" CssClass="auto-style12" runat="server"  Width="220px" Height="25px" ></asp:TextBox>
</td></td>
</tr>
<tr>
<th class="auto-style8"><asp:Label ID="Label3" runat="server" Text="Mesaj"></asp:Label></th>
<td class="auto-style9"><asp:TextBox ID="mesajlar" CssClass="Textbox" runat="server" TextMode="MultiLine" Width="318px" Height="117px" Required=""></asp:TextBox></td>
 
</tr>
  <tr>

      <td></td> <td class="auto-style13"> &nbsp;</td>
        <td> &nbsp;</td>
</tr>

</table>
                
           </div></div></center>
               
    <%--<img src="/image/sil.jpg"  border="2" class="auto-style10">--%>
   </form>
    
</section></body>
</html>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        .cerceve{
            width:100%;

            border:1px solid gray;
            padding:5px;
        }

    </style>
</head>
<body>
    <form runat="server">
<div style="background-color:red">
 
  <!-- Trigger the modal with a button -->
<%--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
            <asp:TextBox ID="mesajıd" runat="server"></asp:TextBox>
           <asp:TextBox ID="mesajad" runat="server"></asp:TextBox>
            <asp:TextBox ID="mesajmail" runat="server"></asp:TextBox>
            <asp:TextBox ID="mesajkonu" runat="server"></asp:TextBox>
            <asp:TextBox ID="mesajlar" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:TextBox ID="tarihi" runat="server"></asp:TextBox>
        </div>
        <div class="modal-footer">
          <%--<button type="button" class="btn btn-default" data-dismiss="modal" onclick="kapat">Close</button>--%>
            <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="Tamam" OnClick="geri_Click" />
        </div>
      </div>
      
    </div>
  </div>
  
</div>
</form>
</body>
    <script>
        $(function () {
            $("#myModal").modal("show");
        });
    </script>
    
</html>