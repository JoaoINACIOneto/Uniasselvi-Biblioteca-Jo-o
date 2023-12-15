<%-- 
    Document   : listarlivro
    Created on : 7 de dez. de 2023, 13:28:48
    Author     : raimu
--%>

<%@page import="br.com.DTO.LivroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{ margin: 0 auto} /* Centraliza o cabeçalho*/
            header{
                width: 90%;
                height: 50px;
                background-color: #989304;
                display: flex;
                align-items: center;   
            }
            nav{width: 90%;
                height: 40px;
            background-color: #0EF4FC;
            display: flex;
            align-items: center;}
            nav a{  /*Edita o link*/
               padding: 5px 10px;
               background-color: black;
               border: none;
               color: white;
               text-decoration: none;
               
            }
            Nav a:hover{ /*Edita o que acontece quando selecionado*/
                color: blueviolet;}
            main{
                width: 90%;
                height: 800px;
                
                align-items: center;
                background-image: url(../Livro/Fotos/lista.jpg);
                background-size: 100%  
            }
            footer{width: 90%;
                   background-color: #0EF4FC;
                   height: 100px;
               }
        </style>
    </head>
    <body>
        <header><h1>Lista de Livros</h1></header>
        <nav>
            <br>
            <a href="frmLivroVIEM.html">Novo Cadastro</a>
             <img url="../Livro/lista.jpg" width="50px">
        </nav>
        <main>
           
        <%
            try {
                    LivroDAO objLivroDAO = new LivroDAO();
                    ArrayList<LivroDTO> lista = objLivroDAO.PesquisarLivro();
                    %>  <br>Uniasselvi<br> <%
                    for (int num = 0;num<lista.size();num++){
                            out.print("Código: " + lista .get(num).getId_livro()+"<br>");
                            out.print("Titulo: " + lista .get(num).getNome_livro()+"<br>");
                            
                            out.print ("<a href ='frmExcluirLivroVIEW.jsp?id="
                            + lista.get(num).getId_livro()+"&nome="
                            + lista.get(num).getNome_livro()+"'>Excluir </a>");
                            
                            out.print ("<a href ='frmAlterarLivroVIEW.jsp?id="
                            + lista.get(num).getId_livro()+"&nome="
                            + lista.get(num).getNome_livro()+"'>Modificar </a>");
                            
                            %>  <br>    <br> <%
                        }
                } catch (Exception e) {
                }
            
            %>
    </main>
        <footer><p>Desenvolvido: Academico de ADS João Inácio</p></footer>
            </body>
</html>
