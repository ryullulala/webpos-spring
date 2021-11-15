function addStore() {
    let serializedStore = $("#storeInfo_form").serialize()
    console.log(serializedStore)
    $.ajax({
        url: '/api/stores',
        contentType: 'application/json',
        method: 'POST',
        data: JSON.stringify(serializedStore),
        statusCode: {
            200: function () {
                window.location.href = '/pages/stores';
            }
        }
    })
}
