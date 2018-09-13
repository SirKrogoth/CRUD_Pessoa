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
    public partial class Detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnExcluir.Attributes.Add("onClick", "Confirmar()");
        }

        protected void txtCodigo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            try
            {
                pnlDados.Visible = true;

                Pessoa p = new Pessoa();
                PessoaDAL pDAL = new PessoaDAL();

                p = pDAL.PesquisarPessoaPorCodigo(Convert.ToInt32(txtCodigo.Text));

                txtCodigo.Text = p.codigo.ToString();
                txtCodigo.Enabled = false;
               
                txtNome.Text = p.nome.ToString();
                txtEndereco.Text = p.endereco.ToString();
                txtEmail.Text = p.email.ToString();                

                lblMensagem.Text = String.Empty;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Default.aspx");
        }
        
        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            try
            {
                PessoaDAL pDAL = new PessoaDAL();                
                               
                pDAL.ExcluirDados(Convert.ToInt32(txtCodigo.Text));

                lblMensagem.Text = "Usuário excluido da base de dados com sucesso.";

                pnlDados.Visible = false;
                txtCodigo.Enabled = true;

                LimparTela();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void btnAtualizar_Click(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        private void LimparTela()
        {
            txtCodigo.Text = String.Empty;
            txtNome.Text = String.Empty;
            txtEndereco.Text = String.Empty;
            txtEmail.Text = String.Empty;
        }
    }
}