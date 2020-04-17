<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC
"-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" >

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type"
          content="text/html; charset=ISO-8859-1">
    <style>
        <%@include file="/WEB-INF/css/style.css" %>
    </style>

    <title>Начало</title>
</head>

<body>
<h1>Начало</h1>

<div class="canvas-like-div">
    <form action="${pageContext.request.contextPath}/"
          method="post">

        <input type="submit" value=Submit class="button">
    </form>
</div>
</body>
</html>
