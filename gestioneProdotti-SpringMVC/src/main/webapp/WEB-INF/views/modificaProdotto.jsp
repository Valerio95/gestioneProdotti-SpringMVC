<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Edit Customer</h2>
		<form:form action="aggiungiProdotto" method="post" modelAttribute="prodotto">
			<table>
				<tr>
					<td>ID: </td>
					<td>${prodotto.id}
						<form:hidden path="id"/>
					</td>
				</tr>			
				<tr>
					<td>Nome: </td>
					<td><form:input path="nome" /></td>
				</tr>
				<tr>
					<td>Categoria: </td>
					<td><form:input path="categoria" /></td>
				</tr>
				<tr>
					<td>Quantità: </td>
					<td><form:input path="quantità" /></td>
				</tr>		
				<tr>
					<td><input type="submit" value="Modifica"></td>
				</tr>						
			</table>
		</form:form>
</body>
</html>