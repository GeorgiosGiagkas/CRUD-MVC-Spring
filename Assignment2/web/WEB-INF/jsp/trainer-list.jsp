<%-- 
    Document   : trainer-list
    Created on : Sep 26, 2019, 11:26:56 AM
    Author     : giagkas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'/>        
        <script src='<c:url value="/resources/js/app.js"/>'></script>
        <title>Trainer List</title>
    </head>
    <body>


        <jsp:include page="header.jsp"/>
        
        
        <c:if test="${trainers.isEmpty()}">
            <div class="jumbotron" >
                <div>
                    <h1><c:out value="${h1}"/></h1>                                   
                    <h4><c:out value="${h4}"/></h4>                                     
                </div>
            </div>
        </c:if>
        
        
        <div class="container">
            <c:if test="${!trainers.isEmpty()}">
                <div class="card mt-3 mb-2">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#ID</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Subject</th> 
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${trainers}" var="trainer">
                                    <tr>
                                        <td><c:out value="${trainer.trainerId}" /></td>
                                        <td><c:out value="${trainer.firstName}"/></td>
                                        <td><c:out value="${trainer.lastName}"/></td>
                                        <td><c:out value="${trainer.trainerSubject}"/></td>
                                        <td><a href="${pageContext.request.contextPath}/update/show-update-form.htm?id=${trainer.trainerId}" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
                                        <td><a class="delete" href="${pageContext.request.contextPath}/delete/delete-trainer.htm?id=${trainer.trainerId}"><i class="fa fa-user-times"></i></a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table> 
                    </div>
                </div>
            </c:if>
        </div>

        <jsp:include page="footer.jsp"/>
        
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
