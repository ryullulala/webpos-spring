function deleteStore(storeId) {
    $.ajax({
        url: '/api/stores',
        method: 'DELETE',
        contentType: 'application/json',
        data: JSON.stringify({storeId : storeId}),
        statusCode: {
            200: function () {
                window.location.href = '/stores';
            },
            404: function () {
                window.location.href = '/home';
            }
        }
    })
}
