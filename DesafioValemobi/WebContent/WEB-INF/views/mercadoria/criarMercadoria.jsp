<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Modular -->
	<c:import url="WEB-INF/views/cabecalho.jsp"></c:import>

	<section> 
	
		 <div id="formulario">
        
            <form method="post">
            
                <label>Tipo da Mercadoria:</label><br>
                <input type="text" class="campo_txt" id="tipoMerc" name="tipoMercadoria" required>
                <br>
                
                <label>Nome da Mercadoria:</label><br>
                <input type="text" class="campo_txt" id="nomeMerc" name="nomeMercadoria" required>
                <br>
                
                <label>Quantidade:</label><br>
                <input type="text" class="campo_num" name="quantidade" id="quantidade" required>
                <br>
                
                <label>Preço:</label><br>
                <input type="text" class="campo_num" name="preco" id="preco" required>
                <br>
                
                <label>Tipo de Negocio (Compra ou Venda):</label><br>
                <select class="select_txt" name="tipoNegocio">
                    <option value="compra"> Compra </option>
                    <option value="venda"> Venda </option>             
                </select>
                <br><br><br>
                
                <input type="submit" value="Salvar Mercadoria" class="campo_bt" onclick="verificarCampos()">
                <input type="reset" value="Limpar Campos" class="campo_bt">
            </form>
            
        </div>
		
	</section>

	<!-- Encapsular -->
	<c:import url="WEB-INF/views/rodape.jsp"></c:import>
</body>
</html>