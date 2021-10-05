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
        <title>메뉴관리 (11 of 17)</title>
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="mobile-web-app-capable" content="yes"><link href="/static/package/view.min.css?1630042307762" rel="stylesheet" type="text/css"><script async="" src="//www.google-analytics.com/analytics.js"></script>
        <script src="/static/package/view-resource.min.js?1630042307762"></script>
        <script>screenWidth = 978; projectId = "vJHjF2eaQsFippu0F5Mx0OCzC1R0jtF6"; sequenceId = "jiyWs";</script>
        <link rel="stylesheet" href="/static/css/menu-style.css">
        <style>
            body {margin:0;padding:0;}
            #webView {overflow:hidden;position:relative;background:#FFFFFF;width:978px;height:638px;margin:0 auto;-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}
            #webView[data-show-memo='true'] {overflow:visible}
        </style>
        <script type="text/javascript" async="" src="https://m1.daumcdn.net/tiara/js/td.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>

    <body data-locale="ko" style="">
        <div id="webView" data-canvas="true" data-show-memo="false" data-show-link="false" title="페이지에 링크가 연결된 객체가 있을 경우 화면을 터치/클릭하면 표시됩니다." class="">
            <div data-obj-id="I5b0r" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 27px; left: 49px; width: 800px; height: 26px;">

                <span onclick="location.href='posMain.jsp' "  >POS  |</span>
                <span>  매출관리  |</span>
                <span onclick="location.href='menu.jsp'">  메뉴관리  |</span>
                <span>  테이블 위치 관리  |</span>
                <span>  로그아웃</span>
            </div>
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
                        <td onclick="fetchPage('/test')">내용
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
                    <button>카테고리 추가</button>
                    <button>카테고리 삭제</button>
                    <button>카테고리 수정</button>
                </div>
            </div>



        </div>

        <script>
            function fetchPage(name){
                fetch(name).then(function(response){
                    response.text().then(function(text){
                        document.querySelector('table#menuTable').innerHTML = text;
                    })
                });
            }
        </script>
    </body>
</html>