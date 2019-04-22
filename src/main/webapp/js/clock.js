function  dongho() {
    var time = new Date();
    var  gio = time.getHours();
    var phut = time.getMinutes();
    var giay = time.getSeconds();
    if(phut < 10)
        phut = "0" + phut;
    if(giay < 10)
        giay = "0" + giay;
    if(gio < 10)
        gio = "0" + gio;
    document.getElementById("time").innerHTML = gio +":" + phut + ":" +giay;
    setTimeout("dongho()",1000);
}
