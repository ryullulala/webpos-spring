<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>dragTest</title>
    <!-- jQUery Latest Ver -->
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <!-- jQUery UI -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/460/fabric.min.js"></script>
    <meta charset="utf-8">

    <script>
        $(function(){
            $(".card").draggable();
        });
    </script>
    <style>
        body {margin:0;padding:0;}

        #webView {
            overflow : hidden;
            position:relative;
            background:#FFFFFF;
            width:978px;
            height:600px;
            margin:0 auto;
        }

        #tableCanvas {
            position : absolute;
            top : 92px;
            left : 40px;
            width : 580px;
            height : 470px;
            background-color : lightgray;
        }

        #selectView{
            position : absolute;
            top : 92px;
            left : 627px;
            width: 325px;
            height : 470px;
            background-color : lightgray;

        }

        #square {
            width :60px;
            height : 60px;
            background : white;
            float : left

        }

        #circle {
            width : 60px;
            height: 60px;
            background: white;
            border-radius: 50%;
            float : left;
        }

        #roundedSquare{
            border-top-left-radius : 10px;
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
            border-bottom-left-radius: 10px;
            width :60px;
            height : 60px;
            background : white;
            float : left;

        }





    </style>
</head>
<body>
<div id="webView">
    <jsp:include page="header.jsp"></jsp:include>

    <div id="tableCanvas" >
        <canvas id="c" width="580" height="470" style="border:1px solid #000000"></canvas>
        <script type="text/javascript">
            var canvas = new fabric.Canvas('c');
        </script>

    </div>
    <div id="selectView">
        <div>
            <label>컴포넌트 선택</label>
        </div>

        <script type="text/javascript">
            function drawRect(){
                var rect = new fabric.Rect({

                    id : 'rect',
                    fill: 'white',
                    width: 60,
                    height: 60
                });
                canvas.add(rect);

            }
            function drawCir(){
                var circle = new fabric.Circle({
                    radius: 40,
                    fill: 'white',
                    left: 0
                });
                canvas.add(circle);

            }


        </script>

        <div id="square" onclick="drawRect()"></div>
        <div id="roundedSquare"></div>
        <div id="circle" onclick="drawCir()"></div>


    </div>

</div>
</body>
</html>

