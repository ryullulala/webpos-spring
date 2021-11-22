<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/11
  Time: 2:51 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>식자재 관리 페이지</title>
        <link href="/static/css/groceryMain-style.css" type="text/css" rel="stylesheet">
        <link href="/static/css/buttons.css" type="text/css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="/static/js/groManagePaging.js" type="text/javascript"></script>
        <meta charset="utf-8">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    </head>

    <body>
        <div id="webView">
            <jsp:include page="header.jsp"></jsp:include>
            <%request.getSession();%>



            <div id="tableView">
                <table id="products" border="1">


                    <form action="" id="setRows">
                        <p>
                            한번에
                            <input type="text" name="rowPerPage" value="8">
                            개씩 보기
                        </p>
                    </form>

                    <div class="allCheck">
                        <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label>
                    </div>
                    <thead>
                    <tr>
                        <th>  </th>
                        <th>No.</th>
                        <th>식자재명</th>
                        <th>남은수량</th>
                        <th>유통기한</th>
                    </tr>
                    </thead>
                    <c:forEach items="${items}" var="items" varStatus="status">

                    <tbody>
                    <tr>
                        <td>
                            <div class="checkBox">
                                <input type="checkbox" name="chBox" class="chBox" data-id = ${items.ingredient_id}>
                            </div>
                        </td>

                        <td>${status.count}</td>
                        <td>${items.ingredient_name}</td>
                        <td>${items.ingredient_qty}</td>
                        <td><fmt:formatDate value="${items.expiration_date}" pattern="yyyy-MM-dd"/></td>

                    </tr>

                    </tbody>
                    </c:forEach>

                </table>

            </div>
            <div class="button button-pill button-small button-primary"
                 id="addBtnLayout"
                 style="position: absolute; top: 580px; left: 54px; " onclick="addBtn()">
                식자재 추가
            </div>

            <input type="button" value="선택 삭제" class="button button-pill button-small button-primary selectDelete_btn" id="deleteBtnLayout" style="position: absolute; top: 580px; left: 200px;">
            <script>
                $(".selectDelete_btn").click(function(){
                    var confirm_val = confirm("정말 삭제하시겠습니까?");

                    if(confirm_val) {
                        var checkArr = new Array();

                        $("input[class='chBox']:checked").each(function(){
                            checkArr.push($(this).attr("data-id"));
                        });

                        $.ajax({
                            url : "/api/delete/"+${store_id},
                            type : "post",
                            data : { chbox : checkArr },

                        });
                    }
                });
            </script>
            <div class="button button-pill button-small button-primary" id="orderBtnLayout" style="position: absolute; top: 580px; left: 800px; ">
                주문
            </div>
        </div>

        <div id="dialog-add" title = "식자재 추가" style="display: none">
            <form id = "add-form" action="/api/addGrocery/${store_id}" method="post">

                <p>
                    식자재 이름 <input type="text" name="ingredient_name" >
                </p>
                <p>
                    수량 <input type="number" name="ingredient_qty">
                </p>
                <p>
                    유통기한 <input type="text" name="expiration_date">
                </p>
            </form>

        </div>

        <script>
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
            $("#allCheck").click(function(){
                var chk = $("#allCheck").prop("checked");
                if(chk) {
                    $(".chBox").prop("checked", true);
                } else {
                    $(".chBox").prop("checked", false);
                }
            });
            $(".chBox").click(function(){
                $("#allCheck").prop("checked", false);
            });
        </script>





    </body>
</html>
