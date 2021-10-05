<%--
  Created by IntelliJ IDEA.
  User: jueon
  Date: 2021/10/04
  Time: 2:13 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Register</title>


        <style>
            body {margin:0;padding:0;}
            #webView {overflow:hidden;position:relative;background:rgb(224, 224, 224);width:978px;height:1200px;margin:0 auto;-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}

        </style>

    </head>
    <body>
        <div id="webView">

            <div class="container">

                <form class="well form-horizontal" action=" " method="post"  id="contact_form">
                    <fieldset>

                        <!-- Form Name -->
                        <legend><center><h2><b>Registration Form</b></h2></center></legend><br>

                        <!-- Text input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label">First Name</label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input  name="first_name" placeholder="First Name" class="form-control"  type="text">
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label" >Last Name</label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="last_name" placeholder="Last Name" class="form-control"  type="text">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Department / Office</label>
                            <div class="col-md-4 selectContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                    <select name="department" class="form-control selectpicker">
                                        <option value="">Select your Department/Office</option>
                                        <option>Department of Engineering</option>
                                        <option>Department of Agriculture</option>
                                        <option >Accounting Office</option>
                                        <option >Tresurer's Office</option>
                                        <option >MPDC</option>
                                        <option >MCTC</option>
                                        <option >MCR</option>
                                        <option >Mayor's Office</option>
                                        <option >Tourism Office</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label">Username</label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input  name="user_name" placeholder="Username" class="form-control"  type="text">
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label" >Password</label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="user_password" placeholder="Password" class="form-control"  type="password">
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label" >Confirm Password</label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="confirm_password" placeholder="Confirm Password" class="form-control"  type="password">
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label">E-Mail</label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
                                </div>
                            </div>
                        </div>


                        <!-- Text input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label">Contact No.</label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                    <input name="contact_no" placeholder="(639)" class="form-control" type="text">
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
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
                            </div>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div><!-- /.container -->

<%--            <form>--%>

<%--                <input type="text" value="아이디">--%>
<%--                <input type="text" value="아이디">--%>
<%--                <input type="text" value="아이디">--%>
<%--                <input type="text" value="아이디">--%>
<%--                <input type="text" value="아이디">--%>
<%--                <input type="text" value="아이디">--%>



<%--            </form>--%>


<%--            <div data-obj-id="hgSyi" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 145px; left: 342px; width: 299px; height: 40px;">--%>
<%--                <input type="text" value="아이디" style="color: rgb(94, 94, 94);" class=""></div>--%>
<%--            <div data-obj-id="bpQZ7" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 64px; left: 343px; width: 300px; height: 48px;"><div data-text-content="true" style="font-weight: bold; font-size: 32px; text-align: center;" class="">WEB POS</div></div><div data-obj-id="QqygT" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 280px; left: 1828px; width: 100px; height: 40px;"><div data-text-content="true" style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(94, 94, 94);">Button</div></div>--%>
<%--            <div data-obj-id="E6ub8" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 118px; left: 342px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">아이디</div>--%>
<%--            </div><div data-obj-id="DoMGh" style="position: absolute; top: 198px; left: 342px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">비밀번호</div>--%>
<%--            </div><div data-obj-id="667C8" style="position: absolute; top: 225px; left: 342px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="비밀번호" style="color: rgb(94, 94, 94);" class="" spellcheck="false"></div><div data-obj-id="9SpU9" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 276px; left: 342px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="비밀번호확인" style="color: rgb(94, 94, 94);" class=""></div><div data-obj-id="Vk2Wc" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 329px; left: 342px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">이름</div>--%>
<%--            </div><div data-obj-id="lMz6r" style="position: absolute; top: 356px; left: 342px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="이름" style="color: rgb(94, 94, 94);" class="" spellcheck="false"></div><div data-obj-id="IRiRu" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 436px; left: 342px; width: 90px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="년" style="color: rgb(94, 94, 94);" class=""></div><div data-obj-id="VlMml" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 409px; left: 342px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">생년월일</div>--%>
<%--            </div><div data-obj-id="ZqyU3" style="position: absolute; top: 436px; left: 448px; width: 90px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="월" style="color: rgb(94, 94, 94);" class=""></div><div data-obj-id="1v73B" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 436px; left: 553px; width: 90px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="일" style="color: rgb(94, 94, 94);" class=""></div><div data-obj-id="eZYUK" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 529px; left: 342px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="성별                                                             >" style="color: rgb(94, 94, 94);" class="" spellcheck="false"></div><div data-obj-id="BrXNV" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 502px; left: 342px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">성별</div>--%>
<%--            </div><div data-obj-id="HhNys" style="position: absolute; top: 588px; left: 342px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">본인확인 이메일</div>--%>
<%--            </div><div data-obj-id="jD0tC" style="position: absolute; top: 615px; left: 342px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="이메일" style="color: rgb(94, 94, 94);" class=""></div><div data-obj-id="Wz8hF" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 1010px; left: 338.988px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">휴대전화</div>--%>
<%--            </div><div data-obj-id="jd14n" style="position: absolute; top: 1037px; left: 339.5px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="전화번호 입력" style="color: rgb(94, 94, 94);" class=""></div><div data-obj-id="vZX8O" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 1087px; left: 339px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="인증번호를 입력하세요" style="color: rgb(94, 94, 94);" class=""></div><div data-obj-id="GR0q1" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 1141px; left: 338.5px; width: 300px; height: 40px;"><div data-text-content="true" style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(94, 94, 94);" class="">가입하기</div></div><div data-obj-id="TVVhM" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 693px; left: 339.5px; width: 299px; height: 38px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="없음                                                            >" style="color: rgb(94, 94, 94);" class="" spellcheck="false"></div><div data-obj-id="b9oKJ" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 666px; left: 339.5px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">가게 종류 선택</div>--%>
<%--            </div><div data-obj-id="RguGg" style="position: absolute; top: 751px; left: 338.45px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">가게 이름</div>--%>
<%--            </div><div data-obj-id="xtClJ" style="position: absolute; top: 778px; left: 339px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="가게 이름" style="color: rgb(94, 94, 94);" class="" spellcheck="false"></div><div data-obj-id="p4Fqq" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 841px; left: 339px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">가게 주소</div>--%>
<%--            </div><div data-obj-id="9trMv" style="position: absolute; top: 868px; left: 340px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="주소" style="color: rgb(94, 94, 94);" class=""></div><div data-obj-id="IAPQE" data-obj-type="element" data-text-editable="true" class="" style="position: absolute; top: 923px; left: 338.05px; width: 300px; height: 27px;"><div data-text-content="true" style="font-weight: bold; font-size: 15px;" class="">가게 번호</div>--%>
<%--            </div><div data-obj-id="grNnj" style="position: absolute; top: 950px; left: 339.05px; width: 299px; height: 40px;"><input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="번호" style="color: rgb(94, 94, 94);" class="" spellcheck="false"></div>--%>
        </div>

    </body>
</html>