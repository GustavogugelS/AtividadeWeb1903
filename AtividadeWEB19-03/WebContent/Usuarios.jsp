<%@page import="bins.Pessoas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Pessoas</title>
</head>
<body>
	<!-- Entrada de dados do cadastro -->
	<form action="UsuariosCRUD.jsp" method="get">
		<p>Código da pessoa: <input type="text" name="cdUsuario"></p>
		<p>Nome: <input type="text" name="nmUsuario"></p>
		<p>Sobrenome: <input type="text" name="snUsuario"></p>
		<p>CNH: <input type="text" name="cdCNH"></p>
		<p>Nascimento: <input type="text" name="dtNascimento"></p>
		<p>Telefone: <input type="text" name="cdTelefone"></p>
		<p>Email: <input type="text" name="nmEmail"></p>
		<p>Endereco: <input type="text" name="nmEndereco"></p>
		<p>CEP: <input type="text" name="cdCep"></p>
		<p>Cidade: <input type="text" name="cdCidade"></p>
		<p>UF: <input type="text" name="cdUf"></p>
		<p>CPL: <input type="text" name="cdCpl"></p>
		
		<p><input type="submit" value="Cadastrar"></p>
	</form>
	
	<form>
		<%
		List<Pessoas> pessoas;
		if(session.getAttribute("pessoas") == null){
			pessoas = new ArrayList<Pessoas>();
			session.setAttribute("pessoas", pessoas);
		}
		else
			pessoas = (ArrayList<Pessoas>) session.getAttribute("pessoas");
		
		out.print("	Tamanho: " + pessoas.size());
		%>
		
		<!-- Adiciona em um combo -->
		<select>
		<%
		for(Pessoas p : pessoas){
			out.print("<option value=\""+p.getCodigo()+"\" >"+p.getCodigo()+"</option>");
		}
		%>
		</select>	
	</form>
</body>
</html>