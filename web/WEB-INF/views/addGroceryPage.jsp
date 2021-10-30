<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/11
  Time: 8:18 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>
        body {margin:0;padding:0;}
        #webView {
            overflow:hidden;
            position:relative;
            background:#FFFFFF;
            width:978px;
            height:800px;
            margin:0 auto;

        }

     p{
         margin-top: 35px;
         margin-left: 20px;
     }
    </style>
</head>
<body>
    <div id="webView" >
        <div id="addLayout" style="position: absolute; top: 68px; left: 98px; width: 306px; height: 428px; background-color: lightgray">
            <p>식자재 추가</p>
            <form>
                <p>
                    식자재 이름 <input type="text" name="ingredient_name" >
                </p>
                <p>
                    수량 <input type="text" name="ingredient_qty">
                </p>
                <p>
                    단위 <input type="text" >
                </p>
                <p>
                    제조사 <input type="text" >

                </p>
                <p>
                    유통기한 <input type="text" name="expiration_date">
                </p>
            </form>

            <p>
                <button>세부 설정</button>
                <input type="submit" value="추가">
            </p>
        </div>

        <div id="orderLayout" style="position: absolute; top: 68px; left: 539px; width: 306px; height: 428px; background-color: lightgray">
            <p>주문하기</p>
            <form>
                <p>
                    식자재 이름 <input type="text" >
                </p>
                <p>
                    수량 <input type="text" >
                </p>
                <p>
                    단위 <input type="text" >
                </p>

            </form>

            <p>
                제조사 : -
            </p>
            <p>
                현재 날짜 :
                <script>
                    let today = new Date();

                    let year = today.getFullYear(); // 년도
                    let month = today.getMonth() + 1;  // 월
                    let date = today.getDate();  // 날짜


                    document.write(year + '/' + month + '/' + date)
                    document.write('<br>')

                </script>
            </p>
            <p>
                <input type="submit" value="주문하기">
                <button>닫기</button>
            </p>

        </div>

    </div>

</body>
</html>
