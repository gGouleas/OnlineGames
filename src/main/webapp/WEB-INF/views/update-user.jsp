<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Update your account</title>
        <link rel="icon" href="${contextPath}/resources/favicon.png" sizes="16x16 32x32" type="image/png">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    </head>

    <body>
        <jsp:include page="nav2.jsp"/>
        <div class="container py-5">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6 mx-auto">
                            <div class="card border-secondary">
                                <div class="card-header">
                                    <h3 class="mb-0 my-2">${username}</h3>
                                </div>
                                <div class="card-body">
                                    <form:form method="POST" action="update" modelAttribute="user" class="form-signin">
                                        <h2 class="form-signin-heading">Update your account</h2>
                                        <spring:bind path="username">
                                            <div class="form-group p-1 ${status.error ? 'has-error' : ''}">
                                                <form:input type="text" path="username" class="form-control" placeholder="Username"
                                                            autofocus="true"></form:input>
                                                <form:errors path="username"></form:errors>
                                                </div>
                                        </spring:bind>

                                        <spring:bind path="email">
                                            <div class="form-group p-1 ${status.error ? 'has-error' : ''}">
                                                <form:input type="text" path="email" class="form-control" placeholder="Email"
                                                            autofocus="true"></form:input>
                                                <form:errors path="email"></form:errors>
                                                </div>
                                        </spring:bind>

                                        <spring:bind path="password">
                                            <div class="form-group p-1 ${status.error ? 'has-error' : ''}">
                                                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                                                <form:errors path="password"></form:errors>
                                                </div>
                                        </spring:bind>

                                        <spring:bind path="passwordConfirm">
                                            <div class="form-group p-1 ${status.error ? 'has-error' : ''}">
                                                <form:input type="password" path="passwordConfirm" class="form-control"
                                                            placeholder="Confirm your password"></form:input>
                                                <form:errors path="passwordConfirm"></form:errors>
                                                </div>
                                        </spring:bind>

                                        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
                                        <p><a href= "${contextPath}/delete/${username}">delete account</a></p> 
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>