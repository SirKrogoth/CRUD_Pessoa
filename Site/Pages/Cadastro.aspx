<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Site.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro</title>
    <link type="text/css" rel="stylesheet" href="../Content/bootstrap.css"/>
</head>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-10 offset-1">
                <div class="flex-row">
                    <h3>Cadastro de Cliente</h3>

                    
                    <p>Nome do cliente:</p>
                    <asp:TextBox ID="txtNome" runat="server" with="45%" CssClass="form-control" placeholder="Nome"></asp:TextBox>                    

                    <asp:RequiredFieldValidator 
                        id="requiredNome"
                        runat="server"
                        ControlToValidate="txtNome"
                        ErrorMessage="Por favor, digite um nome."
                        ForeColor="Red"/>   
                    <br />
                    
                    <p>Endereço:</p>
                    <asp:TextBox ID="txtEndereco" runat="server" with="45%" CssClass="form-control" placeholder="Endereço"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator 
                        id="requiredEndereco"
                        runat="server"
                        ControlToValidate="txtEndereco"
                        ErrorMessage="Por favor, digite um Endereço."
                        ForeColor="Red"/>
                    <br />
                    
                    <p>E-mail:</p>
                    <asp:TextBox ID="txtEmail" runat="server" with="45%" CssClass="form-control" placeholder="E-mail"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator 
                        id="requiredEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Por favor, digite um email."
                        ForeColor="Red"/>
                    <br />

                    <asp:Button ID="btnCadastrarCliente" runat="server" Text="Gravar" CssClass="btn btn-success" OnClick="btnCadastrarCliente_Click"/>
                    <a ID="btnVoltar" class="btn btn-secondary" href="../Default.aspx">Voltar</a>
                    <br />
                    <br />
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
