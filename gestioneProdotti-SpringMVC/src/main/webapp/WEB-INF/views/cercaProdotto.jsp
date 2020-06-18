<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Prodotto Cercato</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Categoria</th>
			<th>Quantità</th>
		</tr>
		<c:forEach items="${result}" var="prodotto">
		<tr>
			<td>${prodotto.id}</td>
			<td>${prodotto.nome}</td>
			<td>${prodotto.categoria}</td>
			<td>${customer.quantità}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>