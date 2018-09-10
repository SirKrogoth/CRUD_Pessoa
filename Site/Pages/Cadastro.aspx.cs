using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL_.Model;
using DAL_.Persistence;

namespace Site.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Default.aspx");
        }

        protected void btnCadastrarCliente_Click(object sender, EventArgs e)
        {
            try
            {
                Pessoa p = new Pessoa();

                p.nome = txtNome.Text;
                p.endereco = txtEndereco.Text;
                p.email = txtEmail.Text;

                PessoaDAL pDAL = new PessoaDAL();

                pDAL.Gravar(p);

                LimparCadastroCliente();

                lblMensagem.Text = "Cliente " + p.nome + " cadastrado com sucesso.";
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);                
            }
        }

        public void LimparCadastroCliente()
        {
            txtNome.Text = string.Empty;
            txtEndereco.Text = string.Empty;
            txtEmail.Text = string.Empty;
        }
    }
}