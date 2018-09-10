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
                <div class="col-10 offset-1">                 
                <h3>Detalhes do cliente</h3>

                <asp:TextBox runat="server" ID="txtCodigo" CssClass="form-control" Width="5%" OnTextChanged="txtCodigo_TextChanged" />
                <br />
                
                <asp:Button ID="btnPesquisar" runat="server" CssClass="btn btn-primary" Text="Pesquisar" OnClick="btnPesquisar_Click"/>    
                <asp:Button runat="server" ID="btnVoltar" Text="Voltar" CssClass="btn btn-secondary" OnClick="btnVoltar_Click"/>
                <br />
                <br />
                <br />

                <asp:Panel runat="server" ID="pnlDados" Visible="false">
                    <p>Nome do cliente</p>
                    <asp:TextBox runat="server" ID="txtNome" CssClass="form-control" Width="45%" Placeholder="Nome"></asp:TextBox>
                    <br />
                
                    <p>Endereço do cliente</p>
                    <asp:TextBox runat="server" ID="txtEndereco" CssClass="form-control" Width="45%" Placeholder="Endereço"></asp:TextBox>
                    <br />
                
                    <p>E-mail do cliente</p>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" Width="45%" Placeholder="Email"></asp:TextBox>
                    <br />
        
                    <asp:Button runat="server" ID="btnExcluir" Text="Excluir" CssClass="btn btn-danger"/>
                    <asp:Button runat="server" ID="btnAtualizar" Text="Atualizar" CssClass="btn btn-warning"/>
                    
                </asp:Panel>
            </div>              
        </div>        
    </form>
</body>
</html>
