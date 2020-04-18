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

    <title>Справка</title>
</head>

<body>
<h1>Справка</h1>

<div class="canvas-like-div">
    <div class="about-div">
        <p class="about-p">ИНФОРМАЦИЯ О СИСТЕМЕ</p>
        <p class="about-p">Распределённое клиент-серверное приложение,
            использующее технологию Servlets для распределённой объектной обработки.</p>
        <p class="about-p">Приложение реализует игру ЗМЕЙКА со следующими правилами:</p>
        <ul>
            <li class="about-li">в игре присутствует один игрок – пользователь;</li>
            <li class="about-li">пользователь управляет движущейся змейкой;</li>
            <li class="about-li">змейка выполняет задания серверного приложения
                (например, пересекает заданную точку на экране, выполнить заданную траекторию и т.д.);
            </li>
            <li class="about-li">при столкновении змейки с яблоком, змейка увеличивается;</li>
            <li class="about-li">игра прекращается при выходе змейки за границу игрового поля и пересечении самой
                себя;
            </li>
        </ul>
        <p class="about-p">СВЕДЕНИЯ О РАЗРАБОТЧИКЕ <br>
            А.П. Кузнецов, студент группы 6413.<br>
            По всем вопросам – kouznts@ya.ru</p>

        <form action="${pageContext.request.contextPath}/">
            <div class="centered">
                <input type="submit"
                       value="Вернуться в меню"
                       class="menu-button"/>
            </div>
        </form>
    </div>
</div>
</body>
</html>
