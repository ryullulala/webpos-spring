<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/04
  Time: 4:19 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>POS</title>

  <link href="/static/css/posMain-style.css" type="text/css" rel="stylesheet">

</head>


<body >

<div id="webView">
  <jsp:include page="header.jsp"></jsp:include>
  <%request.getSession();%>
  <div id="tableView" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 92.5px; left: 22px; width: 579px; height: 470px;">

    ${store_id}번 가게


  </div>




  <div id="todoView" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 92px; left: 629px; width: 326px; height: 470px;">
    <table class="todoTable">
      <thead>
      <tr>
        <th scope="cols">TODO</th>
        <th scope="cols">COOKING</th>
        <th scope="cols">DONE</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td>메뉴1<br>메뉴2<br>메뉴3<br>시간
        </th>
        <td>내용</th>
        <td>내용</th>
      </tr>
      <tr>
        <td>메뉴1<br>메뉴2<br>시간
        <td>메뉴1<br>메뉴2<br>메뉴3<br>시간
        <td>내용</th>
      </tr>
      <tr>
        <td>내용</th>
        <td>내용</th>
        <td>내용</th>
      </tr>
      </tbody>
    </table>
    <button id="detailBtn" onclick="fetchPage('test2')" >상세 정보</button>
  </div>


</div>
</div>


<script>
  function fetchPage(name){
    fetch(name).then(function(response){
      response.text().then(function(text){
        document.querySelector('div#tableView').innerHTML = text;
      })
    });
  }
</script>
</body>
</html>
