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
		<select name="loc">
		<%
		for(Locacao l : locacoes){
			out.print("<option value=\""+l.getUsuario()+"\" >"+l.getUsuario()+"</option>");
		}
		%>
		</select>
		
		LOQUE
		<% 
		out.println(request.getAttribute("loc"));
		%> 
				
		<table>
		<%for(Locacao l : locacoes){%>
			<tr>
			<td>C�digo Pessoa: </td>
			<td><%out.print(l.getUsuario()); %></td>
			<td>C�digo Ve�culo: </td>
			<td><%out.print(l.getVeiculo()); %></td>
			<td>Data de loca��o :</td>
			<td><%out.print(l.getDtLocacao()); %></td>
			<td>Data de devolu��o: </td>
			<td><%out.print(l.getDtDev()); %></td>
			<td>Multa: </td>
			<td><%out.print(l.getVlMulta()); %></td>
			<td>Valor a pagar: </td>
			<td><%out.print(l.getVlPagar()); %></td>
			<td>Valor pago: </td>
			<td><%out.print(l.getVlPago()); %></td>
			<%}%>
			<tr>
		</table>	
	</form>
	<p><a href="Index.jsp">Voltar</a></p>
</body>
</html>