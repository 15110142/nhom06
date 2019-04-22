function  validate_customer() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;
    var address = document.getElementById("address").value;
    if(name == null || name == ""){
        document.getElementById("loiemail").innerHTML ="";
        document.getElementById("loiphone").innerHTML ="";
        document.getElementById("loiaddress").innerHTML ="";
        document.getElementById("loiname").innerHTML = "Vui lòng nhập tên!";
        return false;
    }
    else
        if(email == null || email == "") {
            document.getElementById("loiemail").innerHTML ="Vui lòng nhập email!";
            document.getElementById("loiphone").innerHTML ="";
            document.getElementById("loiaddress").innerHTML ="";
            document.getElementById("loiname").innerHTML = "";
            return false;
        }
        else
            if(phone == null || phone == ""){
                document.getElementById("loiemail").innerHTML ="";
                document.getElementById("loiphone").innerHTML ="Vui lòng nhập số điện thoại!";
                document.getElementById("loiaddress").innerHTML ="";
                document.getElementById("loiname").innerHTML = "";
                return false;
            }
            else
                if(address == null || address == ""){
                    document.getElementById("loiemail").innerHTML ="";
                    document.getElementById("loiphone").innerHTML ="";
                    document.getElementById("loiaddress").innerHTML ="Vui lòng nhập địa chỉ!";
                    document.getElementById("loiname").innerHTML = "";
                    return false;
                }
                else {
                return true;
                }
}