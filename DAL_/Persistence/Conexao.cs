using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAL_.Persistence
{
    public class Conexao
    {
        //Atributos
        protected SqlConnection conexao;
        protected SqlCommand command;
        protected SqlDataReader reader;

        //Método - Abrir conexão
        protected void AbrirConexao()
        {
            try
            {
                conexao = new SqlConnection(@"Data Source=DESKTOP-ORTRKJA\MSSQLSERVER2014;Initial Catalog=CRUDPessoa;User ID=sa;Password=506829");

                conexao.Open();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        //Método - Fechar conexão
        protected void FecharConexao()
        {
            try
            {
                conexao.Close();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
}
