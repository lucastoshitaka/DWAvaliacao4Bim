<%@page import="Entidades.Disciplinas"%>
<%@page import="DAOs.DAODisciplinas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="Entidades.Modalidades"%>
<%@page import="DAOs.DAOModalidades"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Entidades.Estado"%>
<%@page import="java.util.List"%>
<%@page import="DAOs.DAOEstado"%>

<%
    DAOEstado daoEstado = new DAOEstado();
    List<Estado> estado = daoEstado.listInOrderNome();

    DAOModalidades daoModalidades = new DAOModalidades();
    List<Modalidades> modalidades = daoModalidades.listInOrderNome();
    
DAODisciplinas daoDisciplinas = new DAODisciplinas();
 List<Disciplinas> disciplinas = daoDisciplinas.listInOrderNome();
%>
<html>
    <head>
       <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- PAGE settings -->
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>Dilogos</title>
  <meta name="author" content="Pingendo">
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="../theme.css" type="text/css">
    </head>
    <body>
       
        <div class="py-5 text-center">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h1 class="display-3">Dilogos</h1>
          <p class="lead text-muted">Preparatório para VESTIBULARES</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row bg-primary text-white">
        <div class="col-md-12">
          <h2 class="text-center"><b>Cadastro de Modalidades</b><br></h2>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <form method="post" action="${pageContext.request.contextPath}/CadastroModalidadeServlet">
            <div class="form-group"> <label>Nome</label> <input type="text" class="form-control" name="nomeModalidade"> </div>
             <div>
                                            <label>Disciplinas</label>
                                            <select class="form-control" name = "disciplinas" SIZE=5 multiple>
                                                <%                                for (int i = 0; i < disciplinas.size(); i++) {
                                                %>
                                                <option value="<%=disciplinas.get(i).getIdDisciplinas()%>"><%=disciplinas.get(i).getNomeDisciplinas()%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
            <button type="submit" class="btn btn-primary" name="ok">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
      </div>
    </div>
    <div class="container">
       <div class="row">
<div class="col-md-12"><a class="btn btn-light w-100 btn-lg border-primary rounded text-secondary border flex-grow-1 align-items-center justify-content-center d-flex" href="http://localhost:8081/DilogosWEBV9/tabelaAlunos"><b>Lista de Alunos</b>
                        </a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="http://localhost:8081/DilogosWEBV9/tabelaModalidades"><b>Lista de Modalidades</b>
                        </a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="http://localhost:8081/DilogosWEBV9/tabelaDisciplinas">
                            <b>Lista de Disciplinas</b></a>
    <a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="http://localhost:8081/DilogosWEBV9/tabelaEstado">
                                <b>Lista de Estados</b>
                        </a>
    <a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="cadastroAluno.jsp">
                            <b>Cadastro de Alunos</b></a>
                        <a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="cadastroModalidade.jsp">
                            <b>Cadastro de Modalidades</b></a>
                        <a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="cadastroDisciplina.jsp">
                            <b>Cadastro de Disciplinas</b></a>
     <a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="http://localhost:8081/DilogosWEBV9/tabelaAlunosModalidades">
                                <b>Lista de Alunos e Modalidades</b>
                        </a>
    <a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="http://localhost:8081/DilogosWEBV9/tabelaDisciplinasModalidades">
                                <b>Lista de Disciplinas e Modalidades</b>
                        </a>
 
                    </div>      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous" style=""></script>
  
        
    </body>
</html>
