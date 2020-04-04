<%@page import="model.Pessoas"%>
<%@page import="model.Carros"%>
<%@page import="controler.VeiculoCadastro"%>
<%@page import="model.Locacao"%>
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

    <title>Locação</title>
  </head>
<body>
	<form action="LocacaoCadastro" method="get" name="cdCarro">
	<div>
		<label for="exampleInputEmail1">Código do carro</label>
		<select class="form-control" id="exampleFormControlSelect1" name="cdCarro">				
			<%List<Carros> carros;
			if(session.getAttribute("carros") == null){
			carros = new ArrayList<Carros>();
			session.setAttribute("carros", carros);
			}
			else
				carros = (ArrayList<Carros>) session.getAttribute("carros");
			
			for(Carros l : carros){
				out.print("<option value=\""+l.getCodigo()+"\" >"+l.getCodigo()+"</option>");
			}%>				
		</select>
	</div>
	 <div class="form-group">
		<label for="exampleInputEmail1">Código da pessoa</label>
	    <select class="form-control" id="exampleFormControlSelect1" name="cdUsuario">
	    	<%List <Pessoas> pessoas;
	   		if(session.getAttribute("pessoas") == null){
	   			pessoas = new ArrayList<Pessoas>();
				session.setAttribute("pessoas", pessoas);
			}
			else
				pessoas = (ArrayList<Pessoas>) session.getAttribute("pessoas");	
	    		
	    	for(Pessoas p : pessoas){
				out.print("<option value=\""+p.getCodigo()+"\" >"+p.getCodigo()+"</option>");
			}%>
	    </select>
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Data Locação (Ex. 30/12/1899)</label>
	    <input type="text" class="form-control" name="dtLocacao" aria-describedby="emailHelp">
	 </div>
	 <div class="form-group">
	    <label for="exampleInputEmail1">Data prev. devolução (Ex. 30/12/1899)</label>
	    <input type="text" class="form-control" name="dtPrevDevolucao" aria-describedby="emailHelp">
	 </div>
	  <div class="form-group">
	    <label for="exampleInputEmail1">Valor cobrar</label>
	    <input type="text" class="form-control" name="vlCobrar" aria-describedby="emailHelp" value='0'>
	 </div>
<!--  	 <div class="form-group"> -->
<!--	    <label for="exampleInputEmail1">Valor Pago</label>-->
<!--	    <input type="text" class="form-control" name="vlPago" aria-describedby="emailHelp">-->
<!--	 </div>	 	 	 	 -->	 	 	 		
		<button type="submit" class="btn btn-primary">Locar</button><label for="exampleInputEmail1">Atenção, todos os veículos geram 10% do valor como multa por dia de atraso!</label>
	</form>
	
		<%List<Locacao> locacoes;
		if(session.getAttribute("locacoes") == null){
			locacoes = new ArrayList<Locacao>();
			session.setAttribute("locacoes", locacoes);
		}
		else
			locacoes = (ArrayList<Locacao>) session.getAttribute("locacoes");
		
		//out.print("	Tamanho: " + locacoes.size());%>
		

	<br>
	<div>
		<table class="table table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Pessoa</th>
		      <th scope="col">Veículo</th>
		      <th scope="col">Data de locação</th>
		      <th scope="col">Prev. devolução</th>
		      <th scope="col">Data de devolução</th>
		      <th scope="col">Multa</th>
		      <th scope="col">Valor Locação</th>
		      <th scope="col">Valor pago (Multa + Locação)</th>
		    </tr>
		  </thead>
		  <tbody>
		  <%for(Locacao l : locacoes){%>
		    <tr>
		      <td><%out.print(l.getUsuario()); %></td>
		      <td><%out.print(l.getVeiculo()); %></td>
		      <td><%out.print(l.getDtLocacao()); %></td>
		      <td><%out.print(l.getDtPrevLocacao()); %></td>
		      <td><%out.print(l.getDtDev()); %></td>
		      <td><%out.print(l.getVlMulta()); %></td>
		      <td><%out.print(l.getVlPagar()); %></td>
		      <td><%out.print(l.getVlPago()); %></td>
		    <%}%>
		    </tr>
		  </tbody>
		</table><br>
		</div>
		
		<form action="LocacaoAlteracao">
		<div>
			<h3><label for="exampleInputEmail1">Devolução</label></h3>
		<div>
			<label for="exampleInputEmail1">Selecione o Veículo</label>
			<select class="form-control" id="exampleFormControlSelect1" name="slLocacao">
				<%for(Locacao l : locacoes){
					out.print("<option value=\""+l.getUsuario()+"\" >"+l.getUsuario()+"</option>");
				}%>
			</select>
		</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Informe a data de devolução</label>
			 	<input type="text" class="form-control" name="dtDevolucao" aria-describedby="emailHelp">
			 </div>
		</div>
		<button type="submit" class="btn btn-primary">Alterar</button> 
	</form><br>
	
		
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