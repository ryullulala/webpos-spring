<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/03
  Time: 3:30 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="/static/css/loginedHome-style.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>로그인 후 home 화면</title>
    <script>
        let stores;
        $(document).ready(function () {
            $.ajax ({
                url	: "/api/stores", // 요청이 전송될 URL 주소
                type	: "GET", // http 요청 방식 (default: ‘GET’)
                async : false,  // 요청 시 동기화 여부. 기본은 비동기(asynchronous) 요청 (default: true)
                //data  : {key : value}, // 요청 시 포함되어질 데이터
                success : function(data, status, xhr) {
                     stores = data
                    // 정상적으로 응답 받았을 경우에는 success 콜백이 호출되게 됩니다.
                    // 이 콜백 함수의 파라미터에서는 응답 바디, 응답 코드 그리고 XHR 헤더를 확인할 수 있습니다.
                },
                error	: function(xhr, status, error) {
                    // 응답을 받지 못하였다거나 정상적인 응답이지만 데이터 형식을 확인할 수 없기 때문에
                    // error 콜백이 호출될 수 있습니다.
                    // 예를 들어, dataType을 지정해서 응답 받을 데이터 형식을 지정하였지만,
                    // 서버에서는 다른 데이터형식으로 응답하면  error 콜백이 호출되게 됩니다.
                }
            });
        })
    </script>
</head>

<body data-locale="ko" style="">

<div id="webView">
    <div style="position: absolute; top: 43.525px; left: 87px;">
        <div style="font-weight: bold; font-size: 24px; text-align: left; color: rgb(41, 128, 185);"
             onclick="location.href ='/pages/home' ">WEB POS
        </div>
    </div>

    <div style="position: absolute; top: 43.525px; left: 609px; width: 300px; height: 27px;">
        <div style="font-weight: bold; font-size: 18px; text-align: center; color: rgb(52, 152, 219);" class=""
             onclick="location.href = '/pages/logout' ">내 정보 | 로그아웃
        </div>
    </div>

    <div style="position: absolute; top: 118px; left: 196px; width: 519px; height: 54px;">

        <div style="font-weight:bold;font-size:36px;" class="">${user.user_name}님 보유 매장 리스트</div>

    </div>

    <div id="tableLayout" style="position: absolute;left: 180px;top: 200px;height: 200px;width: 600px;">
        <table class="type04">
            <thead>
            <tr>
                <th scope="row">가게명</th>
                <th>&nbsp;</th>
                <th>&nbsp;</th>
                <th>&nbsp;</th>
                <th>&nbsp;</th>
            </tr>
            </thead>

            <c:forEach items="${stores}" var="store">
                <tbody>
                <tr>
                    <td>${store.store_name}</td>
                    <td>
                        <button onclick="location.href = '/posMain/${stores.store_id}'">선택</button>
                    </td>
                    <td>
                        <button>상세 정보</button>
                    </td>
                    <td>
                        <button>수정</button>
                    </td>
                    <td>
                        <button>삭제</button>
                    </td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
        <button onclick="location.href ='/stores/add'">매장 추가</button>
    </div>
</div>
</body>
</html>