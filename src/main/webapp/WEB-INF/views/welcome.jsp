<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<!-- Inclusion d'une page JSP dans la page actuelle.
 Attention aux éléments HTML uniques (balises head, body principalement). -->
<!-- Utilisation de l'objet HttpServletRequest pour stocker un paramètre "title" -->
<jsp:include page="header.jsp">
	<jsp:param value="Welcome !" name="title" />
</jsp:include>
<body class="container">
	<h1>Liste des articles</h1>
	<c:url value="/images" var="imgUrl" />
	<c:url value="/delete" var="deleteUrl" />
	<c:forEach items="${articles}" var="article">
		<div title="${article.id}">
			<div style="display:inline-flex;justify-content: space-evenly;min-width: 300px;">
				<h2>${article.title}</h2>
				<span style="position:relative">
<%-- 					<a href="/blog/delete.html?articleId=${article.id}"> --%>
						<a href="${deleteUrl}/${article.id}.html">
						<img src="${imgUrl}/delete.png"
							style="position:absolute;top:50%;transform:translate(0, -50%);"/>
					</a>
				</span>
			</div>
			<p>${article.description}</p>
		</div>
	</c:forEach>
	<h2>
		<c:url value="/form.zzz" var="createUrl" />
		<a href="${createUrl}">Créer un article</a>
	</h2>
</body>
</html>