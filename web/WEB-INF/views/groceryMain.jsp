<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/11
  Time: 2:51 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>식자재 관리 페이지</title>
        <link href="/static/css/groceryMain-style.css" type="text/css" rel="stylesheet">
        <link href="/static/css/buttons.css" type="text/css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>

    <body>
        <div id="webView">
            <jsp:include page="header.jsp"></jsp:include>


            <div id="sortSelectLayoutL" >
                <p>번호순 정렬 기능</p>
            </div>

            <div id="sortSelectLayoutR">
                <p>내림/오름 정렬 기능</p>
            </div>


            <div id="searchLayout">
                <p>테이블 검색 기능</p>
            </div>
            <div id="tableView">
                <table id="products" border="1">


                    <form action="" id="setRows">
                        <p>
                            showing
                            <input type="text" name="rowPerPage" value="8">
                            item per page
                        </p>
                    </form>


                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>식자재명</th>
                        <th>남은수량</th>
                        <th>유통기한</th>
                    </tr>
                    </thead>
                    <c:forEach items="${items}" var="items" varStatus="status">

                    <tbody>
                    <tr>
                        <td>${status.count}</td>
                        <td>${items.ingredient_name}</td>
                        <td>${items.ingredient_qty}</td>
                        <td>${items.expiration_date}</td>

                    </tr>

                    </tbody>
                    </c:forEach>

                </table>

            </div>
            <div class="button button-pill button-small button-primary"
                 id="addBtnLayout"
                 style="position: absolute; top: 580px; left: 54px; " onclick="location.href='/addGroceryPage'">
                식자재 추가
            </div>
            <div class="button button-pill button-small button-primary" id="deleteBtnLayout" style="position: absolute; top: 580px; left: 200px;">
                식자재 삭제
            </div>
            <div class="button button-pill button-small button-primary" id="orderBtnLayout" style="position: absolute; top: 580px; left: 800px; ">
                주문
            </div>
        </div>

        <script>
            var $setRows = $('#setRows');

            $setRows.submit(function (e) {
                e.preventDefault();
                var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환



                var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
                if (!rowPerPage) {
                    alert(zeroWarning);
                    return;
                }
                $('#nav').remove();
                var $products = $('#products');

                $products.after('<div id="nav">');


                var $tr = $($products).find('tbody tr');
                var rowTotals = $tr.length;


                var pageTotal = Math.ceil(rowTotals/ rowPerPage);
                var i = 0;

                for (; i < pageTotal; i++) {
                    $('<a href="#"></a>')
                        .attr('rel', i)
                        .html(i + 1)
                        .appendTo('#nav');
                }

                $tr.addClass('off-screen')
                    .slice(0, rowPerPage)
                    .removeClass('off-screen');

                var $pagingLink = $('#nav a');
                $pagingLink.on('click', function (evt) {
                    evt.preventDefault();
                    var $this = $(this);
                    if ($this.hasClass('active')) {
                        return;
                    }
                    $pagingLink.removeClass('active');
                    $this.addClass('active');

                    // 0 => 0(0*4), 4(0*4+4)
                    // 1 => 4(1*4), 8(1*4+4)
                    // 2 => 8(2*4), 12(2*4+4)
                    // 시작 행 = 페이지 번호 * 페이지당 행수
                    // 끝 행 = 시작 행 + 페이지당 행수

                    var currPage = $this.attr('rel');
                    var startItem = currPage * rowPerPage;
                    var endItem = startItem + rowPerPage;

                    $tr.css('opacity', '0.0')
                        .addClass('off-screen')
                        .slice(startItem, endItem)
                        .removeClass('off-screen')
                        .animate({opacity: 1}, 300);

                });

                $pagingLink.filter(':first').addClass('active');

            });


            $setRows.submit();


        </script>
    <script>



    </script>




    </body>
</html>
