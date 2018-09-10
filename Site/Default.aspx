<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site.Pages.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css"/>
</head>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="frmPrincipal" runat="server">
        <div class="jumbotron">
            <h1 class="display-4">Projeto CRUD - Controle de Clientes</h1>

            <p class="lead">Selecione a operação desejada:</p>
            <asp:DropDownList ID="ddlMenu" runat="server">
                <asp:ListItem Value="0" Text=" - Escolha uma opção - "></asp:ListItem>
                <asp:ListItem Value="1" Text="Cadastrar Clientes"></asp:ListItem>
                <asp:ListItem Value="2" Text="Consultar Clientes"></asp:ListItem>
                <asp:ListItem Value="3" Text="Obter dados de Cliente"></asp:ListItem>
            </asp:DropDownList>

            <asp:Button id="btmMenu" runat="server" Text="Acessar" CssClass="btn btn-primary" OnClick="btmMenu_Click"/>

            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
