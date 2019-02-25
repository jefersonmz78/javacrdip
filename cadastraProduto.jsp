<jsp:include page="topo.jsp"></jsp:include>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!-- Carregando a classe CategoriaBean(que contem a lista de Categoria) -->

<jsp:useBean id="cb" class="br.com.jtecweblojavirtual.manager.CategoriaBean"></jsp:useBean>

<h3 class="page-header"> Sistema de Produtos</h3>

<form method="post" action="cadastrar.html">
    <div class="form-group">
	    Nome dos produto:
	    <input type="text" name="nome" class="form-control">
    </div>   
    <div class="form-group">
	    Estoque:
	    <input type="number" name="estoque" class="form-control">
    </div>    
     <div class="form-group">
	    Preco:
	    <input type="text" name="preco" class="form-control">
    </div>
    <div class="form-group">   
	    Validade:
	    <input type="text" name="validade" class="form-control">
    </div>    
    <div class="form-group">
	    Categoria do Produto:
	    <select name="categoria" class="form-control">
		    <option value="0">Selecione</option>
		    <c:if test="${fn:length(cb.listaCategoria) > 0}">
		    	<c:forEach items="${cb.listaCategoria }" var="cat">    
		    		<option value="${cat.idCategoria }">${cat.nomeCategoria }</option> 
	    		</c:forEach>
	    	</c:if>   	    
	    </select>
    </div>    
    <input type="submit" value="Cadastrar Produto" class="btn btn-primary">

</form>

${msg }
<jsp:include page="rodape.jsp"></jsp:include>  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
