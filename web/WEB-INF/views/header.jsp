<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/09
  Time: 1:30 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    #header {
        font-weight: bold;
        font-size: 18px;
    }
</style>

<body>
<div id="header" style="position: absolute; top: 27px; left: 49px; width: 800px; height: 26px;">
    <span onclick="location.href='/pos?storeId=${storeId}'">POS  |</span>
    <span onclick="location.href='/salesPage'">  매출관리  |</span>
    <span onclick="location.href='/pos/menu?storeId=${storeId}'">  메뉴관리  |</span>
    <input type="hidden" value="">
    <span>  테이블 위치 관리  |</span>
    <span onclick="location.href='/groceries'">  식자재 관리  |</span>
    <span onclick="location.href='/logout'">  로그아웃 </span>
</div>
</body>