
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Entidades.Estado"%>
<%@page import="java.util.List"%>
<%@page import="DAOs.DAOEstado"%>

<%
    DAOEstado daoEstado = new DAOEstado();
    List<Estado> estado = daoEstado.listInOrderNome();

%>
<html>
    <jsp:useBean id="dao" class="DAOs.DAOEstado"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/CadastroAlunoServlet">
            <div>    
                <label for="cpf do Aluno">cpf do Aluno:</label>
                <input type="text" name="cpfAluno"/>
            </div>
            <div>
                <label for="nome do Aluno">nome do Aluno:</label>
                <input type="text" name="nomeAluno"/>
                <label for="senha do Aluno">senha do Aluno:</label>
                <input type="text" name="senhaAluno"/>
            </div>
            <div>
                <label for="foto do Aluno">foto do Aluno:</label>
                <input type="text" name="fotoAluno"/>
               
            </div>
            
        
            
                    
            <select name="estado">
                            <%
                  for (int i = 0; i < estado.size(); i++) {
                         %>
                         <option value="<%=estado.get(i).getSiglaEstado()%>"><%=estado.get(i).getNomeEstado()%></option>
                         <%
                      }
                %>
                        </select>
                         <input href="http://localhost:8081/DilogosWEBV4/" type="submit" name="ok"/>
          
        </form>
  
                        
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
      <div class="row">
        <div class="col-md-12">
          <form method="post" action="${pageContext.request.contextPath}/CadastroAlunoServlet">
            <div class="form-group"> <label>CPF</label> <input type="text" class="form-control" name="cpfAluno"> </div>
            <div class="form-group"> <label>Nome</label> <input type="text" class="form-control" name="nomeAluno">
              <div class="form-group"><label>Senha</label><input type="password" class="form-control" name="senhaAluno">
                <div class="form-group"><label>Foto</label><input type="text" class="form-control" name="fotoAluno">
                  <div class="form-group"><label>Estado</label>
                      <select class="form-control" name="estado">
                            <%
                  for (int i = 0; i < estado.size(); i++) {
                         %>
                         <option value="<%=estado.get(i).getSiglaEstado()%>"><%=estado.get(i).getNomeEstado()%></option>
                         <%
                      }
                %>
                        </select></div>
                </div>
              </div>
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
        <div class="col-md-12"><a class="btn btn-light w-100 btn-lg border-primary rounded text-secondary border flex-grow-1 align-items-center justify-content-center d-flex" href="tabelaAluno"><b>Lista de Alunos</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="tabelaModalidades"><b>Lista de Modalidaes</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="tabelaDisciplinas"><b>Lista de Disciplinas</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="paginas/cadastroEstado.jsp"><b>Cadastro de Estados</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="paginas/cadastroModalidade.jsp"><b>Cadastro de Modalidades</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="paginas/cadastroDisciplina.jsp"><b>Cadastro de Disciplinas</b></a></div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous" style=""></script>
    </body>
</html>
