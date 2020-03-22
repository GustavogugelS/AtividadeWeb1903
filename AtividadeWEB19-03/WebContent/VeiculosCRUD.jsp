<%@page import="bins.Carros"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de veículos</title>
</head>
<body>
	<form>
		<% if(request.getParameter("cdCarro") != null){ %>
		<p>Código do carro: <%=request.getParameter("cdCarro") %> </p>
		<% } %>
		
		<% if(request.getParameter("nmCarro") != null){ %>
		<p>Nome do carro: <%=request.getParameter("nmCarro") %> </p>
		<% } %>
		
		<% if(request.getParameter("vlCarro") != null){ %>
		<p>Valor do carro: <%=request.getParameter("nmCarro") %> </p>
		<% } %>
		
		<p>Marca: FIAT</p>
		
		<p>Tipo: Sedan</p>
		
		
		<!-- Adicionando os valores na lista -->
		<%
		
		Carros c = new Carros();
		
		c.setCodigo(request.getParameter("cdCarro"));
		c.setDescricao(request.getParameter("nmCarro"));
		c.setMarca("FIAT");
		c.setModelo("SEDAN");
		c.setValor(request.getParameter("vlCarro"));
		
		List <Carros> carros;
		if(session.getAttribute("carros")== null){
			carros = new ArrayList<Carros>();
			session.setAttribute("carros", carros);
		}
		else{
			carros = (ArrayList)session.getAttribute("carros");
			carros.add(c);
		}		
		%>
		<p><a href="Veiculos.jsp">Voltar</a></p>			
	</form>
</body>
</html>