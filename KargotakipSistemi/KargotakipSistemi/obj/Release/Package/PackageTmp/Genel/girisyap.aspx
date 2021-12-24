<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="girisyap.aspx.cs" Inherits="KargotakipSistemi.Genel.girisyap1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <title></title>
        <link href="../tasarim2.css" rel="stylesheet" />
        <link href="../tasarim.css" rel="stylesheet" />
    </head>


    <br />
   
    <form>
        <center>
           
          
            	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
						<div class="brand_logo_container">
						<img src="/image/logo.png" class="brand_logo" alt="Logo">
					</div>
					
				</div>
				<div class="d-flex justify-content-center form_container">
				
						<div class="input-group mb-3">
							
							<h4><b>Kullanıcı Adı</b></h4> <asp:TextBox ID="kulad" CssClass="text3" requred="" runat="server"></asp:TextBox>
						</div>
						<div class="input-group mb-2">
							
							<h4><b>Şifre</b></h4><asp:TextBox ID="sifre" CssClass="text3" TextMode="Password" requred="" runat="server"></asp:TextBox>
						</div>
					<br />
					<div >
				  	    <asp:Label ID="hata" Visible="false" runat="server" Text="Hatalı Giriş" Font-Italic="True" Font-Bold="True" ForeColor="Red"></asp:Label>
						</div>
							<div class="d-flex justify-content-center mt-3 login_container" style="height: 60px; width: 95px; margin-left: 0px; margin-top: 25px">
				                <asp:Button ID="btngiris" CssClass="btngiris" runat="server" Text="Giriş" OnClick="btngiris_Click" Height="44px" style="margin-left: 0px; margin-right: 0px; margin-top: 1.2em" Width="96px" />
				   </div>
    </form>
    </div>
		
				
		</div>
	</div>
	</div> </center>
</body>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
