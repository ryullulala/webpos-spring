function loginCheck() {
    let loginData = {
        "user_id": $('#user_id').val(),
        "user_pw": $('#user_pw').val()
    };
    $.ajax({
        type: "GET",
        url: "/api/login",
        data: loginData,
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

