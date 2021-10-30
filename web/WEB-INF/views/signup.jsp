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

      <form class="well form-horizontal" action="/regist" method="post" id="contact_form">
          <fieldset>

              <!-- Form Name -->
              <legend><center><h2><b>WEB POS 회원가입</b></h2></center></legend><br>

              <!-- Text input-->
              <div class="form-group">
                  <label class="col-md-4 control-label">아이디</label>
                  <div class="col-md-4 inputGroupContainer">
                      <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                          <input  name="user_id" placeholder="id" class="form-control"  type="text">
                      </div>
                  </div>
              </div>

              <div class="form-group">
                  <label class="col-md-4 control-label" >비밀번호</label>
                  <div class="col-md-4 inputGroupContainer">
                      <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                          <input name="user_pw" placeholder="Password" class="form-control"  type="password">
                      </div>
                  </div>
              </div>

              <!-- Text input-->

              <div class="form-group">
                  <label class="col-md-4 control-label" >비밀번호 확인</label>
                  <div class="col-md-4 inputGroupContainer">
                      <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                          <input name="confirm_password" placeholder="Confirm Password" class="form-control"  type="password">
                      </div>
                  </div>
              </div>

              <div class="form-group">
                  <label class="col-md-4 control-label">이름</label>
                  <div class="col-md-4 inputGroupContainer">
                      <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                          <input  name="user_name" placeholder="user name" class="form-control"  type="text">
                      </div>
                  </div>
              </div>

              <div class="form-group">
                  <label class="col-md-4 control-label">생년월일</label>
                  <div class="col-md-4 inputGroupContainer">
                      <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                          <input  name="user_birth" placeholder="2021-00-00" class="form-control"  type="text">
                      </div>
                  </div>
              </div>


              <div class="form-group">
                  <label class="col-md-4 control-label">성별</label>
                  <div class="col-md-4 selectContainer">
                      <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                          <select name="user_gender" class="form-control selectpicker">
<%--                                임시로 바꿧습니다--%>
                              <option value="1">남</option>
                              <option value="2">여</option>

                          </select>
                      </div>
                  </div>
              </div>




              <!-- Text input-->
              <div class="form-group">
                  <label class="col-md-4 control-label">E-Mail</label>
                  <div class="col-md-4 inputGroupContainer">
                      <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                          <input name="user_email" placeholder="E-Mail Address" class="form-control"  type="text">
                      </div>
                  </div>
              </div>


              <!-- Text input-->

              <div class="form-group">
                  <label class="col-md-4 control-label">전화번호</label>
                  <div class="col-md-4 inputGroupContainer">
                      <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                          <input name="user_phone" placeholder="010-0000-0000" class="form-control" type="text">
                      </div>
                  </div>
              </div>

              <!-- Select Basic -->

              <!-- Success message -->
              <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

              <!-- Button -->
              <div class="form-group">
                  <label class="col-md-4 control-label"></label>
                  <div class="col-md-4"><br>
                      <button>가입하기</button>
                  </div>
              </div>

          </fieldset>
      </form>
  </div>
  </div><!-- /.container -->
  <script type="text/javascript" src="/static/js/signup.js"></script>
  <!-- 자바 스크립트 연결해야함..!!-->

  </body>
</html>
