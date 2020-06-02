<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>nav</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="#">Noob Games</a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">Games</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Highscores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Chat</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Merchandise</a>
                </li>
                <li>

                </li>
            </ul>
            <div class="container text-white">
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <form id="logoutForm" method="POST" action="${contextPath}/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <form id="updateForm" method="GET" action="${contextPath}/update">
                    </form>

                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Welcome ${pageContext.request.userPrincipal.name}
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item link" onclick="document.forms['logoutForm'].submit()">Logout</a>
                            <a class="dropdown-item link" onclick="document.forms['updateForm'].submit()">Update</a>
                        </div>
                    </div>
                </c:if>
            </div>
        </nav>

    </body>
</html>
