<%-- 
    Document   : testeProduto
    Created on : 22/05/2018, 16:34:21
    Author     : Jaque
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
      <div class="row">
        <div class="col-md-12">
          <h2 class="bg-primary text-white text-center"><b>Lista de Alunos</b></h2>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
      </div>
    </div>
       
                <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="col-md-12 p-3" >
          <table class="table table-hover table-striped table-bordered" width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info" style="width: 100%;">
            <thead class="thead-inverse">
              <tr role="row">
                                             <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="cpf" style="width: 170px;">CPF do alunos</th>
                                            <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Nome do aluno" style="width: 170px;">Nome do aluno</th>
                                        <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="senha do aluno" style="width: 170px;">Senha do aluno</th>
                                        <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Foto do aluno" style="width: 170px;">Foto do aluno</th>
                                       <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Estado do aluno" style="width: 170px;">Estado do aluno</th>
                                        </tr>
                                    </thead>
          <tbody>
                                        ${resultado4}
                                    </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
                <!-- /.panel-heading -->
        
                
                                    
                    <!-- /.panel-body -->
               
                                    <div class="container">
      <div class="row">
        <div class="col-md-12"><a class="btn btn-light w-100 btn-lg border-primary rounded text-secondary border flex-grow-1 align-items-center justify-content-center d-flex" href="tabelaAlunos"><b>Lista de Alunos</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="#"><b>Lista de Modalidaes</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="#"><b>Lista de Disciplinas</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="#"><b>Cadastro de Estados</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="#"><b>Cadastro de Alunos</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="#"><b>Cadastro de Modalidades</b></a><a class="btn btn-light w-100 btn-lg border border-primary rounded text-secondary" href="#"><b>Cadastro de Disciplinas</b></a></div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous" style=""></script>


           
    </body>

</html>
