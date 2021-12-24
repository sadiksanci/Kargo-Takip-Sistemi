<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modalpopup.aspx.cs" Inherits="KargotakipSistemi.Genel.modalpopup" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Kargo Eklendi...</title>
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
<div class="container">
 
  <!-- Trigger the modal with a button -->
<%--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Kargo Numarasaı</h4>
        </div>
        <div class="modal-body">
              <asp:Repeater ID="Repeater1" runat="server">
                  <ItemTemplate>
                      <b><asp:Label ID="Label1" runat="server" Text="Kargo Numarası.:"></asp:Label></b>
                      <div class="cerceve">

                          <%# Eval("Kargono") %> 


                      </div>


                  </ItemTemplate>

              </asp:Repeater>
           
        
        </div>
        <div class="modal-footer">
          <%--<button type="button" class="btn btn-default" data-dismiss="modal" onclick="kapat">Close</button>--%>
            <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="Tamam" OnClick="Button1_Click" />
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
