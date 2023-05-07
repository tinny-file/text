var is_show = true;
var password = document.getElementById("password");
var password1 = document.getElementById("password1");
var eyes_img = document.getElementById("img");
var eyes_img1 = document.getElementById("img1");
function change(){
    if(is_show){
        password.type = "text";
        is_show = false;
        eyes_img.src = "images/eyes_open.png";
    }else{
        password.type = "password";
        is_show = true;
        eyes_img.src = "images/eyes_close.png";
    }
}
function change1(){
    if(is_show){
        password1.type = "text";
        is_show = false;
        eyes_img1.src = "images/eyes_open.png";
    }else{
        password1.type = "password";
        is_show = true;
        eyes_img1.src = "images/eyes_close.png";
    }
}