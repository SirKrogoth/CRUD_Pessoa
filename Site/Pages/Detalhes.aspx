<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="Site.Pages.Detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css"/>
</head>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4">Projeto CRUD - Cadastro de Clientes</h1>

                <p class="lead">Selecione a operalção desejada:</p>
                <asp:DropDownList ID="ddlMenu" runat="server">
                    <asp:ListItem Value="0" Text="- Selecione -"></asp:ListItem>
                    <asp:ListItem Value="1" Text="- Cadastrar Pessoa -"></asp:ListItem>
                    <asp:ListItem Value="2" Text="- Consultar Pessoa -"></asp:ListItem>
                    <asp:ListItem Value="3" Text="- Detalhes de Pessoa -"></asp:ListItem>
                </asp:DropDownList>
                <asp:Button id="btnMenu" runat="server" Text="Acessar" CssClass="btn btn-primary btn-lg"/>

                <p class="lead">
                    <asp:Label ID="lblMensagem" runat="server" class="lead"></asp:Label>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
