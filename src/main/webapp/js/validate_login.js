function validateform() {
    var name = document.myform.username.value;
    var password = document.myform.password.value;

    if (name == null || name == "") {
        alert("UserName không được bỏ trống!");
        return false;
    } else if (password.length < 5) {
        alert("Mật khẩu phải chứa ít nhất 5 kí tự!");
        return false;
    }
}