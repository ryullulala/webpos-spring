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
<<<<<<< HEAD
                <form method="post">
                    <input class="userInfo" type="text" name="user_id" value="아이디" onfocus="this.value= '' "; >
                    <input class="userInfo" type="password" name="user_pw" value="비밀번호"  onfocus="this.value= '' ";><br>
                    <input class="buttons" type="submit" value = "LOGIN"  formaction="/login"><br>
                    <input class="buttons" type="submit" value="SIGN IN" formaction="/signUp">
                </form>


=======
                <form method="get" action="loginedHome.jsp">
                    <input class="userInfo" type="text" name="user_id" value="아이디" onfocus="this.value= '' "; >
                    <input class="userInfo" type="password" name="user_pw" value="비밀번호"  onfocus="this.value= '' ";><br>
                    <input class="buttons" type="submit" value = "LOGIN"  ><br>
                    <input class="buttons" type="button" value="SIGN IN" >
                </form>

>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
            </div>

        </div>
    </body>
</html>