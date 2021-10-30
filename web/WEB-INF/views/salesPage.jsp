<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/10
  Time: 10:54 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>calendar</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>

            body {
                margin: 0;
                padding: 0
            }

            #calendarForm{
                width: 850px;
                position: absolute;
                top: 120px;
                left: 49px;

            }

            .custom_calendar_table{

                width: inherit;
                border: solid 1px black;
            }

            .custom_calendar_table td {
                text-align: center;
                vertical-align: top;
            }

            .custom_calendar_table thead.cal_date th {
                font-size: 1.5rem;
            }

            .custom_calendar_table thead.cal_date th button {
                font-size: 1.5rem;
                background: none;
                border: none;
            }

            .custom_calendar_table thead.cal_week th {
                background-color: lightgray;
                color: black;
                height: 50px;
            }

            .custom_calendar_table tbody td {
                cursor: pointer;
                width: 90px;
                height: 80px;
            }

            .custom_calendar_table tbody td:nth-child(1) {
                color: red;
            }

            .custom_calendar_table tbody td:nth-child(7) {
                color: #288CFF;
            }

            .custom_calendar_table tbody td.select_day {
                background-color: #288CFF;
                color: #fff;
            }

        </style>
        <style>
            body {margin:0;padding:0;}
            #webView {overflow:hidden;position:relative;background:#FFFFFF;width:978px;height:800px;margin:0 auto;-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}
            #webView[data-show-memo='true'] {overflow:visible}

        </style>



    </head>

    <body>
        <div id="webView" >
            <jsp:include page="header.jsp"></jsp:include>
            <div style="position: absolute;top: 80px;left: 80px;">
                <span onclick="">캘린더로 보기 |</span>
                <span onclick="showGraph()">그래프로 보기</span>

            </div><br>

            <div id="calendarForm"></div>
            <div style="position: absolute; top: 730px; left: 700px;">월매출: </div>

        </div>

        <script type="text/javascript">
            (function () {
                calendarMaker($("#calendarForm"), new Date());
            })();

            var nowDate = new Date();
            function calendarMaker(target, date) {
                if (date == null || date == undefined) {
                    date = new Date();
                }
                nowDate = date;
                if ($(target).length > 0) {
                    var year = nowDate.getFullYear();
                    var month = nowDate.getMonth() + 1;
                    $(target).empty().append(assembly(year, month));
                } else {
                    console.error("custom_calendar Target is empty!!!");
                    return;
                }

                var thisMonth = new Date(nowDate.getFullYear(), nowDate.getMonth(), 1);
                var thisLastDay = new Date(nowDate.getFullYear(), nowDate.getMonth() + 1, 0);


                var tag = "<tr>";
                var cnt = 0;
                //빈 공백 만들어주기
                for (i = 0; i < thisMonth.getDay(); i++) {
                    tag += "<td></td>";
                    cnt++;
                }

                //날짜 채우기
                for (i = 1; i <= thisLastDay.getDate(); i++) {
                    if (cnt % 7 == 0) { tag += "<tr>"; }

                    tag += "<td>" + i + "</td>";

                    cnt++;
                    if (cnt % 7 == 0) {
                        tag += "</tr>";
                    }
                }
                $(target).find("#custom_set_date").append(tag);
                calMoveEvtFn();

                function assembly(year, month) {
                    var calendar_html_code =
                        "<table class='custom_calendar_table'>" +
                        "<colgroup>" +
                        "<col style='width:81px'/>" +
                        "<col style='width:81px'/>" +
                        "<col style='width:81px'/>" +
                        "<col style='width:81px'/>" +
                        "<col style='width:81px'/>" +
                        "<col style='width:81px'/>" +
                        "<col style='width:81px'/>" +
                        "</colgroup>" +
                        "<thead class='cal_date'>" +
                        "<th><button type='button' class='prev'><</button></th>" +
                        "<th colspan='5'><p><span>" + year + "</span>년 <span>" + month + "</span>월</p></th>" +
                        "<th><button type='button' class='next'>></button></th>" +
                        "</thead>" +
                        "<thead  class='cal_week'>" +
                        "<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>" +
                        "</thead>" +
                        "<tbody id='custom_set_date'>" +
                        "</tbody>" +
                        "</table>";
                    return calendar_html_code;
                }

                function calMoveEvtFn() {
                    //전달 클릭
                    $(".custom_calendar_table").on("click", ".prev", function () {
                        nowDate = new Date(nowDate.getFullYear(), nowDate.getMonth() - 1, nowDate.getDate());
                        calendarMaker($(target), nowDate);
                    });
                    //다음날 클릭
                    $(".custom_calendar_table").on("click", ".next", function () {
                        nowDate = new Date(nowDate.getFullYear(), nowDate.getMonth() + 1, nowDate.getDate());
                        calendarMaker($(target), nowDate);
                    });
                    //일자 선택 클릭
                    $(".custom_calendar_table").on("click", "td", function () {
                        $(".custom_calendar_table .select_day").removeClass("select_day");
                        $(this).removeClass("select_day").addClass("select_day");
                    });
                }
            }

            function showGraph(){

                document.getElementById("calendarForm").innerHTML = "show graph here"

            }

            function fetchPage(name){
                fetch(name).then(function(response){
                    response.text().then(function(text){
                        document.querySelector('div#calendarForm').innerHTML = text;
                    })
                });
            }


        </script>


    </body>

</html>