
package br.com.DAO;

import br.com.DTO.LivroDTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
public class LivroDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<LivroDTO> lista = new ArrayList<>();
    
    /* CRUD
    CREATE criar/salvar
    READ
    UPDATE
    DELETE
    */
    
    public void CadastrarLeitor(LivroDTO objLivroDTO) throws ClassNotFoundException{
        String sql ="insert into livros (nome_livro) value(?)"; /* se hover mais campos a cadastrar inserir os campos 
        separados por virgula e acressentar (?,?,?)*/
        con= new ConexaoDAO().conexaoBD();
        
        try {
            pstm=con.prepareStatement(sql);
            pstm.setString(1, objLivroDTO.getNome_livro());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
        }
    
    }
    public ArrayList<LivroDTO>PesquisarLivro() throws ClassNotFoundException{
        String sql ="select * from livros";
        con= new ConexaoDAO().conexaoBD();
        try {
            pstm=con.prepareStatement(sql);
            rs=pstm.executeQuery(sql);
            while (rs.next()){
                LivroDTO objLivroDTO= new LivroDTO();
                objLivroDTO.setId_livro(rs.getInt("id_livro"));
                objLivroDTO.setNome_livro(rs.getString("nome_livro"));
                
                lista.add (objLivroDTO);
                
            }
        } catch (SQLException e) {
        }
        
        return lista;
    }
 public void ExcluirLivro(LivroDTO objLivroDTO) throws ClassNotFoundException{
        String sql ="delete from livros where id_livro=?";
        con= new ConexaoDAO().conexaoBD();
        
        try {
            pstm=con.prepareStatement(sql);
            pstm.setInt(1, objLivroDTO.getId_livro());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
        }
    
    }
public void AlterarLivro(LivroDTO objLivroDTO) throws ClassNotFoundException{
        String sql ="update livros set nome_livro=? where id_livro=?";
        con= new ConexaoDAO().conexaoBD();
        
        try {
            pstm=con.prepareStatement(sql);
            pstm.setString(1, objLivroDTO.getNome_livro());
            pstm.setInt(2, objLivroDTO.getId_livro());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
        }
    
    }
}