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
    <style type="">
        <%@include file="/style.css" %>
    </style>

    <title>Игра окончена</title>
</head>

<body>
<h1>Игра окончена</h1>

<div class="canvas-like-div">
    <div class="centered-group">
        <p class="gameover-p">Игра окончена</p>
        <p class="gameover-p">Длина змейки: <%= request.getAttribute("score") %>
        </p>
        <p class="gameover-returning-p">Нажмите Enter, чтобы сыграть ещё раз</p>
        <p class="gameover-returning-p">Нажмите ←, чтобы перейти в меню</p>

        <script type="">
            document.addEventListener("keydown", returnToPage);

            function returnToPage(event) {
                const keyPress = event.keyCode;
                const ARROW_LEFT = 37;
                const ENTER = 13;

                let form = document.createElement('form');
                form.method = 'GET';
                form.innerHTML = '<input type="hidden">';

                if (keyPress === ARROW_LEFT) {
                    form.action = '${pageContext.request.contextPath}/menu';
                    document.body.append(form);
                    form.submit();
                } else if (keyPress === ENTER) {
                    form.action = '${pageContext.request.contextPath}/game';
                    document.body.append(form);
                    form.submit();
                }
            }
        </script>
    </div>
</div>
</body>
</html>
