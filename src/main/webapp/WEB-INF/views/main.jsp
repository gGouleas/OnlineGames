<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Welcome page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
         <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
        <script>
            $.getJSON("game/", function (result) {
                $.each(result, function (i, field) {
                    $('#games').prepend('<div class="col-lg-3 col-md-4 col-6"><a href="home?unregistered" class="d-block mb-4 h-100">\n\
                    <img id="gameImg" class="img-fluid img-thumbnail"></a></div>');
                    $('#gameImg').attr('src', field.imgSrc);
                    $('#gameImg').attr('title', field.name)
                    $('#gameImg').tooltip();
                });
            });

        </script>
    </head>
    <body>
        <div class="container">
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
                <form id="updateForm" method="GET" action="${contextPath}/update">
                </form>

                <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a>
                 | <a onclick="document.forms['updateForm'].submit()">Update</a></h2>
            </c:if>
        </div>
        
        <div class="container">
            <hr class="mt-2 mb-5">
            <div id="games" class="row text-center text-lg-left">
            </div>
        </div>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>