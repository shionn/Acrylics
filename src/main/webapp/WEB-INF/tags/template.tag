<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ attribute name="content" fragment="true"%>
<%@ attribute name="scripts" fragment="true"%>
<%@ attribute name="title" type="java.lang.String" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="mobile-web-app-capable" content="yes" />
<link rel="shortcut icon" type="image/x-icon" href='<spring:url value="/img/favicon.ico"/>'/>
<link rel="stylesheet" href="<spring:url value="/css/style.css"/>" />
<script src="https://kit.fontawesome.com/064a1a2fe3.js" crossorigin="anonymous"></script>
<title>AcrylicsDb - ${title} - by Shionn</title>
</head>
<body>
	<header>
		<nav>
			<ul>
				<li>
					<a href='<spring:url value="/"/>'><i class="fas fa-home"></i> Home</a>
				</li>
				<li>
					<a href='<spring:url value="/c"/>'><i class="fas fa-bookmark"></i> Collection</a>
				</li>
				<li>
					<a href='<spring:url value="/p"/>'><i class="fas fa-book-open"></i> Plans</a>
				</li>
				<c:if test="${user.admin}">
					<li>
						<a href='<spring:url value="/adm"/>'>Admin</a>
					</li>
				</c:if>
				<li>
					<form action='<spring:url value="/s"/>'>
						<i class="fas fa-search"></i>
						<input type="text" name="name"
								placeholder="Quick Search" autocomplete="off"
								data-source="<spring:url value="/s"/>" data-length="3"/>
					</form>
				</li>
			</ul>
		</nav>
	</header>
	<main>
		<jsp:invoke fragment="content" />
	</main>
	<footer>
		AcrylicsDb by <a href="mailto:shionn@gmail.com">shionn</a>
	</footer>
	<div class="modal"></div>
	<script type="text/javascript" src='<spring:url value="/js/scripts.js"/>'></script>
	<jsp:invoke fragment="scripts" />
</body>
</html>
