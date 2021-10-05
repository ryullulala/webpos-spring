<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/03
  Time: 3:30 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>로그인 후 home 화면 (4 of 17)</title>

        <link href="/static/css/loginedHome-style.css" rel="stylesheet" type="text/css">


    </head>
    <body data-locale="ko" style="">

    <div id="webView">

        <div style="position: absolute; top: 43.525px; left: 87px;">
            <div style="font-weight: bold; font-size: 24px; text-align: left; color: rgb(41, 128, 185);" onclick="location.href='index.jsp' ">WEB POS</div>
        </div>
        <div style="position: absolute; top: 43.525px; left: 609px; width: 300px; height: 27px;">
            <div style="font-weight: bold; font-size: 18px; text-align: center; color: rgb(52, 152, 219);" class="">내 정보 | 로그아웃</div>
        </div>

    <div style="position: absolute; top: 118px; left: 196px; width: 519px; height: 54px;">
        <div style="font-weight:bold;font-size:36px;" class="">보유 매장 리스트</div>
    </div>

    <div  style="position: absolute; top: 458px; left: 475px; width: 100px; height: 40px;">
        <button >매장 추가</button>
    </div>
    <div style="position: absolute; top: 458px; left: 589px; width: 100px; height: 40px;">
        <button >매장 수정</button>
    </div>
    <div  style="position: absolute; top: 458px; left: 699px; width: 100px; height: 40px;">
        <button>매장 삭제</button>
    </div>
        <div id="tableLayout" style="position: absolute;left: 180px;top: 200px;height: 200px;width: 600px;">
            <table class="type04">
                <tr>
                    <th scope="row" >가게명</th>
                    <td>
                        <button onclick="location.href='posMain.jsp' ">선택</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">가게명</th>
                    <td><button>선택</button></td>
                </tr>
                <tr>
                    <th scope="row">가게명</th>
                    <td><button>선택</button></td>
                </tr>
            </table>
        </div>


</div>
   </body>
</html>