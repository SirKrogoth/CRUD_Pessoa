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
    public partial class Consultar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                PessoaDAL p = new PessoaDAL();

                grdClientes.DataSource = p.Listar();//Listar conteúdo
                grdClientes.DataBind();//Exibir conteúdo no GRID
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao processar dados. Detalhes: " + ex.Message);
            }
        }
    }
}