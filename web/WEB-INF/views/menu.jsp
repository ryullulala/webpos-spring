<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <style>
        * {
            margin:0;
            padding:0;
            box-sizing: border-box;
        }
        #container {
            margin:0 auto;
            width:1000px;
            height:700px;
            border:1px solid black;
            padding:20px;
        }
        #header {
            width: 100%;
            height: 120px;
        }
        .top_menu {
            margin:25px auto;
            padding:0;
            list-style:none;
            width:770px;
            height:35px;
            box-shadow:0 3px 4px #8b8b8b;
            background-color:#dadada;
            float: left;
        }
        .top_menu li {
            float:left;
            border-right:1px solid #929292;
        }
        .top_menu li a:link{
            color:black;
            text-decoration:none;
            text-align:center;
            display:block;
            width:125px;
            height:35px;
            line-height: 35px;
            transition: 0.5s ease-in;
        }
        .top_menu li:last-child {
            border-right:none;
        }
        .top_menu li:not(:last-child) a:hover {
            background-color:#555;
            color:#fff;
        }
        .top_menu Li:last-child a:hover {
            background-color:#b30000;
            color:#fff;
        }
        #category{
            float:left;
            width:450px;
            height:500px;
            margin:10px;
            padding:10px;
            border:1px solid black;
            border-radius: 5px;
            text-align: center;
        }
        #menu {
            float:left;
            width:450px;
            height:500px;
            margin:10px;
            padding:10px;
            border:1px solid black;
            border-radius: 5px;
            text-align: center;
        }
        .list {
            display: inline-block;
            margin: 5px;
            width: 125px;
            height: 120px;
            border: 1px solid;
            border-radius: 5px;
            text-align: center;
        }
        .select {
            float: none;
            margin: 10px;
        }
    </style>
</head>
<body>
<div id="container">
    <header id="header">
        <h1>@@ 가게</h1>
        <nav>
            <ul class="top_menu">
                <li><a href="#">POS</a></li>
                <li><a href="#">매출 관리</a></li>
                <li><a href="#">매뉴 관리</a></li>
                <li><a href="#">테이블 위치 관리</a></li>
                <li><a href="#">식자재 관리</a></li>
                <li class="cut"><a href="#">로그아웃</a></li>
            </ul>
        </nav>
    </header>
    <section id="category">
        <h3>카테고리</h3>
        <div class="list">1</div>
        <div class="list">2</div>
        <div class="list">3</div>
        <div class="list">4</div>
        <div class="list">5</div>
        <div class="list">6</div>
        <div class="list">7</div>
        <div class="list">8</div>
        <div class="list">9</div>
        <div class="select">
            <input type ="button" value="카테고리 추가">
            <input type ="button" value="카테고리 수정">
            <input type ="button" value="카테고리 삭제">
        </div>
    </section>
    <section id="menu">
        <h3>메뉴</h3>
        <div class="list">1</div>
        <div class="list">2</div>
        <div class="list">3</div>
        <div class="list">4</div>
        <div class="list">5</div>
        <div class="list">6</div>
        <div class="list">7</div>
        <div class="list">8</div>
        <div class="list">9</div>
        <div class="select">
            <input type ="button" value="메뉴 추가">
            <input type ="button" value="메뉴 수정">
            <input type ="button" value="메뉴 삭제">
        </div>
    </section>
</div>
</body>
</html>