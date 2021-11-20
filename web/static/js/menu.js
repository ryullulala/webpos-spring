$(document).ready(function () {
    let storeId = {"storeId" : $('#storeId').val()};
    $.ajax({
        url: "/api/categories", // 요청이 전송될 URL 주소
        type: "GET", // http 요청 방식 (default: ‘GET’)
        data:  storeId,
        statusCode: {
            200:
                function (data) {
                    var categories = data
                    console.log(categories);
                    var tmpHtml = $('#categoryView').text();
                    var dataHtml = '';

                    if (categories.length == 0) {
                        //dataHtml = $('#noResult').text();
                    } else {
                        var tmp = '';
                        $.each(categories, function (i, v) {
                            tmp = tmpHtml;
                            tmp = tmp.replace('{categoryName}', v.category_name);
                            dataHtml += tmp;
                        });
                    }
                    $('#categoryView').html(dataHtml);
                }
        }
    });
});
window.addEventListener("load", function() {
    var C1 = document.getElementById("c-1");
    var C2 = document.getElementById("c-2");
    var C3 = document.getElementById("c-3");
    var C4 = document.getElementById("c-4");
    var C5 = document.getElementById("c-5");
    var C6 = document.getElementById("c-6");
    var C7 = document.getElementById("c-7");
    var C8 = document.getElementById("c-8");
    var C9 = document.getElementById("c-9");
    var cCount = 0; // 카테고리 추가 카운트
    var cAr= [C1, C2, C3, C4, C5, C6, C7, C8, C9];

    let cAdd = document.getElementById("c-add");
    let cFix = document.getElementById("c-fix");
    let cDel = document.getElementById("c-del");

    var M1 = document.getElementById("m-1");
    var M2 = document.getElementById("m-2");
    var M3 = document.getElementById("m-3");
    var M4 = document.getElementById("m-4");
    var M5 = document.getElementById("m-5");
    var M6 = document.getElementById("m-6");
    var M7 = document.getElementById("m-7");
    var M8 = document.getElementById("m-8");
    var M9 = document.getElementById("m-9");

    cAdd.onclick = function() {
        for(let i=cCount; i<=cAr.length; i++) {
            if(cAr[i].value == " ") {
                let cInput = prompt("카테고리 입력", "");
                //alert(typeof cInput);
                cAr[i].value = cInput;
                console.log(cInput);

                if(cAr[i].value == "") {
                    cAr[i].value = " ";
                    alert("공백을 넣을 수 없습니다.");
                    break;
                }

                cCount++;
                break;
            } else {
                alert("더 이상 추가할 수 없습니다.");
                break;
            }
        }


    }

});
