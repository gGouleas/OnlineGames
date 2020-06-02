<%-- 
    Document   : highscores
    Created on : Jun 2, 2020, 5:45:46 PM
    Author     : JohnG;
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Highscores</title>
        
        <script>
            $.getJSON("user/highscores/${pageContext.request.userPrincipal.name}", function (result) {
                $.each(result, function (i, field) {
                    $('#games').prepend('<div class=""><img id="gameImg" class="img-fluid img-thumbnail"></a></div>');
                    $('#gameImg').attr('src', field.imgSrc);
                });
            });
        </script>
    </head>
    <body>
        <jsp:include page="nav.jsp"/>
        
        
    </body>
</html>
