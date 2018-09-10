<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Site.Pages.Consultar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consultar Clientes</title>
    <link type="text/css" rel="stylesheet" href="../Content/bootstrap.css"/>
</head>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-10 offset-1">
                <div class="flex-row">
                    <h3>Consultar Clientes</h3>

                    <asp:GridView ID="grdClientes" runat ="server" CssClass="table table-hover table-striped" BackColor="#ccffcc" AutoGenerateColumns="false" GridLines="None">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Código"/>
                            <asp:BoundField DataField="Nome" HeaderText="Nome"/>
                            <asp:BoundField DataField="Endereco" HeaderText="Endereço"/>
                            <asp:BoundField DataField="Email" HeaderText="E-mail"/>
                        </Columns>
                        <RowStyle CssClass="cursor-pointer"/>
                    </asp:GridView>

                    <p>
                        <asp:Label id="lblMensagem" runat="server" />                                                   
                    </p>

                    <a ID="btnVoltar" class="btn btn-secondary" href="../Default.aspx">Voltar</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
