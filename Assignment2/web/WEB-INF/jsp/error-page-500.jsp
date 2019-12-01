<%-- 
    Document   : error-page-500
    Created on : Sep 28, 2019, 12:05:47 PM
    Author     : giagkas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <style>
            h1, h3{
                text-align: center;
            }
            .image{
                display: flex;
                justify-content: center;
            }
        </style>
        <title>Server Error</title>
    </head>
    <body>
        <div >
            <h1>Server Error</h1>
            <h3>Error 500</h3>
            <div class="image">
                <img src='<c:url value="/resources/img/error500.jpg"/>' alt="server error">
            </div>
            
        </div>
    </body>
</html>

