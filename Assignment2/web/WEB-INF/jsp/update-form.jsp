<%-- 
    Document   : update-form
    Created on : Sep 26, 2019, 4:38:25 PM
    Author     : giagkas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src='<c:url value="/resources/js/app.js"/>'></script>
        <link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'/>
        <title>Update Trainer Form</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <div class="container">
            <div id="message">
                
            </div>
            <div class="row">
                <div class="col-sm-6" style="margin: 10px auto;">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">
                                Edit Trainer
                            </h3>
                            <spring:form modelAttribute="trainer" action="update-trainer.htm" method="post">
                                <spring:input path="trainerId" type="hidden"></spring:input>

                                    <div class="form-group">
                                    <spring:label path="firstName">First Name</spring:label>
                                    <spring:input path="firstName" id="firstName" cssClass="form-control" maxlength="39"></spring:input>
                                    <small class="text-muted">Max characters 39</small>
                                    </div>
                                    <div class="form-group">
                                    <spring:label path="lastName">Last Name</spring:label>
                                    <spring:input path="lastName" id="lastName" cssClass="form-control"  maxlength="39"></spring:input>
                                    <small class="text-muted">Max characters 39</small>
                                    </div>           
                                    <div class="form-group">
                                    <spring:label path="trainerSubject">Trainer Subject</spring:label>
                                    <spring:input path="trainerSubject" id="trainerSubject" cssClass="form-control" maxlength="254"></spring:input>
                                    <small class="text-muted">Max characters 254</small>
                                    </div>           
                                    <input class="btn btn-block btn-success" type="submit" value="Update">
                            </spring:form>
                        </div>

                    </div>

                </div>

            </div>
        </div>


        <jsp:include page="footer.jsp"/>
        
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
