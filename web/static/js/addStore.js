function addStore() {
    // var test = {"store_name" : "adf",
    //             "store_address" : "where",
    //             "store_phone" : "112",
    //             "user_id" : "ryul"}
    var test = $("#storeInfo_form").serialize();
    $.ajax({
        url : '/api/stores',
        contentType : 'application/json',
        method : 'POST',
        data : JSON.stringify(test),
        success : function () {
            location.href = '/pages/stores'
        }
    });
}
