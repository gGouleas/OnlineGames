<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <title>${title}</title>
    </head>
    <body>
        <jsp:include page="nav2.jsp"/>
        <div class="miniclip-game-embed" data-game-name="${mainSrc}" data-theme="5" data-width="1500"
        data-height="700" data-language="en"></div>
        <jsp:include page="footer.jsp"/>
        <script src="//static.miniclipcdn.com/js/game-embed.js"></script>
    </body>
</html>
