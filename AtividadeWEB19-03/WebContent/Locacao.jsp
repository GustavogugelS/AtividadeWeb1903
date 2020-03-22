<%@page import="java.util.ArrayList"%>
<%@page import="bins.Locacao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loca��o de ve�culos</title>
</head>
<body>
	<form action="LocacaoCRUD.jsp" method="get">
		<p>C�digo do carro: <input type="text" name="cdCarro"> </p>
		<p>C�digo da pessoa: <input type="text" name="cdUsuario"> </p>
		<p>Data Loca��o: <input type="text" name="dtLocacao"> </p>
		<p>Data prev. devolu��o: <input type="text" name="dtPrevDevolucao"> </p>
		<p>Data devolu��o: <input type="text" name="dtDevolucao"> </p>
		<p>Valor cobrar: <input type="text" name="vlCobrar"> </p>
		<p>Valor de multa: <input type="text" name="vlMulta"> </p>
		<p>Valor Pago: <input type="text" name="vlPago"> </p>
		
		<input type="submit" value="Enviar" />	
	</form>
	<form>
		<%
		List<Locacao> locacoes;
		if(session.getAttribute("locacoes") == null){
			locacoes = new ArrayList<Locacao>();
			session.setAttribute("locacoes", locacoes);
		}
		else
			locacoes = (ArrayList<Locacao>) session.getAttribute("locacoes");
		
		out.print("	Tamanho: " + locacoes.size());
		%>
		
		<!-- Adiciona em um combo -->
		<select>
		<%
		for(Locacao l : locacoes){
			out.print("<option value=\""+l.getUsuario()+"\" >"+l.getUsuario()+"</option>");
		}
		%>
		</select>	
	</form>
</body>
</html>