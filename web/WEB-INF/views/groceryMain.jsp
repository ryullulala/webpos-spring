<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/11
  Time: 2:51 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>식자재 관리 페이지</title>
        <link href="/static/css/groceryMain-style.css" type="text/css" rel="stylesheet">
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
                        <th>제조사</th>
                        <th>식자재명</th>
                        <th>남은수량</th>
                        <th>유통기한</th>
                        <th>최근 주문날짜</th>
                        <th>배송상태</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>신라</td>
                        <td>밀가루</td>
                        <td>10개</td>
                        <td>2021.10.20</td>
                        <td>2021.10.11</td>
                        <td>주문완료</td>

                    </tr>
                    <tr>
                        <td>2</td>
                        <td>life</td>
                        <td>dish</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Clothing</td>
                        <td>shocks</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Clothing</td>
                        <td>sports</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>shoes</td>
                        <td>nike</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>shoes</td>
                        <td>addidas</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Bags</td>
                        <td>backpack</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Clothing</td>
                        <td>Jacket</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>shoes</td>
                        <td>bonie</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>Clothing</td>
                        <td>Jacket</td>
                    </tr>
                    </tbody>

                </table>

            </div>
            <div id="addBtnLayout" style="position: absolute; top: 580px; left: 54px; width: 120px; height: 40px;">
                <p>식자재 추가</p>
            </div>
            <div id="deleteBtnLayout" style="position: absolute; top: 580px; left: 150px; width: 120px; height: 40px;">
                <p>식자재 삭제</p>
            </div>
            <div id="orderBtnLayout" style="position: absolute; top: 580px; left: 500px; width: 120px; height: 40px;">
                <p>주문</p>
            </div>
        </div>

        <script>
            var $setRows = $('#setRows');

            $setRows.submit(function (e) {
                e.preventDefault();
                var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환

//		console.log(typeof rowPerPage);

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
//	console.log(rowTotals);

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




    </body>
</html>
