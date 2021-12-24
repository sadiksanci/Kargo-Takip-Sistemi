<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Kargolarr.aspx.cs" Inherits="KargotakipSistemi.Genel.Kargolarr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Kargolar</title>

        
          <link href="../tasarim.css" rel="stylesheet" />

        <style>
            .kargo {
                width: 150px;
                height: 100px;
                background-color: aqua;
                color: black;
                border: solid 2px blue;
                margin-top: 10px;
            }

            .kargo1 {
                width: 150px;
                height: 100px;
                background-color: aqua;
                color: black;
                border: solid 2px blue;
                margin-top: 10px;
            }

            .butonlar {
                width: 500px;
                height: 250px;
                background-color: gray;
            }
          .silbuton {
                background-color: red;
                border: 1px solid green;
                width: 100px;
                height: 150px;
                border-radius: 50px;
                -moz-border-radius: 50px;
                -webkit-border-radius: 50px;
                color: black;
                text-decoration: none;
            }

            .detay {
                background-color: green;
                border: 1px solid green;
                width: 200px;
                height: 150px;
                border-radius: 10px;
                -moz-border-radius: 10px;
                -webkit-border-radius: 10px;
                text-decoration: none;
                color: black;
            }

            .button07 {
                display: inline-block;
                padding: 15px 25px;
                font-size: 24px;
                cursor: pointer;
                text-align: center;
                text-decoration: none;
                outline: none;
                color: #fff;
                background-color: #f4511e;
                border: none;
                border-radius: 15px;
                box-shadow: 0 9px #999;
                width:175px;
                height:65px;
                margin-top:30px;
                text-decoration:solid;
            }

                .button07:hover {
                    background-color: #3e8e41
                }

                .button07:active {
                    background-color: #3e8e41;
                    box-shadow: 0 5px #666;
                    transform: translateY(4px);
                }
                .button0 {
                display: inline-block;
                padding: 15px 25px;
                font-size: 24px;
                cursor: pointer;
                text-align: center;
                text-decoration: none;
                outline: none;
                color: #fff;
                background-color: red;
                border: none;
                border-radius: 15px;
                box-shadow: 0 9px #999;
                width:175px;
                height:65px;
                margin-top:30px;
                text-decoration:solid;
            }
                .button0:hover {
                    background-color: red
                }

                .button0:active {
                    background-color: red;
                    box-shadow: 0 5px #666;
                    transform: translateY(4px);
                }

            .sayfa {
                margin: 0px auto;
            }

            .ust {
                margin-top: 0;
                height: 150px;
                
               
            }

            .sol {
                float: left;
                width: 200px;
                height: 400px;
                
                
            }

            .sag {
              
                height:auto;
            }
            .temizle {
                clear: both;
            }

            .alt {
                height: 50px;
                background-color: #60a3bc;
            }
            body{
                background-color:#60a3bc;
            }
            .auto-style3 {
                float: left;
                width: 200px;
                height: 400px;
                margin-top: 72px;
            }
        </style>

        <link href="../tasarim.css" rel="stylesheet" />
    </head>
    <body >
        <div class="sayfa" >
            <div class="ust" style="background-color:#60a3bc">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" ID="btnkargo" class="button07" Text="Kargolar" OnClick="Unnamed1_Click" />
                    &nbsp;&nbsp;
                <asp:Button ID="btnmesaj" runat="server" class="button07" Text="Mesajlar" OnClick="btnmesaj_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="ekleme1" runat="server" class="button07"  Text="Kargo Ekleme" OnClick="ekleme1_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" class="button0"  Text="Çıkış" OnClick="cik_Click" Width="105px" />
                    <br />
                    <br />
                    <br />
                    <br />
            </div>

            <div class="icerik" >
                <div class="auto-style3" style="background-color:#60a3bc">  
                    <div id="mesajdivi" visible="false" runat="server">
                    <img src="/image/mesajlar1.png"  style="width:200px; height:200px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </div>
                      <div id="ekledivi" visible="false" runat="server">
                    <img src="/image/kargoekle.png" style="width:200px; height:200px;" >
               </div>
                      <div id="karlardivi" visible="false" runat="server">
                    <img src="/image/kargolar.png" style="width:200px; height:200px;">
               </div>

                </div>
                <div class="sag" style="background-color:#60a3bc">


            <div id="kargolardiv" visible="false" runat="server" style="background-color:#60a3bc; height:auto; width:auto" >
                <br />   
                <b> <asp:Label ID="Label3" runat="server" Text="KARGOLAR" style="font-size:28px; margin-left:150px;font-style:oblique; "></asp:Label></b> 
               <br /><br />
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table id="personel" class="kargonuz" style="background-color:white;">
                            <thead>
                                <tr>

                                    <th>Kargo no</th>
                                    <th>Gönderen Ad Soyad</th>
                                    <th>Gönderen Tel No</th>
                                    <th>Gönderen Adres</th>
                                    <th>Alıcı Ad Soyad</th>
                                    <th>Alıcı Adres</th>
                                    <th>Alıcı Tel No</th>
                                    <th>Durum</th>
                                    <th>    </th>

                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr>

                                <td><%#  Eval("Kargono") %></td>
                                <td><%#  Eval("Gadsoyad") %></td>
                                <td><%#  Eval("Gadres") %></td>
                                <td><%#  Eval("Gtelno") %></td>
                                <td><%#  Eval("Aadsoyad") %></td>
                                <td><%#  Eval("Aadres") %></td>
                                <td><%#  Eval("Atelno") %></td>
                                <td><%#  Eval("Durum") %></td>
                                <td><a href="/Genel/kargosil.aspx?gelenid=<%# Eval("Kargono") %>" class="silbuton">SİL</a>
                                </td>
                            </tr>

                        </tbody>
                    </ItemTemplate>
                    <FooterTemplate>

                        
                        </table>
                    </FooterTemplate>

                </asp:Repeater>

            </div>
            

            <div id="Div1" visible="false" runat="server" style="background-color:#60a3bc; height:auto; width:auto">
                   <br />
                <b> <asp:Label ID="Label2" runat="server" Text="MESAJLAR" style="font-size:28px; margin-left:150px;font-style:oblique; "></asp:Label></b> 
                <br /><br />
                <asp:Repeater ID="Repeater2" runat="server">
                    <HeaderTemplate>
                        <table id="personel" class="kargonuz" style="background-color:white;  margin-left:20px">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Ad Soyad</th>
                                    <th>Mail Adresi</th>
                                    <th>Konu</th>
                                    <th>Mesaj</th>
                                    <th>Tarih</th>
                                    <th>    </th>

                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                <td><%#  Eval("Id") %></td>
                                <td><%#  Eval("adsoyad") %></td>
                                <td><%#  Eval("email") %></td>
                                <td><%#  Eval("konu") %></td>
                                <td><%#  Eval("mesaj1") %></td>
                                <td><%#  Eval("tarih") %></td>


                                <td>
                                    <%-- <asp:Button ID="Button1" CssClass="silbuton" runat="server" Text="SİL" />--%>
                                    <a href="/Genel/mesajsil.aspx?gelenid=<%# Eval("Id") %>" class="silbuton">SİL</a>

                                </td>
                              



                            </tr>

                        </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                   

                        </table>
                    </FooterTemplate>




                </asp:Repeater>

            </div>
        
            <div id="eklemediv" visible="false" runat="server" style="background-color:#60a3bc; height:auto; width:auto">
         <br />
                <b> <asp:Label ID="Label1" runat="server" Text="KARGO EKLE" style="font-size:28px; font-style:oblique; margin-left:150px"></asp:Label></b> 
<br /><br />
	<table class="kargonuz" style="background-color:white; margin-left:150px">
		<tr>
			<td><label for="kullaniciadi">Gönderen Ad Soyad:</label></td>		
            <td><asp:TextBox ID="Gadsoyad" runat="server"  ></asp:TextBox></td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Gönderen Adres:</label></td>		
          <td><asp:TextBox ID="Gadres" runat="server" TextMode="MultiLine"  ></asp:TextBox></td>
			<td><asp:DropDownList ID="sehirler" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sehirler_SelectedIndexChanged" ></asp:DropDownList> </td>
			<td><asp:DropDownList ID="ilcelerr" runat="server"></asp:DropDownList> </td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Gönderen Telno:</label></td>		
            <td><asp:TextBox ID="Gtelno" runat="server"  ></asp:TextBox></td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Alıcı Ad Soyad:</label></td>		
          <td><asp:TextBox ID="Aadsoyad" runat="server"  ></asp:TextBox></td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Alıcı Adres:</label></td>		
          <td><asp:TextBox ID="Aadres" runat="server" TextMode="MultiLine"  ></asp:TextBox></td>
			<td><asp:DropDownList ID="sehirler1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sehirler1_SelectedIndexChanged" ></asp:DropDownList> </td>
			<td><asp:DropDownList ID="ilcelerr2" runat="server"></asp:DropDownList> </td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Alıcı Tel No:</label></td>		
          <td><asp:TextBox ID="Atelno" runat="server"  ></asp:TextBox></td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Durum:</label></td>
			<td>
			<asp:radiobuttonlist id="RadioButtonList1" runat="server">
                        <asp:listitem>Ödendi</asp:listitem>
                        <asp:listitem>Karşı Ödemeli(5₺)</asp:listitem>
                        <asp:listitem>Karşı Ödemeli(10₺)</asp:listitem>
                        <asp:listitem>Karşı Ödemeli(15₺)</asp:listitem>
                      
                    </asp:radiobuttonlist>
			
			</td>
            <td> <asp:Button ID="kayit" runat="server" Text="Onayla"  CssClass="buton buton-yukari buton-yesil" OnClick="kayit_Click" /></td>
        
		</tr>
       

		</table>

		
				
</div>
        </div>
</div>
               
                <div class="temizle">
            </div>
            
            <div class="alt">
                <div id="Div2" visible="true" runat="server">  <img src="/image/alt2.png"  style="width:auto; height:50px;">

                             </div>
        </div>
       
        
          

    </body>



    </div>



    </div>



    </div>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
