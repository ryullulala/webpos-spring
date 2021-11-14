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

        <jsp:include page="header.jsp"></jsp:include>
        <div id="addLayout" style="position: absolute; top: 68px; left: 98px; width: 306px; height: 428px; background-color: lightgray">
            <p>식자재 추가 - ${id}번 가게</p>
            <form action="/wareHouse/${id}" method="post">
                <p>
                    식자재 이름 <input type="text" name="ingredient_name" >
                </p>
                <p>
                    수량 <input type="number" name="ingredient_qty">
                </p>
                <p>
                    유통기한 <input type="text" name="expiration_date" value="2021/11/7">
                </p>
                <input type="submit">
            </form>

        </div>



    </div>

</body>
</html>
