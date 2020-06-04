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
        <script src="${contextPath}/resources/js/home-main.js"></script>
        <script>
            $(document).load(getCategoryFilter());
        </script>
    </head>
    <body>
        <nav style="margin-top: -40px;" class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" style="font-family: fantasy; font-size: 25px;" href="main">Noob Games</a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">Games</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="highscores">Highscores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Chat</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Merchandise</a>
                </li>
                <li>
                    <div id="categoryDiv" class="dropdown ml-4">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Categories
                        </button>
                        <div id="categories" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        </div>
                    </div>
                </li>
                <li style="width: max-content; padding-left: 10px;">
                    <h4><span style="color: white;">: <span id="current-category">All</span></span></h4>
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
                            <a class="dropdown-item link" onclick="document.forms['updateForm'].submit()">Update profile</a>
                            <a class="dropdown-item link" onclick="document.forms['logoutForm'].submit()">Logout</a>
                        </div>
                    </div>
                </c:if>
            </div>
            <form style="margin-bottom: -30px;" action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                <input type="hidden" name="cmd" value="_s-xclick" />
                <input type="hidden" name="hosted_button_id" value="Z7QD4REGGC99C" />
                <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
                <img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1" />
            </form>

        </form>
    </nav>

</body>
</html>
