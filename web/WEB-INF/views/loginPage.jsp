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

    </head>
    <body>

        <div id="webView">
            <div id="textBar" >
                <div id="signText">SIGN IN</div>
            </div>
            <div id="userInfoDiv">

                <form method="post">
                    <input class="userInfo" type="text" name="user_id" value="아이디" onfocus="this.value= '' "; >
                    <input class="userInfo" type="password" name="user_pw" value="비밀번호"  onfocus="this.value= '' ";><br>
                    <input class="buttons" type="submit" value = "LOGIN"  formaction="/login"><br>
                </form>
<%--                    GET 방식으로 /join을 접속해야 함으로 임시로 from 밖으로 뺌--%>
                    <input class="buttons" type="submit" value="SIGN IN" onclick="location.href='/join'">
            </div>

        </div>
    </body>
</html>