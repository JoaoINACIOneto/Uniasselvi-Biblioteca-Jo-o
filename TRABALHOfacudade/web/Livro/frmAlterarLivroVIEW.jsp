<%-- 
    Document   : frmAlterarLivroVIEW
    Created on : 14 de dez. de 2023, 14:40:11
    Author     : raimu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <header> <!-- Cria o cabeçalho da pag -->
            <h1> Uniasselvi Paper Implementação</h1></header>
        
        <!-- Segunda sequimento do site -->
        <nav> <label>LIVROS DO JOÃO</label> <br><!-- comment -->
      
           <a href="listarlivro.jsp">Livros Cadastrados</a>
        </nav>
         <!-- Terceira caixa -->
            
             <form action="Alterarlivro.jsp" method="post">
                 
            <br><b></b>
            
            <label>CODIGO DO LIVRO</label> <br>
        <input type="text" name="id" 
               value="<%=request.getParameter("id")%>"> <br>
        
        <label>NOME DO LIVRO</label> <br>
        <input type="text" name="nome"
               value="<%=request.getParameter("nome")%>"><br><!-- comment -->
            
            <button type="submit">MODIFICAR</button>
        </form>  
        
        
        <footer>
            <p>Desenvolvido por: João Inácio</p>
        </footer>
        
</html>
