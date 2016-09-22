<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="resources/css/geral.css">
<title>Desafio Valemobi</title>
</head>
<body>
	<!-- Modular -->
	<c:import url="WEB-INF/views/cabecalho.jsp"></c:import>

	<section> 
	
		<article>
	
		<div class="art_img">
			<img src="resources/img/merc.jpg" alt="#">
		</div>
		<a href="novaMercadoria"><div class="art_bt">Nova Mercadoria</div></a>
		<div class="art_txt">Lorem ipsum dolor sit amet, consectetur
			adipiscing elit. Proin nec massa ut tellus ultrices iaculis quis at
			ex. Sed pulvinar sed mi at cursus. Quisque a tempor odio. Nulla neque
			nunc, scelerisque sed hendrerit et, iaculis in libero.</div>
	
		</article> 
		
		<article>
	
		<div class="art_img">
			<img src="resources/img/list.jpg" alt="#">
		</div>
		<a href="listarMercadoria"><div class="art_bt">Lista de Mercadorias</div></a>
		<div class="art_txt">Aenean accumsan massa eu nibh tincidunt, id
			mattis mauris porttitor. Aliquam purus purus, tincidunt sit amet
			posuere sed, pharetra id dui. Vestibulum auctor blandit sem, sit amet
			ultricies purus.</div>
	
		</article> 
	</section>

	<!-- Encapsular -->
	<c:import url="WEB-INF/views/rodape.jsp"></c:import>
</body>
</html>