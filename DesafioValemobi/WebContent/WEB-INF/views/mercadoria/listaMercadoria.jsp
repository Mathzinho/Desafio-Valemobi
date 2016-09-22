<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/geral.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Mercadorias</title>

</head>
<body>

	<c:import url="../cabecalho.jsp"></c:import>

	<section>
	<div id="table_0">
	<table class="table_1">
		<thead class="tcab">
			<tr>
				<th>Código</th>
				<th>Tipo de Mercadoria</th>
				<th>Nome da Mercadoria</th>
				<th>Quantidade</th>
				<th>Tipo de Negocio</th>
				<th>Preço</th>
			</tr>
		</thead>
		<tbody class="tcorpo">
		
			<c:forEach items="${mercadoria }" var="mercadoria">
			<tr>
				<td>${mercadoria.idMercadoria }</td>
				<td>${mercadoria.tipoMercadoria }</td>
				<td>${mercadoria.nomeMercadoria }</td>
				<td>${mercadoria.quantidade }</td>
				<td>${mercadoria.tipoNegocio }</td>
				<td>R$ ${mercadoria.preco }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</section>
	<c:import url="../rodape.jsp"></c:import>

</body>
</html>