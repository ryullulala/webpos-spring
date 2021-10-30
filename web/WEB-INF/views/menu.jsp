<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/04
  Time: 7:00 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
<<<<<<< HEAD
        <title>메뉴관리 (11 of 17)</title>
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="mobile-web-app-capable" content="yes">

        <link rel="stylesheet" href="../../static/css/menu-style.css">  <%--css 연결--%>
        <link rel="stylesheet" href="../../static/css/buttons.css">  <%--css 연결--%>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script><%--jquery 선언--%>
        <script src="../../static/js/menu.js"></script> <%--js 연결--%>
    </head>

    <body data-locale="ko">
        <div id = "container">
            <header>
                <h1>${res.user_name} 가게</h1>
                <nav>
                    <ul class="top-menu">
                        <li><a href="posMain">POS</a></li>
                        <li><a href="#">매출 관리</a></li>
                        <li><a href="menu">매뉴 관리</a></li>
                        <li><a href="#">테이블 위치 관리</a></li>
                        <li><a href="#">식자재 관리</a></li>
                        <li class="cut"><a href="#">로그아웃</a></li>
                    </ul>
                </nav>
            </header>

            <section class="category">
                <h3 class="subtitle">카테고리</h3>
                <div class="list">
                    <input id="c-1" type = "button" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input id="c-2" type = "button" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input id="c-3" type = "button" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input id="c-4" type = "button" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input id="c-5" type = "button" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input id="c-6" type = "button" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input id="c-7" type = "button" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input id="c-8" type = "button" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input id="c-9" type = "button" value=" " class = "button button-3d button-box2">
                </div>
                <div class="select">
                    <input id = "c-add" type ="button" class="button button-pill button-small button-primary" value="카테고리 추가">
                    <input id = "c-fix" type ="button" class="button button-pill button-small button-primary" value="카테고리 수정">
                    <input id = "c-del" type ="button" class="button button-pill button-small button-primary" value="카테고리 삭제">
                </div>
            </section>
            <section class="menu">
                <h3 class="subtitle">메뉴</h3>
                <div class="list">
                    <input type="button" id="m-1" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input type="button" id="m-2" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input type="button" id="m-3" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input type="button" id="m-4" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input type="button" id="m-5" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input type="button" id="m-6" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input type="button" id="m-7" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input type="button" id="m-8" value=" " class = "button button-3d button-box2">
                </div>
                <div class="list">
                    <input type="button" id="m-9" value=" " class = "button button-3d button-box2">
                </div>
                <div class="select">
                    <input id = "m-add" type ="button" class="button button-pill button-small button-primary" value="메뉴 추가">
                    <input id = "m-fix" type ="button" class="button button-pill button-small button-primary" value="메뉴 수정">
                    <input id = "m-del" type ="button" class="button button-pill button-small button-primary" value="메뉴 삭제">
                </div>
            </section>
=======
        <title>메뉴관리</title>
        <link rel="stylesheet" href="/static/css/menu-style.css">
        <style>
            body {
                margin:0;
                padding:0;
            }
            #webView {overflow:hidden;position:relative;background:#FFFFFF;width:978px;height:638px;margin:0 auto;-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}
            #webView[data-show-memo='true'] {overflow:visible}
        </style>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>

    <body data-locale="ko" style="">
        <div id="webView" >
            <jsp:include page="header.jsp"></jsp:include>

            <div id="menuListView" style="position: absolute; top: 85px; left: 486px; width: 474px; height: 506px; background-color: lightgray">
                <div class ="viewTitle" style="position: absolute; ">메뉴 선택</div>
                <table id = "menuTable" class="type11">

                    <tbody>
                    <tr>
                        <td>내용
                        </td><td>내용
                    </td><td>내용
                    </td></tr>
                    <tr>
                        <td>내용
                        </td><td>내용
                    </td><td>내용
                    </td></tr>
                    <tr>
                        <td>내용
                        </td><td>내용
                    </td><td>내용
                    </td></tr>
                    </tbody>
                </table>
                <div class = "buttonView">
                    <button>메뉴 추가</button>
                    <button>메뉴 삭제</button>
                    <button>메뉴 수정</button>
                </div>
            </div>

        </div>
            <div id="cateListView" style="position: absolute; top: 86px; left: 200px; width: 447px; height: 508px; background-color: lightgray">
                <div class ="viewTitle" style="position: absolute; ">카테고리 선택</div>
                <table id ="cateTable" class="type11">

                    <tbody>
                    <tr>
                        <td onclick="fetchTable('test.jsp')">내용
                        </td><td>내용
                    </td><td>내용
                    </td></tr>
                    <tr>
                        <td>내용
                        </td><td>내용
                    </td><td>내용
                    </td></tr>
                    <tr>
                        <td>내용
                        </td><td>내용
                    </td><td>내용
                    </td></tr>
                    </tbody>
                </table>
                <div class = "buttonView">
                    <button onclick="fetchPage('addCatePage.jsp')">카테고리 추가</button>
                    <button>카테고리 삭제</button>
                    <button>카테고리 수정</button>
                </div>
            </div>



>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
        </div>

        <script>
            function fetchPage(name){
                fetch(name).then(function(response){
                    response.text().then(function(text){
<<<<<<< HEAD
=======
                        document.querySelector('body').innerHTML = text;
                    })
                });
            }
            function fetchTable(name){
                fetch(name).then(function(response){
                    response.text().then(function(text){
>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
                        document.querySelector('table#menuTable').innerHTML = text;
                    })
                });
            }
<<<<<<< HEAD

        </script>
        <script type = "text/javascript">
            $(document).ready(function() {
                
            })
=======
>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
        </script>
    </body>
</html>