<jsp:include page="topo.jsp"></jsp:include>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<h3 class="page-header">Buscar Produto</h3>

	<form action="buscar.html" method="post">
		<div class="form-group">
			Nome:
			<input type="text" name="nome" placeholder="Nome do Produto" class="form-control">			
		</div>
			<input type="submit" value="Buscar Produto" class="btn btn-primary">
	</form>
	${msg}
	<c:if test="${fn:length(lista) > 0}">
		<table class="table table-bordered">
			<tr align="center">
				<th>ID</th>
				<th>NOME</th>
				<th>QTD ESTOQUES</th>
				<th>PREÇO</th>
				<th>VALIDADE</th>
				<th>CATEGORIA</th>
				<th colspan="2">AÇÕES</th>
			</tr>	
			<c:forEach items="${lista}" var="prod">
				<tr align="center">
					<td>${prod.idProduto}</td>
					<td>${prod.nome}</td>
					<td>${prod.estoque}</td>
					<td>${prod.preco}</td>
					<td><fmt:formatDate value="${prod.validade}" pattern="dd-MM-yyyy"/></td>
					<td>${prod.categoria.nomeCategoria}</td>
					<td><a href="editar.html?id=${prod.idProduto}" class="btn btn-warning">Editar</a></td>
					<td><a href="excluir.html?id=${prod.idProduto}" class="btn btn-danger"
					onclick="return confirm('Deseja excluir realmente esse Registro?')">Excluir</a></td>
				</tr>
			</c:forEach>		
		</table>
	</c:if>

<jsp:include page="rodape.jsp"></jsp:include>