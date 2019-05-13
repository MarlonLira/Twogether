<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="Twogether.Views.Error.Error" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <asp:PlaceHolder runat="server" ID="head">
        <%: Styles.Render("~/bundles/css") %>
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
</head>
<body>
    <form id="form1" runat="server" >
        <div class="error-page-area" style="background-image:url('/img/bg/bg2.png') !important">
            <div class="error-page-wrap" style="color:gray !important">
                <i class="notika-icon notika-close"></i>
                <h2>ERRO <span class="counter">404</span></h2>

                <p>Desculpe, mas a página que você está procurando não foi encontrada. 
                    Tente verificar o URL em busca de um erro, e em seguida, 
                    pressione o botão de atualização no seu navegador.</p>

                <a href="\Default.aspx" class="btn" ">Dashboard</a>
                <a href="#" class="btn error-btn-mg">Reportar Problema</a>
            </div>
        </div>
    </form>
    <%: Scripts.Render("~/bundles/js") %>
</body>
</html>
