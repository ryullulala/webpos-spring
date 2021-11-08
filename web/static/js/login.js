function loginCheck() {
    var userId = $('#user_id').val();
    var userPw = $('#user_pw').val();
    $.ajax({
        type: "GET",
        url: "/api/login",
        data: "user_id=" + userId + "&user_pw=" + userPw,
        dataType: "json",
        success: function (data) {
            if (data.resultCode == 1) {
                window.location.href = '/pages/stores';
            } else if (resultCode == 0) {
            }
        }
    })
}