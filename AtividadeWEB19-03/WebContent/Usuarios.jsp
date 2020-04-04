<%@page import="model.Pessoas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Cadastro de pessoas</title>
  </head>
  <body>
	<!-- Entrada de dados do cadastro -->
	<form action="PessoaCadastro" method="get">
	 <div class="form-group">
	    <label for="exampleInputEmail1">Código da pessoa</label>
	    <input type="text" class="form-control" name="cdUsuario" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Nome</label>
	    <input type="text" class="form-control" name="nmUsuario" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Sobrenome</label>
	    <input type="text" class="form-control" name="snUsuario" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">CNH</label>
	    <input type="text" class="form-control" name="cdCNH" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Nascimento</label>
	    <input type="text" class="form-control" name="dtNascimento" aria-describedby="dtNascimento">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Telefone</label>
	    <input type="text" class="form-control" name="cdTelefone" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Email</label>
	    <input type="email" class="form-control" name="nmEmail" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Endereco</label>
	    <input type="text" class="form-control" name="nmEndereco" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">CEP</label>
	    <input type="text" class="form-control" name="cdCep" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Cidade</label>
	    <input type="text" class="form-control" name="cdCidade" aria-describedby="emailHelp">
	 </div>	
	 <div class="form-group">
	    <label for="exampleInputEmail1">UF</label>
	    <input type="text" class="form-control" name="cdUf" aria-describedby="emailHelp">
	 </div>	
	 <div class="form-group">
	    <label for="exampleInputEmail1">CPL</label>
	    <input type="text" class="form-control" name="cdCpl" aria-describedby="emailHelp">
	 </div>	  	 	 	 
		<button type="submit" class="btn btn-primary">Cadastrar</button>
	</form>
	
		<%
		List<Pessoas> pessoas;
		if(session.getAttribute("pessoas") == null){
			pessoas = new ArrayList<Pessoas>();
			session.setAttribute("pessoas", pessoas);
		}
		else
			pessoas = (ArrayList<Pessoas>) session.getAttribute("pessoas");
		
		//out.print("	Tamanho: " + pessoas.size());
		%>
		
		<!-- Adiciona em um combo -->
		<!--  <select class="form-control" id="exampleFormControlSelect1" name="slUsuario">
			<%
			for(Pessoas p : pessoas){
				out.print("<option value=\""+p.getCodigo()+"\" >"+p.getCodigo()+"</option>");
			}
		%>-->
		</select><br>
	<div>
		<table class="table table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Código</th>
		      <th scope="col">Nome</th>
		      <th scope="col">Sobrenome</th>
		      <th scope="col">CNH</th>
		      <th scope="col">Data de Nascimento</th>
		      <th scope="col">Endereço</th>
		      <th scope="col">Cidade</th>
		      <th scope="col">UF</th>
		      <th scope="col">Cpl</th>
		    </tr>
		  </thead>
		  <tbody>
		  <%for(Pessoas p : pessoas){%>
		    <tr>
			<td><%out.print(p.getCodigo()); %></td>
			<td><%out.print(p.getNome()); %></td>
			<td><%out.print(p.getSobrenome()); %></td>
			<td><%out.print(p.getCnh()); %></td>
			<td><%out.print(p.getNascimento()); %></td>
			<td><%out.print(p.getEndereco()); %></td>
			<td><%out.print(p.getCidade()); %></td>
			<td><%out.print(p.getUf()); %></td>
			<td><%out.print(p.getCpl()); %></td>
		    <%}%>
		    </tr>
		  </tbody>
		</table><br>
		</div>		
	<div>
		<button class="btn btn-warning"><a href="Index.jsp" >Voltar</a></button>
	</div>	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>