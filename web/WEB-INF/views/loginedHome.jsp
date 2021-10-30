<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/03
  Time: 3:30 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



=======
>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
<html>
    <head>
        <title>로그인 후 home 화면 (4 of 17)</title>

        <link href="/static/css/loginedHome-style.css" rel="stylesheet" type="text/css">


    </head>
    <body data-locale="ko" style="">

    <div id="webView">

        <div style="position: absolute; top: 43.525px; left: 87px;">
<<<<<<< HEAD
            <div style="font-weight: bold; font-size: 24px; text-align: left; color: rgb(41, 128, 185);" onclick="location.href ='/' ">WEB POS </div>
=======
            <div style="font-weight: bold; font-size: 24px; text-align: left; color: rgb(41, 128, 185);" onclick="location.href='index.jsp' ">WEB POS</div>
>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
        </div>
        <div style="position: absolute; top: 43.525px; left: 609px; width: 300px; height: 27px;">
            <div style="font-weight: bold; font-size: 18px; text-align: center; color: rgb(52, 152, 219);" class="">내 정보 | 로그아웃</div>
        </div>

    <div style="position: absolute; top: 118px; left: 196px; width: 519px; height: 54px;">
<<<<<<< HEAD
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
                        <td><button onclick="location.href = '/posMain'" >선택</button></td>
                        <td><button >상세 정보</button></td>
                        <td><button >수정</button></td>
                        <td><button >삭제</button></td>
                    </tr>
                    </tbody>
                </c:forEach>
            </table>
            <button onclick="location.href ='/addStorePage'">매장 추가</button>
        </div>





</div>
=======
        <div style="font-weight:bold;font-size:36px;" class="">보유 매장 리스트</div>
    </div>

    <div  style="position: absolute; top: 458px; left: 475px; width: 100px; height: 40px;">
        <button id="addBtn" onclick="location.href='addStorePage.jsp'">매장 추가</button>
    </div>
    <div style="position: absolute; top: 458px; left: 589px; width: 100px; height: 40px;">
        <button id="updateBtn" onclick="updateBtnClick()">매장 수정</button>
    </div>
    <div  style="position: absolute; top: 458px; left: 699px; width: 100px; height: 40px;">
        <button id="deleteBtn" onclick="deleteBtnClick()">매장 삭제</button>
    </div>
        <div id="tableLayout" style="position: absolute;left: 180px;top: 200px;height: 200px;width: 600px;">
            <table class="type04">
                <tr>
                    <th scope="row" >가게명</th>
                    <td>
                        <button class="selectBtn" onclick="location.href='posMain.jsp' ">선택</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">가게명</th>
                    <td><button class="selectBtn">선택</button></td>
                </tr>
                <tr>
                    <th scope="row">가게명</th>
                    <td><button class="selectBtn">선택</button></td>
                </tr>
            </table>
        </div>

</div>
    <script>
        function updateBtnClick(){
            var target = document.getElementsByClassName("selectBtn");

            for (var i=0; i<target.length; i++){
                console.log(target[i]);
                target[i].innerHTML = "수정"
                // 일단 임시로 매장 추가 화면으로 보내기 -> 이후에 매장 정보가 추가된 상태인 매장추가화면으로 수정해줄 것
                <%--++ 각 매장별로 매장수정화면 다르게나오도록 href에 ${} 사용해서 설정할 것--%>
                target[i].setAttribute("onclick","location.href='addStorePage.jsp'");
            }

        }

        function deleteBtnClick(){
            var target = document.getElementsByClassName("selectBtn");

            for (var i=0; i<target.length; i++){
                console.log(target[i]);
                target[i].innerHTML = "삭제"

                // onclick = "delete()"와 같은 형태로 삭제해주는 함수 작성해서 붙여줄 것
                target[i].setAttribute("onclick","");
            }

        }


    </script>


>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
   </body>
</html>