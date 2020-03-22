<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bins.Locacao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form>
		<% if(request.getParameter("cdUsuario") != null){ %>
		<p>C�digo do usu�rio: <%=request.getParameter("cdUsuario") %> </p>
		<% } %>
		
		<% if(request.getParameter("cdCarro") != null){ %>
		<p>C�digo do Carro: <%=request.getParameter("cdCarro") %> </p>
		<% } %>
		
		<% if(request.getParameter("dtLocacao") != null){ %>
		<p>Data de loca��o: <%=request.getParameter("dtLocacao") %> </p>
		<% } %>
		
		<% if(request.getParameter("dtPrevDevolucao") != null){ %>
		<p>Data prev. devolu��o: <%=request.getParameter("dtPrevDevolucao") %> </p>
		<% } %>
		
		<% if(request.getParameter("dtDevolucao") != null){ %>
		<p>Data devolu��o: <%=request.getParameter("dtDevolucao") %> </p>
		<% } %>
		
		<% if(request.getParameter("vlCobrar") != null){ %>
		<p>Valor a cobrar: <%=request.getParameter("vlCobrar") %> </p>
		<% } %>
		
		<% if(request.getParameter("vlMulta") != null){ %>
		<p>Valor multa: <%=request.getParameter("vlMulta") %> </p>
		<% } %>
		
		<% if(request.getParameter("vlPago") != null){ %>
		<p>Valor pago: <%=request.getParameter("vlPago") %> </p>
		<% } %>
		
		<%
		Locacao l = new Locacao();
		
		l.setDtDev(request.getParameter("dtDevolucao"));
		l.setDtLocacao(request.getParameter("dtLocacao"));
		l.setUsuario(request.getParameter("cdUsuario"));
		l.setVeiculo(request.getParameter("cdCarro"));
		l.setVlMulta(request.getParameter("vlMulta"));
		l.setVlPagar(request.getParameter("vlPagar"));
		l.setVlPago(request.getParameter("vlPago"));
		
		
		List <Locacao> locacoes;
		if(session.getAttribute("locacoes")== null){
			locacoes = new ArrayList<Locacao>();
			session.setAttribute("locacoes", locacoes);
		}
		else{
			locacoes = (ArrayList)session.getAttribute("locacoes");
			locacoes.add(l);
		}		
		%>
		
		<p><a href="Locacao.jsp">Voltar</a></p>			
	</form>
</body>
</html>