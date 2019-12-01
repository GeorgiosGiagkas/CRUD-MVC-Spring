<%-- 
    Document   : error-page-404
    Created on : Sep 28, 2019, 11:42:00 AM
    Author     : giagkas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Not Found</title>        
        <style>
            h1,h3{
                text-align: center;
            }
            .image{
                display: flex;
                justify-content: center;
            }
        </style>
    </head>
    <body>
        <div>
            <h1>Page Not Found</h1>
            <h3>Error 404</h3>
            <div class="image">
                <img src='<c:url value="/resources/img/error404.gif"/>'  alt="page not found 404">
            </div>
            
        </div>

    </body>
</html>

