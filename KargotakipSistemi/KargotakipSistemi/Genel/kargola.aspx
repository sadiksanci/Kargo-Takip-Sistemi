<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kargola.aspx.cs" Inherits="KargotakipSistemi.Genel.kargola" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../tasarim.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" >
        <div>
            
	<center><table class="kargonuz" style="background-color:white">
		<tr>
			<td><label for="kullaniciadi">Gönderen Ad Soyad:</label></td>		
            <td><asp:TextBox ID="Gadsoyad" runat="server" ></asp:TextBox></td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Gönderen Adres:</label></td>		
          <td><asp:TextBox ID="Gadres" runat="server" TextMode="MultiLine"></asp:TextBox></td>
			<td><asp:DropDownList ID="sehirler" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sehirler_SelectedIndexChanged" ></asp:DropDownList> </td>
			<td><asp:DropDownList ID="ilcelerr" runat="server"></asp:DropDownList> </td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Gönderen Telno:</label></td>		
            <td><asp:TextBox ID="Gtelno" runat="server"></asp:TextBox></td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Alıcı Ad Soyad:</label></td>		
          <td><asp:TextBox ID="Aadsoyad" runat="server"></asp:TextBox></td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Alıcı Adres:</label></td>		
          <td><asp:TextBox ID="Aadres" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
			<td><asp:DropDownList ID="sehirler1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sehirler1_SelectedIndexChanged" ></asp:DropDownList> </td>
			<td><asp:DropDownList ID="ilcelerr2" runat="server"></asp:DropDownList> </td>
		</tr>
		<tr>
			<td><label for="kullaniciadi">Alıcı Tel No:</label></td>		
          <td><asp:TextBox ID="Atelno" runat="server" ></asp:TextBox></td>
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
        
		</tr>

		</table>

		<asp:Button ID="kayit" runat="server" Text="Onayla"  CssClass="buton buton-yukari buton-yesil" OnClick="kayit_Click" />
	</center>
				

        </div>
    </form>
</body>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
