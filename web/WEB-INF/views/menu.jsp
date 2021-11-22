<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/04
  Time: 7:00 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>메뉴관리</title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">


    <link rel="stylesheet" href="../../static/css/menu-style.css">
    <%--css 연결--%>
    <link rel="stylesheet" href="../../static/css/buttons.css">
    <%--css 연결--%>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <%--jquery 선언--%>
    <meta charset="utf-8">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <%--js 연결--%>
</head>

<body data-locale="ko">
<%request.getSession();%>
<div id="container">

    <header>

        <h1>${store_id} 가게</h1>
        <nav>
            <ul class="top-menu">
                <li><a href="/posMain">POS</a></li>
                <li><a href="#">매출 관리</a></li>
                <li><a href="/menu">매뉴 관리</a></li>
                <li><a href="#">테이블 위치 관리</a></li>
                <li><a href="#">식자재 관리</a></li>
                <li class="cut"><a href="/logout">로그아웃</a></li>
            </ul>
        </nav>
    </header>

    <section class="category">
        <h3 class="subtitle">카테고리</h3>
        <c:forEach begin="1" end="9" var="i">

            <div class="list">
                <input id="c-${i}" type="button" value=" " class="button button-3d button-box2" onclick="getMenuList(${store_id}, this.value)">
            </div>


        </c:forEach>
        <c:forEach items="${categories}" var="category" varStatus="status">
            <script>
                $("#c-${status.count}").val("${category.category_name}")

            </script>
        </c:forEach>

        <div class="select">
            <input id="c-add" type="button" class="button button-pill button-small button-primary" value="카테고리 추가" onclick="addBtn()">
            <input id="c-fix" type="button" class="button button-pill button-small button-primary" value="카테고리 수정">
            <input id="c-del" type="button" class="button button-pill button-small button-primary" value="카테고리 삭제">
        </div>
    </section>
    <section class="menu">
        <h3 class="subtitle">메뉴</h3>
        <c:forEach begin="1" end="9" var="i">

            <div class="list">
                <input id="m-${i}" type="button" value=" " class="button button-3d button-box2" onclick="">
            </div>


        </c:forEach>
        <c:forEach items="${menuList}" var="menu" varStatus="status">
            <script>
                $("#m-${status.count}").val("${menu.menu_name}")

            </script>
        </c:forEach>

        <div class="select">
            <input id="m-add" type="button" class="button button-pill button-small button-primary" value="메뉴 추가">
            <input id="m-fix" type="button" class="button button-pill button-small button-primary" value="메뉴 수정">
            <input id="m-del" type="button" class="button button-pill button-small button-primary" value="메뉴 삭제">
        </div>
    </section>



</div>

<div id="dialog-add" title = "카테고리 이름을 입력하세요" style="display: none">
    <form id = "add-form" action="/api/addCategory/${store_id}" method="post">
        <input type="text" name="category_name" >

    </form>

</div>

<script type="text/javascript">
    <%--$(document).ready(function () {--%>

    <%--})--%>
    <%--window.addEventListener("load", function () {--%>
    <%--    var C1 = document.getElementById("c-1");--%>
    <%--    var C2 = document.getElementById("c-2");--%>
    <%--    var C3 = document.getElementById("c-3");--%>
    <%--    var C4 = document.getElementById("c-4");--%>
    <%--    var C5 = document.getElementById("c-5");--%>
    <%--    var C6 = document.getElementById("c-6");--%>
    <%--    var C7 = document.getElementById("c-7");--%>
    <%--    var C8 = document.getElementById("c-8");--%>
    <%--    var C9 = document.getElementById("c-9");--%>
    <%--    var cCount = 0; // 카테고리 추가 카운트--%>
    <%--    var cAr = [C1, C2, C3, C4, C5, C6, C7, C8, C9];--%>

    <%--    let cAdd = document.getElementById("c-add");--%>
    <%--    let cFix = document.getElementById("c-fix");--%>
    <%--    let cDel = document.getElementById("c-del");--%>

    <%--    var M1 = document.getElementById("m-1");--%>
    <%--    var M2 = document.getElementById("m-2");--%>
    <%--    var M3 = document.getElementById("m-3");--%>
    <%--    var M4 = document.getElementById("m-4");--%>
    <%--    var M5 = document.getElementById("m-5");--%>
    <%--    var M6 = document.getElementById("m-6");--%>
    <%--    var M7 = document.getElementById("m-7");--%>
    <%--    var M8 = document.getElementById("m-8");--%>
    <%--    var M9 = document.getElementById("m-9");--%>

    <%--    cAdd.onclick = function () {--%>
    <%--        for (let i = cCount; i <= cAr.length; i++) {--%>
    <%--            if (cAr[i].value == " ") {--%>
    <%--                let cInput = prompt("카테고리 입력", "");--%>

    <%--                //alert(typeof cInput);--%>
    <%--                cAr[i].value = cInput;--%>
    <%--                console.log(cInput);--%>

    <%--                $.ajax({--%>
    <%--                    url: "/category/${id}",--%>
    <%--                    data: "category_name=" + cInput,--%>
    <%--                    type: "POST",--%>

    <%--                });--%>


    <%--                if (cAr[i].value == "") {--%>
    <%--                    cAr[i].value = " ";--%>
    <%--                    alert("공백을 넣을 수 없습니다.");--%>
    <%--                    break;--%>
    <%--                }--%>

    <%--                cCount++;--%>
    <%--                break;--%>
    <%--            } else {--%>
    <%--                alert("더 이상 추가할 수 없습니다.");--%>
    <%--                break;--%>
    <%--            }--%>
    <%--        }--%>


    <%--    }--%>

    <%--});--%>

    <%--function getMenuList(store_id, category_name) {--%>
    <%--    $.ajax({--%>
    <%--        type : "GET",--%>
    <%--        url : "/api/menus/"+store_id+"/"+category_name,--%>
    <%--        data : {--%>
    <%--            menuList : ${menuList}--%>
    <%--        },--%>
    <%--        error : function(error) {--%>
    <%--            console.log("error");--%>
    <%--        },--%>
    <%--        success : function(data) {--%>
    <%--            console.log("success");--%>
    <%--            console.log(data.type)--%>
    <%--            var objectToJSON = JSON.stringify(data);--%>
    <%--            console.log(objectToJSON);--%>
    <%--        }--%>

    <%--    });--%>



    <%--}--%>

    function addBtn()
    {
        $('#dialog-add').dialog({
            modal: true,
            buttons: {

                "확인": function() { $("#add-form").submit();

                }}
        });

    }


</script>
</body>
</html>