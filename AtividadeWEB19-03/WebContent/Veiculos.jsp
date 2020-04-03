<%@page import="java.util.ArrayList"%>
<%@page import="model.Carros"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Cadastro de Veículos!</title>
  </head>
 <body>
 	<form action="VeiculoCadastro" method="get">
	 <div class="form-group">
	    <label for="exampleInputEmail1">Código do Veículo</label>
	    <input type="text" class="form-control" name="cdCarro" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Nome do Veículo</label>
	    <input type="text" class="form-control" name="nmCarro" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Valor do Veículo</label>
	    <input type="number" class="form-control" name="vlCarro" aria-describedby="emailHelp">
	 </div>
	  	<button type="submit" class="btn btn-primary">Cadastrar</button>
	  	
	  	<%List<Carros> carros;
		if(session.getAttribute("carros") == null){
			carros = new ArrayList<Carros>();
			session.setAttribute("carros", carros);
		}
		else
			carros = (ArrayList<Carros>) session.getAttribute("carros");
		
		out.print("<label>Quantidade de veículos cadastrados:</label> " + carros.size());%>
	</form>
	<br>
	<div>	
	<!-- Adiciona em um combo -->
	<div class="form-group">
		<label for= "exampleFormControlSelect1">Selecione um carro para alterar</label>
		<select class="form-control" id="exampleFormControlSelect1">
			<%for(Carros c : carros){
				out.print("<option value=\"" + c.getCodigo() + "\" >" + c.getCodigo()+ "</option>");
			}%>
		</select>
   </div>
		<table>
		<%for(Carros c : carros){%>
			<tr>
			<td>Código carro: </td>
			<td><%out.print(c.getCodigo()); %></td>
			<td>Descrição: </td>
			<td><%out.print(c.getDescricao()); %></td>
			<td>Marca: </td>
			<td><%out.print(c.getMarca()); %></td>
			<td>Modelo: </td>
			<td><%out.print(c.getModelo()); %></td>
			<td>Valor: </td>
			<td><%out.print(c.getValor()); %></td>
			<%}%>
			<tr>
		</table>
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