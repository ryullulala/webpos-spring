<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/03
  Time: 1:55 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>POS</title>
    <link rel="stylesheet" href="/static/css/index-style.css" type="text/css">
  </head>
  <body >

  <div id="webView">

    <div id="rightMenuBar" style="text-align: right; margin-right: 20px; margin-top: 50px">
      <!-- test 용으로 a href 주소 변경-->
      <a href="/menu" style="font-size: 18px; font-weight: bold; color: rgb(41, 128, 185) ">로그인  |</a>
      <a href="signup.jsp" style="font-size: 18px; font-weight: bold; color: rgb(41, 128, 185)">회원가입</a>
    </div>

    <div>
      <img src="/static/img/pos_img.png" style="opacity: 0.3;position: absolute;top: 50px;margin-left: 250px; width: 600px;" >
    </div>

    <div id="webpos">
      <div style="font-weight: bold; font-size: 24px; text-align: left; color: rgb(41, 128, 185);">WEB POS</div>
    </div>



    <div id="text_lower">
      <div style="font-weight: bold; font-size: 20px; color: rgb(0, 0, 0);" class="">내 노트북과 스마트폰을 포스기로 이용하세요</div>
    </div>

    <div id="text_upper">
      <div style="font-weight:bold;font-size:36px;" class="">주문 결제를 간편하게, WEB POS</div>
    </div>

    <div id="join_button">
<%--      <div style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(94, 94, 94);" class="">신청하러 가기</div>--%>
    </div>
  </div>


  </body>
</html>
