<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
  <script src="images/js/jquery.min.js"></script>
  <script src="images/js/check.js"></script>
  <script>
  $(document).ready(function(){
    $("#Submit").click(function get_mobile(){
        var mcode=Math.round(Math.random()*10000);
        $.get("index.php?mobile="+$("#mobile").val()+"&mcode="+mcode,function(data){
//          alert(data);
       
        });
       
        $("#yanzheng").click(function get_code(){
        $.get("index.php?code="+$("#code").val(),function(data){
//          alert(mcode);
            if (mcode==$("#code").val())
            {
                alert('验证码正确，请继续！');
            }
            else{
                alert('验证码错误');
            }
        });
    });
    });
       
var test = {
       node:null,
       count:60,
       start:function(){
          //console.log(this.count);
          if(this.count > 0){
             this.node.innerHTML = this.count--;
             var _this = this;
             setTimeout(function(){
                _this.start();
             },1000);
          }else{
             this.node.removeAttribute("disabled");
             this.node.innerHTML = "再次发送";
             this.count = 60;
          }
       },
       //初始化
       init:function(node){
          this.node = node;
          this.node.setAttribute("disabled",true);
          this.start();
       }
    };
    var btn = document.getElementById("Submit");
    btn.onclick = function(){
       alert("验证信息会发送到"+$("#mobile").val());
       test.init(btn);
    };
  });
 </script>
 </HEAD>
 <BODY>
  <p>手机号：<input type="text" name="mobile" value="" id="mobile" onblur="check_mobile(this.value)"/><span id="mobile_notice"></span></p>
  <p>验证码：<input type="text" name="code" value="" id="code"/><button id="Submit">获取验证码</button></p>
<input type="submit" name="yanzheng" value="下一步" id="yanzheng" />
 </BODY>
