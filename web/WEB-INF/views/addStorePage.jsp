<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/04
  Time: 2:31 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/static/css/signUp-style.css" type="text/css">

</head>



<body>

    <div class="container">
        <%request.setCharacterEncoding("UTF-8");%>

        <form class="well form-horizontal" action="/store" method="post" id="storeInfo_form">
            <fieldset>
                <!-- Form Name -->
                <legend><center><h2><b>${res.user_id}님 보유 매장 추가</b></h2></center></legend><br>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label">매장 이름</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input  name="store_name" placeholder="매장 이름을 입력하세요." class="form-control"  type="text">
                        </div>

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">매장 주소지</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input  name="store_address" placeholder="부산광역시 사상구 백양대로 00-00" class="form-control"  type="text">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">매장 전화번호</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>


                            <input  name="store_phone" placeholder="051-000-0000" class="form-control"  type="text">


                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">가게 업종</label>
                    <div class="col-md-4 selectContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>

                            <select name="store_category" class="form-control selectpicker">
    <%--                            임시로 카테고리 설정부분 추가했습니다--%>
                                <option value ="cafe">카페</option>
                                <option value ="kor">한식</option>
                                <option value="jap">일식</option>
                                <option value="chi">중식</option>
                                <option value="etc">기타</option>

                            </select>
                        </div>
                    </div>
                </div>

                <!-- Success message -->
                <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>


                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4"><br>
                        <button>추가하기</button>
                    </div>
                </div>


            </fieldset>
        </form>
    </div><!-- /.container -->
</body>
</html>
