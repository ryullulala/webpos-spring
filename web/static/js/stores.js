$(document).ready(function () {
    $.ajax({
        url: "/api/stores", // 요청이 전송될 URL 주소
        type: "GET", // http 요청 방식 (default: ‘GET’)
        statusCode: {
            200:
                function (data) {
                    var stores = data
                    console.log(stores);
                    var tmpHtml = $('#tmpData').text();
                    var dataHtml = '';

                    if (stores.length == 0) { //매장 리스트가 없을때
                        dataHtml = $('#noResult').text();
                    } else {
                        var tmp = '';
                        $.each(stores, function (i, v) {
                            tmp = tmpHtml;
                            tmp = tmp.replace('{storeName}', v.store_name);
                            tmp = tmp.replace('{storeId}', v.store_id);
                            dataHtml += tmp;
                        });
                    }
                    $('#storeList > tbody').html(dataHtml);
                }
        }
    });
});