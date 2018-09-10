using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_.Model;
using System.Data.SqlClient;

namespace DAL_.Persistence
{
    public class PessoaDAL : Conexao
    {
        //Método para gravar dados
        public void Gravar(Pessoa p)
        {
            try
            {
                AbrirConexao();

                command = new SqlCommand("INSERT INTO pessoa(nome, endereco, email) VALUES(@v1, @v2, @v3)", conexao);

                command.Parameters.AddWithValue("@v1", p.nome);
                command.Parameters.AddWithValue("@v2", p.endereco);
                command.Parameters.AddWithValue("@v3", p.email);


                command.ExecuteNonQuery();

            }
            catch (Exception e)
            {
                throw new Exception("Erro ao gravar dados no banco de dados. Detalhes: " + e.Message);
            }        
            finally
            {
                FecharConexao();
            }
        }

        //Método para atualizar dados
        public void AtualizarDados(Pessoa p)
        {
            try
            {
                AbrirConexao();

                command = new SqlCommand("UPDATE pessoa SET nome = @v1, endereco = @v2, email = @v3 WHERE codigo = @v4", conexao);

                command.Parameters.AddWithValue("@v1", p.nome);
                command.Parameters.AddWithValue("@v2", p.endereco);
                command.Parameters.AddWithValue("@v3", p.email);
                command.Parameters.AddWithValue("@v4", p.codigo);

                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método para excluir dados
        public void ExcluirDados(int codigo)
        {
            try
            {
                AbrirConexao();

                command = new SqlCommand("DELETE FROM pessoa WHERE codigo = @v1", conexao);

                command.Parameters.AddWithValue("@v1", codigo);

                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception("Erro ao excluir dados do banco de dados. Detalhes: " + e.Message);
            }
        }

        //Método para obter 1 pessoa
        public Pessoa PesquisarPessoaPorCodigo(int codigo)
        {
            try
            {
                AbrirConexao();

                command = new SqlCommand("SELECT * FROM pessoa WHERE codigo = @v1", conexao);

                command.Parameters.AddWithValue("@v1", codigo);

                Pessoa p = null;

                reader = command.ExecuteReader();

                if(reader.Read())
                {
                    p = new Pessoa();

                    p.codigo = Convert.ToInt32(reader["codigo"]);
                    p.nome = reader["nome"].ToString();
                    p.endereco = reader["codigo"].ToString();
                    p.email = reader["codigo"].ToString();
                }

                return p;
            }
            catch (Exception e)
            {
                throw new Exception("Erro ao buscar dados. Detalhes: " + e.Message);
            }
        }

        //Método para obter todas as pessoas
        public List<Pessoa> Listar()
        {
            try
            {
                AbrirConexao();

                command = new SqlCommand("SELECT * FROM pessoa", conexao);

                reader = command.ExecuteReader();

                List<Pessoa> lista = new List<Pessoa>();

                while(reader.Read())
                {
                    Pessoa p = new Pessoa();

                    p.codigo = Convert.ToInt32(reader["codigo"]);
                    p.nome = reader["nome"].ToString();
                    p.endereco = reader["endereco"].ToString();
                    p.email = reader["email"].ToString();

                    lista.Add(p);
                }

                return lista;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
