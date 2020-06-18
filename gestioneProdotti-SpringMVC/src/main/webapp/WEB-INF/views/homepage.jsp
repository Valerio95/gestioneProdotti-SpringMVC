<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Benvenuto!</h1>

		<br> <br>Ecco la lista dei prodotti<br> <br>
	<form action="cercaProdotto" method="get">
		
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Cerca" />
		
	</form>
	<h3><a href="creaProdotto">Aggiungi Prodotto</a></h3>
	<table >
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Categoria</th>
			<th>Quantità</th>
			<th>Azione</th>
		</tr>
		<c:forEach items="${listaProdotti}" var="prodotto">
		<tr>
			<td>${prodotto.id}</td>
			<td>${prodotto.nome}</td>
			<td>${customer.categoria}</td>
			<td>${customer.quantità}</td>
			<td>
				<a href="modifica?id=${customer.id}">Modifica</a>
				&nbsp;&nbsp;&nbsp;
				<a href="elimina?id=${customer.id}">Elimina</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>