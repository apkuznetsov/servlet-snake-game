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

    <title>Игра</title>
</head>

<body>
<h1>Игра</h1>

<canvas id="game-canvas" width="300" height="300"></canvas>
<div id="current-score-title">Длина змейки: </div>
<div id="score">0</div>

<script type="">
    const CANVAS_BORDER_COLOR = 'black';
    const CANVAS_BACKGROUND = 'black';

    const SNAKE_COLOR = 'pink';
    const SNAKE_BORDER_COLOR = 'white';

    const APPLE_COLOR = 'violet';
    const APPLE_BORDER_COLOR = 'white';

</script>
</body>
</html>
