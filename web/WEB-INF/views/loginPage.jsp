<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/03
  Time: 2:28 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LOGIN</title>
    <link rel="stylesheet" href="/static/css/loginPage-style.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="/static/js/login.js"></script>
</head>
<body>

<div id="webView">
    <div id="textBar">
        <div id="signText">SIGN IN</div>
    </div>
    <div id="userInfoDiv">
        <input class="userInfo" type="text" name="user_id" id="user_id" value="아이디" onfocus="this.value= '' " ;>
        <input class="userInfo" type="password" name="user_pw" id="user_pw" value="비밀번호" onfocus="this.value= '' " ;><br>
        <input class="buttons" type="button" value="LOGIN" onclick=loginCheck()><br>
        <input class="buttons" type="button" value="SIGN IN" onclick="location.href='/pages/join'">
    </div>

</div>
</body>
</html>