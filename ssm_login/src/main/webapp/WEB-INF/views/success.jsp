
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登录成功</title>

    <style>
        span{
            color: red;

        }
        p{
            text-align: center;
            font-size: 20px;
            margin-top: 50px;
        }
    </style>
</head>
<body>

<p>
    恭喜您，登录成功！
   <span id="time">3</span>秒之后，将自动跳转首页.....
</p>




<script>
    var num = 3;
    function fun(){
        num--;
        if(num<=0){
            location.href="/user/index";
        }
        var time = document.getElementById("time");
        time.innerHTML=num;
    }

    setInterval(fun,1000);
</script>
</body>
</html>
