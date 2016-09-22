<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/geral.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.13.4/jquery.mask.min.js"></script>
<title>Nova Mercadoria</title>

<script type="text/javascript">
	$('#preco').mask('000.000.000.000.000.00', {
		reverse : true
	});
	
	$('#quantidade').mask('0000000000000',{reverse : true });
	
	function verificarCampos(){
		var txt_nome = document.getElementById("nomeMerc").value;
		var txt_tipo = document.getElementById("tipoMerc").value;
		
		if(txt_nome.length < 3 || !isNaN(txt_nome)){
			alert("Campo Nome da Mercadoria possui números ou é muito curto");
			return false;
		}
		
		if(txt_tipo.length < 3 || !isNaN(txt_tipo)){
			alert("Campo Tipo da Mercadoria possui números ou é muito curto");
			return false;
		}
		return true;
	}
</script>

</head>
<body>
	<!-- Modular -->
	<c:import url="../cabecalho.jsp"></c:import>

	<section>

	<div id="formulario">

		<form method="post" action="adicionarMercadoria" onsubmit="return verificarCampos()"
			>

			<label>Tipo da Mercadoria:</label><br> <input type="text"
				class="campo_txt" id="tipoMerc" name="tipoMercadoria" required>
			<br> <label>Nome da Mercadoria:</label><br> <input
				type="text" class="campo_txt" id="nomeMerc" name="nomeMercadoria"
				required> <br> <label>Quantidade:</label><br> <input
				type="text" class="campo_num" name="quantidade" id="quantidade"
				required> <br> <label>Preço:</label><br> <input
				type="text" class="campo_num" name="preco" id="preco" required>
			<br> <label>Tipo de Negocio (Compra ou Venda):</label><br>
			<select class="select_txt" name="tipoNegocio">
				<option value="compra">Compra</option>
				<option value="venda">Venda</option>
			</select> <br>
			<br>
			<br> <input type="submit" value="Salvar Mercadoria"
				class="campo_bt"> <input type="reset" value="Limpar Campos"
				class="campo_bt">
		</form>

	</div>

	</section>

	<!-- Encapsular -->
	<c:import url="../rodape.jsp"></c:import>
</body>
</html>