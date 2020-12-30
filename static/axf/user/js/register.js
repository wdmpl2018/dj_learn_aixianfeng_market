$(function (){

    var $username = $("#username_input");
    
        $username.change(function (){
            var username = $username.val().trim();

            if (username.length){
            
                // 将用户名发给服务器验证；
                $.getJSON("/axf/checkuser/", {"username": username}, function(data){
                            console.log(data)
                            var $username_info = $("#username_info");
                            if (data['status'] == 200){
                                $username_info.html("用户名可用").css("color","green");
                            }else if (data['status'] == 901) {
                                $username_info.html("用户名不可用").css("color","red");
                            }
                            
                            
                })
        }
    })
})

function check() {

    // 根据输入框的文本值为空时，不让提交 ；

    var $username1 = $('#username_input');
    var  username_text = $username1.val().trim();

    var username_info = $('#username_info');

    if (!username_text) {
        username_info.html('用户名不能为空').css('color', 'red');
        return false;
    }

    //根据检验提示颜色为红色时，不让提交；
    var info_color = $('#username_info').css('color');
     console.log(info_color);

     if (info_color == "rgb(255, 0, 0)") {
        return false;
     }
    
    //  //  以下3行为密码提交加密，通过MD5的方式
    // var $passwd_input = $("#password_input");

    // var password = $passwd_input.val().trim();

    // $passwd_input.val(md5(password));

    return true;
}