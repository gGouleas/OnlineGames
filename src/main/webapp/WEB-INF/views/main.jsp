<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Main page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
        <script>
            $.getJSON("game/", function (result) {
                $.each(result, function (i, field) {
                    $('#games').prepend('<div class="col-lg-3 col-md-4 col-6"><a id="gameSrc" class="d-block mb-4 h-100">\n\
                    <img id="gameImg" class="img-fluid img-thumbnail"></a></div>');
                    $('#gameImg').attr('src', field.imgSrc);
                    $('#gameImg').attr('title', field.name);
                    $('#gameSrc').attr('href', field.mainSrc);
                    $('#gameImg').tooltip();
                    $(".selector").tooltip("classes.tooltip");
                });
            });

        </script>
    </head>
    <body>   
        <jsp:include page="nav.jsp"/>

        <div class="container">
            <hr class="mt-2 mb-5">
            <div id="games" class="row text-center text-lg-left">
            </div>
        </div>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>