<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">  
    <html>  
        <head>  
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
            <title>多选框</title>  
    <script>  
        function $A(name){return document.getElementsByTagName("input");}  
        window.onload=function(){  
            /**  
             * 复选框限制  
             * @param {Object} name 复选框的name  
             * @param {Object} maxck 最多复选个数  
             */  
            function checks(name,maxck){  
                var cks = $A(name);  
                function check(){  
                    var t=0;  
                    for(i=0;i<cks.length;i++){  
                        if(cks[i].checked){t++;}  
                        if(t>maxck){return false;}  
                    }  
                    return true;  
                }  
                for(i=0;i<cks.length;i++){  
                    cks[i].onclick=function(){  
                        if(!check()){  
                            alert("最多选择"+maxck+"个");  
                            this.checked=false;  
                        }  
                    }  
                }  
                  
            }  
              
            checks("ck",3);  
            //这里如果加入对ck2的检测也可以避免6个以上  
            //checks("ck2",6);     
            document.form1.onsubmit=function(){  
                var t=0;  
                var maxck=6;  
                var ck2=$A("ck2")  
                for(i=0;i<ck2.length;i++){  
                    if(ck2[i].checked){t++;}  
                    if(t>maxck){  
                        this.action="http://www.baidu.com";  
                    }  
                }  
                return true;  
            }  
        }  
    </script>       
      
        </head>  
        <body>  
              
    <form name="form1" method="post" action="http://www.g.cn">  
    对这个限制3个选择<br>  
    <input type="text" />
    <span><input type="CHECKBOX" name="ck" value="A">A  </span>
    <span><input type="CHECKBOX" name="ck" value="B">B  </span>
    <span><input type="CHECKBOX" name="ck" value="C">C  </span>
    <span><input type="CHECKBOX" name="ck" value="D">D  </span>
    <span><input type="CHECKBOX" name="ck" value="E">E  </span>
    <span><input type="CHECKBOX" name="ck" value="F">F  </span>
    <span><input type="CHECKBOX" name="ck" value="G">G  </span>
    <span><input type="CHECKBOX" name="ck" value="H">H  </span>
    <span><input type="CHECKBOX" name="ck" value="I">I  </span>
    <span><input type="CHECKBOX" name="ck" value="J">J  </span>
    <br>  

<!-->
    对这个限制6个提交,<=6个到www.g.cn   >6个到www.baidu.com<br>  
    <input type="CHECKBOX" name="ck2" value="A">A  
    <input type="CHECKBOX" name="ck2" value="B">B  
    <input type="CHECKBOX" name="ck2" value="C">C  
    <input type="CHECKBOX" name="ck2" value="D">D  
    <input type="CHECKBOX" name="ck2" value="E">E  
    <input type="CHECKBOX" name="ck2" value="F">F  
    <input type="CHECKBOX" name="ck2" value="G">G  
    <input type="CHECKBOX" name="ck2" value="H">H  
    <input type="CHECKBOX" name="ck2" value="I">I  
    <input type="CHECKBOX" name="ck2" value="J">J  
    <input type="submit" value="确定">  
-->
    </form>  
        </body>  
    </html>  
