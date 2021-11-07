<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/03
  Time: 3:30 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
    <head>
        <title>로그인 후 home 화면 (4 of 17)</title>

        <link href="/static/css/loginedHome-style.css" rel="stylesheet" type="text/css">


    </head>
    <body data-locale="ko" style="">

    <div id="webView">

        <div style="position: absolute; top: 43.525px; left: 87px;">

            <div style="font-weight: bold; font-size: 24px; text-align: left; color: rgb(41, 128, 185);" onclick="location.href ='/' ">WEB POS </div>
        </div>
        <div style="position: absolute; top: 43.525px; left: 609px; width: 300px; height: 27px;">
            <div style="font-weight: bold; font-size: 18px; text-align: center; color: rgb(52, 152, 219);" class="" onclick="location.href = '/logout' ">내 정보 | 로그아웃</div>
        </div>

    <div style="position: absolute; top: 118px; left: 196px; width: 519px; height: 54px;">

        <div style="font-weight:bold;font-size:36px;" class="">${res.user_name}님 보유 매장 리스트</div>

    </div>
        <div id="tableLayout" style="position: absolute;left: 180px;top: 200px;height: 200px;width: 600px;">
            <table class="type04">
                <thead>
                <tr>
                    <th scope="row">가게명</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>


                </tr>
                </thead>
                <c:forEach items="${stores}" var="stores">
                    <tbody>
                    <tr>
                        <td>${stores.store_name}</td>
                        <td><button onclick="location.href = '/posMain/' + ${stores.store_id}" >선택</button></td>
                        <td><button >상세 정보</button></td>
                        <td><button >수정</button></td>
                        <td><button >삭제</button></td>
                    </tr>
                    </tbody>
                </c:forEach>
            </table>
            <button onclick="location.href ='/store/add'">매장 추가</button>
        </div>





</div>
   </body>
</html>