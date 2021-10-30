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



        </div>

        <script>
            function fetchPage(name){
                fetch(name).then(function(response){
                    response.text().then(function(text){
                        document.querySelector('body').innerHTML = text;
                    })
                });
            }
            function fetchTable(name){
                fetch(name).then(function(response){
                    response.text().then(function(text){
                        document.querySelector('table#menuTable').innerHTML = text;
                    })
                });
            }
        </script>
    </body>
</html>