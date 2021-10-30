<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/09
  Time: 2:39 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--포스 메인 화면에서 투두리스트 상세보기 하면 나오는 테이블 예시--%>
<style>

  table {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: center;
    line-height: 1.5;
    margin: 20px 10px;
  }
  table th {
    width: 180px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: black;
    background: rgba(9,9,9,0.1)
  }
  table td {
    width: 155px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #eee;
  }

  #tableView{
    background-color: #cccccc;

  }

</style>

<div id="tableView">
  <table >
    <tbody>
    <tr>
      <th>&nbsp;</th>
      <th>&nbsp;우선 순위</th>
      <th>테이블 번호</th>
      <th>메뉴</th>
      <th>남은 시간&nbsp;</th>
      <th>추가사항</th>
    </tr>
    <tr>
      <th>&nbsp;1</th>
      <td>&nbsp;1</td>
      <td>12</td>
      <td>&nbsp;짜빠구리</td>
      <td>&nbsp;1:00</td>
      <td>&nbsp;물 적게</td>
    </tr>
    <tr>
      <th>&nbsp;2</th>
      <td>&nbsp;1</td>
      <td>&nbsp;12</td>
      <td>라면</td>
      <td>1 : 00&nbsp;</td>
      <td>물 많이&nbsp;</td>
    </tr>
    <tr>
      <th>&nbsp;3</th>
      <td>&nbsp;3</td>
      <td>&nbsp;1</td>
      <td>짜빠구리&nbsp;</td>
      <td>&nbsp;3 : 00</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>&nbsp;4</th>
      <td>&nbsp;2</td>
      <td>&nbsp;2</td>
      <td>&nbsp;순살치킨</td>
      <td>10 : 00&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>&nbsp;5</th>
      <td></td><td><br></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    </tbody>
  </table>

  <button style="position: absolute">뒤로가기</button>



</div>


