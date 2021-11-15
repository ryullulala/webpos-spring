function loginCheck() {
    $.ajax({
        type: "GET",
        url: "/api/login",
        data: { "user_id" : $('#user_id').val(),
                "user_pw" : $('#user_pw').val()},
        dataType: "json",
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

