$(document).ready(function () {
    let storeId = {"storeId": $('#storeId').val()};
    $.ajax({
        url: "/api/categories", // 요청이 전송될 URL 주소
        type: "GET", // http 요청 방식 (default: ‘GET’)
        data: storeId,
        statusCode: {
            200:
                function (categories) {
                    console.log(categories);
                    let tmpStr = $('#tmpStr').text();
                    let result = '';
                    let test = categories.length;

                    if (categories.length === 0) {
                        result = $('#emptyTmpStr').text();
                    } else {
                        let tmpData = '';
                        $.each(categories, function (i, v) {
                            tmpData = tmpStr.replace('{tmpId}', 'c-' + (i + 1));
                            tmpData = tmpData.replace('{categoryName}', v.category_name);
                            tmpData = tmpData.replace('{categoryId}', v.category_id);
                            result += tmpData;
                        });
                        if (test < 9) {
                            for (test; test < 9; test++) {
                                result += $('#emptyTmpStr').text();
                                result = result.replace('{emptyTmpId}', 'c-' + (test + 1));
                            }
                        }
                    }
                    $('#categoryView').html(result);

                    let C1 = document.getElementById("c-1").value;
                    let C2 = document.getElementById("c-2").value;
                    let C3 = document.getElementById("c-3").value;
                    let C4 = document.getElementById("c-4").value;
                    let C5 = document.getElementById("c-5").value;
                    let C6 = document.getElementById("c-6").value;
                    let C7 = document.getElementById("c-7").value;
                    let C8 = document.getElementById("c-8").value;
                    let C9 = document.getElementById("c-9").value;
                    let cAr = [C1, C2, C3, C4, C5, C6, C7, C8, C9];
                    console.log(cAr);

                    let cAdd = document.getElementById("c-add");
                    let cFix = document.getElementById("c-fix");
                    let cDel = document.getElementById("c-del");

                    const M1 = document.getElementById("m-1");
                    const M2 = document.getElementById("m-2");
                    const M3 = document.getElementById("m-3");
                    const M4 = document.getElementById("m-4");
                    const M5 = document.getElementById("m-5");
                    const M6 = document.getElementById("m-6");
                    const M7 = document.getElementById("m-7");
                    const M8 = document.getElementById("m-8");
                    const M9 = document.getElementById("m-9");
                    cAdd.onclick = function () {
                        for (let i = 0; i < cAr.length; i++) {
                            if (cAr[i] === " ") {
                                cAr[i] = prompt("카테고리 입력", "");
                                $.ajax({
                                    url: "/api/categories", // 요청이 전송될 URL 주소
                                    type: "POST", // http 요청 방식 (default: ‘GET’)
                                    contentType: 'application/json',
                                    data: JSON.stringify({
                                        store_id: $('#storeId').val(),
                                        category_name: cAr[i]
                                    }),
                                    statusCode: {
                                        200: function () {
                                            window.location.reload();
                                        }
                                    }
                                })
                                break;
                            }
                        }
                    }
                }
        }//statusCode end
    });
});

function getMenu(categoryId) {
    let sendData = {
        "categoryId": categoryId,
    };
    $.ajax({
            type: "GET",
            url: "/api/menu",
            data: sendData,
            statusCode: {
                200: function (menu) {
                    console.log(menu);
                    let tmpStr = $('#menuView').html();


                    if (menu.length === 0) {
                    } else {
                        $.each(menu, function (i, v) {
                            tmpStr = tmpStr.replace("{menuName}", v.menu_name);
                        });
                        tmpStr = tmpStr.replaceAll("{menuName}", " ");
                        $('#menuView').html(tmpStr);
                    }
                }
            }
        }
    )
}