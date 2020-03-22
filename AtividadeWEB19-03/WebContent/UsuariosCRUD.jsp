<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bins.Pessoas"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pessoa</title>
</head>
<body>
	<form>
		<% if(request.getParameter("cdUsuario") != null){ %>
		<p>Código do usuário: <%=request.getParameter("cdUsuario") %> </p>
		<% } %>
		
		<% if(request.getParameter("nmUsuario") != null){ %>
		<p>Nome: <%=request.getParameter("nmUsuario") %> </p>
		<% } %>
		
		<% if(request.getParameter("snUsuario") != null){ %>
		<p>Sobre nome: <%=request.getParameter("snUsuario") %> </p>
		<% } %>
		
		<% if(request.getParameter("cdCNH") != null){ %>
		<p>CNH: <%=request.getParameter("cdCNH") %> </p>
		<% } %>
		
		<% if(request.getParameter("dtNascimento") != null){ %>
		<p>Nascimento: <%=request.getParameter("dtNascimento") %> </p>
		<% } %>
		
		<% if(request.getParameter("cdTelefone") != null){ %>
		<p>Telefone: <%=request.getParameter("cdTelefone") %> </p>
		<% } %>
		
		<% if(request.getParameter("nmEmail") != null){ %>
		<p>Email: <%=request.getParameter("nmEmail") %> </p>
		<% } %>
		
		<% if(request.getParameter("nmEndereco") != null){ %>
		<p>Email: <%=request.getParameter("nmEndereco") %> </p>
		<% } %>

		<% if(request.getParameter("cdCep") != null){ %>
		<p>CEP: <%=request.getParameter("cdCep") %> </p>
		<% } %>	

		<% if(request.getParameter("cdCidade") != null){ %>
		<p>Cidade: <%=request.getParameter("cdCidade") %> </p>
		<% } %>	

		<% if(request.getParameter("cdUf") != null){ %>
		<p>UF: <%=request.getParameter("cdUf") %> </p>
		<% } %>
		
		<% if(request.getParameter("cdCpl") != null){ %>
		<p>Cpl: <%=request.getParameter("cdCpl") %> </p>
		<% } %>
		
		<%
		Pessoas p = new Pessoas();
		
		p.setCep(request.getParameter("cdCep"));
		p.setCidade(request.getParameter("nmCidade"));
		p.setCnh(request.getParameter("cdCNH"));
		p.setCpl(request.getParameter("cdCpl"));
		p.setEmail(request.getParameter("nmEmail"));
		p.setEndereco(request.getParameter("nmEndereco"));
		p.setFone(request.getParameter("cdTelefone"));
		p.setNascimento(request.getParameter("dtNascimento"));
		p.setNome(request.getParameter("nmUsuario"));
		p.setSobrenome(request.getParameter("snUsuario"));
		p.setUf(request.getParameter("cdUf"));
		p.setCodigo(request.getParameter("cdUsuario"));
		
		List <Pessoas> pessoas;
		if(session.getAttribute("pessoas")== null){
			pessoas = new ArrayList<Pessoas>();
			session.setAttribute("pessoas", pessoas);
		}
		else{
			pessoas = (ArrayList)session.getAttribute("pessoas");
			pessoas.add(p);
		}		
		%>
		
		<p><a href="Usuarios.jsp">Voltar</a></p>			
	</form>
</body>
</html>