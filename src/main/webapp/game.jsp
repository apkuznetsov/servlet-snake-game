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

    let score = 0;

    let snake = [
        {x: 150, y: 150},
        {x: 140, y: 150},
        {x: 130, y: 150},
        {x: 120, y: 150},
        {x: 110, y: 150}
    ];

    let xdir = 10;
    let ydir = 0;

    const canvas = document.getElementById("game-canvas");
    const gameCanvas = canvas.getContext("2d");

    gameCanvas.fillStyle = CANVAS_BACKGROUND;
    gameCanvas.strokestyle = CANVAS_BORDER_COLOR;
    gameCanvas.fillRect(0, 0, canvas.width, canvas.height);
    gameCanvas.strokeRect(0, 0, canvas.width, canvas.height);

    function startGame() {
        if (isEndGame()) {
            const doesWantToRefresh = confirm("Длина змейки: " + score + "\n" +
                "Нажмите OK, чтобы продолжить");

            if (doesWantToRefresh === true) {
                location.reload();
            } else if (doesWantToRefresh === false) {
                window.location.href = "end.jsp";
            }

            return;
        }

    }

    function isEndGame() {
        return isSnakeCollision() || isWallCollision();
    }

    function isSnakeCollision() {
        for (let i = 4; i < snake.length; i++) {
            const isCollision =
                snake[i].x === snake[0].x &&
                snake[i].y === snake[0].y;

            if (isCollision) {
                return true;
            }
        }
    }

    function isWallCollision() {
        const isLeftWallCollision = snake[0].x < 0;
        const isRightWallCollision = snake[0].x > canvas.width - 10;
        const isTopWallCollision = snake[0].y < 0;
        const isBottomWallCollision = snake[0].y > canvas.height - 10;

        return isLeftWallCollision ||
            isRightWallCollision ||
            isTopWallCollision ||
            isBottomWallCollision;
    }

    function clearGameCanvas() {
        gameCanvas.fillStyle = CANVAS_BACKGROUND;
        gameCanvas.strokestyle = CANVAS_BORDER_COLOR;
        gameCanvas.fillRect(0, 0, canvas.width, canvas.height);
        gameCanvas.strokeRect(0, 0, canvas.width, canvas.height);
    }

    function drawApple() {
        gameCanvas.fillStyle = APPLE_COLOR;
        gameCanvas.strokestyle = APPLE_BORDER_COLOR;
        gameCanvas.fillRect(appleXdir, appleYdir, 10, 10);
        gameCanvas.strokeRect(appleXdir, appleYdir, 10, 10);
    }

    function createApple() {
        appleXdir = randomTen(0, canvas.width - 10);
        appleYdir = randomTen(0, canvas.height - 10);

        snake.forEach(function checkIsOnSnake(part) {
            if (part.x === appleXdir &&
                part.y === appleYdir) {
    createApple();
            }
        });
    }

</script>
</body>
</html>
