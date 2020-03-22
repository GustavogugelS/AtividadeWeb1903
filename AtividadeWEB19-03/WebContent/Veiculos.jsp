<%@page import="java.util.ArrayList"%>
<%@page import="bins.Carros"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Veículo</title>
</head>
<body>
	<form action="VeiculosCRUD.jsp" method="get">
		Código do carro: <input type="text" name="cdCarro"> <br>
		Nome do carro: <input type="text" name="nmCarro"> <br>
		Valor do carro: <input type="text" name="vlCarro"> <br>
		Tipo: <label name="vlCarro"></label> <br>
		
		<input type="submit" value="Enviar" />	
	</form>
	
	<form>
		<%
		List<Carros> carros;
		if(session.getAttribute("carros") == null){
			carros = new ArrayList<Carros>();
			session.setAttribute("carros", carros);
		}
		else
			carros = (ArrayList<Carros>) session.getAttribute("carros");
		
		out.print("	Tamanho: " + carros.size());
		%>
		
		<!-- Adiciona em um combo -->
		<select>
		<%
		for(Carros c : carros){
			out.print("<option value=\""+c.getCodigo()+"\" >"+c.getCodigo()+"</option>");
		}
		%>
		</select>
		
		
	</form>
</body>
</html>