<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>${title}</title>
    </head>
    <body>
        <jsp:include page="nav2.jsp"/>
        <div class="miniclip-game-embed" data-game-name="${mainSrc}" data-theme="5" data-width="1500"
        data-height="700" data-language="en"></div>
        <h3><a class="back" href="main">Return to main page</a></h3>
        <jsp:include page="footer.jsp"/>
        <script src="//static.miniclipcdn.com/js/game-embed.js"></script>
    </body>
</html>
