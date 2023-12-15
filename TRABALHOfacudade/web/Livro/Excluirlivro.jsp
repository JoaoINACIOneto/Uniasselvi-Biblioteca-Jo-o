<%-- 
    Document   : Excluirlivro
    Created on : 14 de dez. de 2023, 14:10:39
    Author     : raimu
--%>

<%@page import="br.com.DAO.LivroDAO"%>
<%@page import="br.com.DTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style> 
            *{ margin: 0 auto} /* Centraliza o cabeçalho*/
            header{
                width: 90%;
                height: 200px;
                display: flex;
                align-items: center;
                background-image: url(../Livro/Fotos/estante.jpg);
                background-size: 50%;
            }
            Main h1{color: red;}
            
            nav{width: 90%; 
            background-color: #0EF4FC;
            display: flex;
            align-items: center;}
            nav a{  /*Edita o link*/
                color:black
            }
            Nav a:hover{ /*Edita o que acontece quando selecionado*/
                color: red;}
            
            Main{width: 90%;     /* Parte pincipal*/
            height: 500px;
            background-image: url(../Livro/Fotos/excluir.jpg);
            background-size: initial;
            background-repeat: no-repeat;
            margin: 0 auto;
            }
            
            
            
            footer{width: 90%;
                   background-color: #0EF4FC;
                   display: flex;
                   align-items: center;
                   height: 100px;
               }
            
          </style>
    </head>
    <body>
        <header></header>
        
        <nav>  
            <a href="listarlivro.jsp">VER LIVROS</a>
            <a href="frmLivroVIEM.html">VOLTAR</a>
        </nav>
        <main>
       <h1>Que Infelicidade. Um livro foi excluido!</h1>
        <%
           LivroDTO objLivroDTO=new LivroDTO();
           objLivroDTO.setId_livro(Integer.parseInt(request.getParameter("id")));
           
           LivroDAO objLivroDAO = new LivroDAO();
           objLivroDAO.ExcluirLivro(objLivroDTO);
            
           %>
    </main>
    <<footer>
        <p>Desenvolvido por: João Inácio</p>
    </footer>
        </body>
    
</html>
