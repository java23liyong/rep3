<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>用户登录</title>

    <link href='/static/img/admin_index.png' rel='shortcut icon' type='image/x-icon'>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet" />

    <style type="text/css">
        body {
            background:#1b6d85;
            background-size: 100%;
        }
        .container {
            width: 300px;
            height: 200px;
            margin-top: 150px;
        }
        .error-msg {
            color: red;
            font-size: 12px;
            display: none;
        }
        .error{
            color: red;
        }
    </style>
    <script>
        window.onload= function () {  //所有页面加载完后再来执行js代码
            document.getElementById("form").onsubmit= function () {  //为表单添加提交验证，只有验证各项都为true才可提交给服务器表单
                //调用用户名验证方法
                //调用密码验证方法
                //....等等

                return checkUserName() && checkPassword();
            }



            //为用户名和密码框绑定焦点移除事件
            document.getElementById("username").onblur=checkUserName;//对象。不能加括号
            document.getElementById("password").onblur=checkPassword;//对象。不能加括号
        }

        //1.用户名验证方法。
        function checkUserName(){

            //1.获取用户名文本框的值
            var str = document.getElementById("username").value;
            //2.定义正则表达式
            var reg_username = /^\w{3,10}$/;

            //3.判断值是否符合正则的规则
            var flag = reg_username.test(str);
            //4.根据判断结果做出相应提示
            var s_username = document.getElementById("s_username"); //获取span
            if (flag){
                //提示一个对勾
                //s_username.innerHTML="<img src='/static/img/gou.png'>";
            }else{
                //提示红色用户名有误
                s_username.innerHTML="用户名必须为3~10位字母组成！";
            }




            return flag;

        }



        //2.密码验证方法
        function checkPassword(){


            //1.获取用户名文本框的值
            var password = document.getElementById("password").value;
            //2.定义正则表达式
            var reg_password = /^\d{2,8}$/;


            //3.判断值是否符合正则的规则
            var flag = reg_password.test(password);
            //4.根据判断结果做出相应提示
            var s_passsword = document.getElementById("s_passsword"); //获取span
            if (flag){
                //提示一个对勾
                //s_passsword.innerHTML="<img src='/static/img/gou.png'>";
            }else{
                //提示红色用户名有误
                s_passsword.innerHTML="密码必须为2~8位数字！";
            }



            return flag;

        }
    </script>
</head>
<body>

<div class="container">
    <form class="form-signin" action="/user/stulogin" method="post" id="form">
        <h2 class="form-signin-heading" style="color:white;" align="center">用户登录</h2>

        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="username" name="account" class="form-control" placeholder="账号" required autofocus />
        <span id="s_username" class="error"></span>
        <br />

        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="password" name="pwd" class="form-control" placeholder="密  码" required />
        <span id="s_passsword" class="error"></span>
        <br />

        <select name="radioRemeber">
            <option>---请选择---</option>
            <option value="1">管理员</option>
            <option value="2">教师</option>
        </select>
        <br />
        <button class="btn btn-lg btn-primary btn-block" type="submit" id="adminSign">登录</button>

    </form>



    <center>
        <c:if test="${not empty msg}">
            ${msg}
        </c:if>
    </center>

</div>

<!-- js引入 -->
<script src="/static/js/jquery-3.2.1.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/login.js"></script>
</body>
</html>
