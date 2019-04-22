function validate_insertTU() {
    var num = document.getElementById("dongia").value;
    var tentu = document.getElementById("tentu").value;
    var mota = document.getElementById("mota").value;
    var manl = document.getElementById("manl").value;
    var image = document.getElementById("image").value;
    if (isNaN(num)) {
        document.getElementById("numloc").innerHTML = "Chỉ nhập giá trị số.";
        document.getElementById("errorten").innerHTML = "";
        document.getElementById("errormota").innerHTML = "";
        document.getElementById("errormanl").innerHTML = "";
        document.getElementById("errorimage").innerHTML = "";
        return false;
    } else
    if (tentu == null || tentu==""){
        document.getElementById("numloc").innerHTML = "";
        document.getElementById("errorten").innerHTML = "Bắt buộc nhập tên thức uống.";
        document.getElementById("errormota").innerHTML = "";
        document.getElementById("errormanl").innerHTML = "";
        document.getElementById("errorimage").innerHTML = "";
        return false;
    } else
    if (mota == null || mota==""){
        document.getElementById("numloc").innerHTML = "";
        document.getElementById("errorten").innerHTML = "";
        document.getElementById("errormota").innerHTML = "Bạn chưa nhập mô tả.";
        document.getElementById("errormanl").innerHTML = "";
        document.getElementById("errorimage").innerHTML = "";
        return false;
    } else
    if (manl == null || manl==""){
        document.getElementById("numloc").innerHTML = "";
        document.getElementById("errorten").innerHTML = "";
        document.getElementById("errormota").innerHTML = "";
        document.getElementById("errormanl").innerHTML = "Mã nguyên liệu chưa được thêm";
        document.getElementById("errorimage").innerHTML = "";
        return false;
    } else
    if (image == null || image==""){
        document.getElementById("numloc").innerHTML = "";
        document.getElementById("errorten").innerHTML = "";
        document.getElementById("errormota").innerHTML = "";
        document.getElementById("errormanl").innerHTML = "";
        document.getElementById("errorimage").innerHTML = "Image chưa được thêm!";
        return false;
    } else {
        return true;
    }
}