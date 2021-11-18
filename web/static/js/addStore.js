function addStore() {
    //let serializedStore = $("#storeInfo_form").serialize()
    $.ajax({
        url: '/api/stores',
        method: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({
            store_name: $('#store_name').val(),
            store_address: $('#store_address').val(),
            store_phone: $('#store_phone').val()
        }),
        statusCode: {
            200: function () {
                window.location.href = '/pages/stores';
            },
            404: function () {
                window.location.href = '/pages/home';
            }
        }
    })
}
