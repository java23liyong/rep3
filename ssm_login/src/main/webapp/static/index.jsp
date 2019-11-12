<%@ page import="com.itssm.domain.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<c:set var="path" value="<%=basePath%>"></c:set>
<!DOCTYPE html>

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>首页</title>


    <!-- Bootstrap -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="static/js/jquery-3.2.1.min.js"></script>

    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="static/js/bootstrap.min.js"></script>
</head>
<%
    Student studentInfo = (Student)session.getAttribute("stuInfo");
%>
<body>
<!--1.页眉部分-->
<header class="container">


    <div class="row" style="margin-top: 9px">
        <div class="col-md-3">
            <a href="#">
                <img src="static/img/logo.png" width="290px"/>
            </a>
        </div>
        <div class="col-md-9" style="margin-top: 4px">
            <!--导航栏-->
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <!--定义汉堡按钮-->
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.jsp">首页</a>


                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="http://www.ciscn.cn/competitioncharter">考试章程 <span class="sr-only">(current)</span></a></li>
                            <li><a id="examCenter-link" href="https://www.ppkao.com/zhinan/">考试指南</a></li>
                            <li><a href="http://www.ciscn.cn/supportedby">支持单位</a></li>
                            <li><a href="http://www.ciscn.cn/forum">专家指导</a></li>
                            <li><a href="http://www.ciscn.cn/school">校企合作</a></li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">强大功能  <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">action</a></li>
                                    <li><a href="#">Something</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Separated</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">separated</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!--<form class="navbar-form navbar-left">
                          <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                          </div>
                          <button type="submit" class="btn btn-default">Submit</button>
                        </form>-->
                        <ul class="nav navbar-nav navbar-right">
                            <%
                                if(studentInfo!=null){
                            %>
                           <%-- <li style="margin-right: 20px">
                                <a>
                                    <%=studentInfo.getStuName()%>
                                </a>
                            </li>--%>
                            <li class="dropdown" style="margin-right: 20px">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%=studentInfo.getStuName()%> <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/user/clearSession">安全退出</a></li>

                                </ul>
                            </li>
                            <%
                            }else {
                            %>
                                <li><a href="/user/login" >登录</a></li>
                                <li><a href="/user/register">注册</a></li>
                            <%
                                }
                            %>
                                <li><a href="/admin/login">登录后台</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>

    </div>

    <!--轮播图-->
    <div class="row">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">

                <div class="item active">
                    <img src="static/img/banner1.png" alt="...">

                </div>

                <div class="item">
                    <img src="static/img/banner2.jpg" alt="...">

                </div>

                <div class="item">
                    <img src="static/img/banner3.jpg" alt="...">

                </div>

            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <script>
        $('.carousel').carousel({

            interval: 2000

        })
    </script>
</header>






<!--2.主体部分-->
<div class="container" style="margin-top: 15px;">

    <div class="row">
        <div class="col-md-7">

            <div class="row" style="background-color: blue;">
                <img src="static/img/clock.png" style="float: left;"/>
                <div><font size="5" color="white">&nbsp;精彩回顾</font></div>

            </div>

            <div class="row">
                <div style="margin-top:30px;"><hr color="whitesmoke"/></div>
                <div>
                    <font size="5" face="新宋体" ><center>第十届学佳培训机构在线考试集锦</center></font>
                </div>
                <video src="static/videos/vo.mp4" width="700" height="404" controls="controls"></video>
            </div>
        </div>

        <div class="col-md-1">

        </div>
        <div class="col-md-4">
            <div class="row" style="background-color:blue;">
                <img src="static/img/clock.png" style="float: left;"/>
                <div><font size="5" color="white">&nbsp;最新公告</font></div>
            </div>
            <div class="row" >
                <ul class="nav navbar-nav">
                    <li><a href="#">[考试通知]&nbsp;第一届全国大学生信息安全竞赛-创新实践能力赛总决赛成绩和奖项</a></li>
                    <li><a href="#">[考试通知]&nbsp;第二届全国大学生信息安全竞赛-创新实践能力赛总决赛成绩和奖项</a></li>
                    <li><a href="#">[考试通知]&nbsp;第三届全国大学生信息安全竞赛-创新实践能力赛总决赛成绩和奖项</a></li>
                    <li><a href="#">[考试通知]&nbsp;第四届全国大学生信息安全竞赛-创新实践能力赛总决赛成绩和奖项</a></li>
                    <li><a href="#">[考试通知]&nbsp;第五届全国大学生信息安全竞赛-创新实践能力赛总决赛成绩和奖项</a></li>
                    <li><a href="#">[考试通知]&nbsp;第六届全国大学生信息安全竞赛-创新实践能力赛总决赛成绩和奖项</a></li>
                    <li><a href="#">[考试通知]&nbsp;第七届全国大学生信息安全竞赛-创新实践能力赛总决赛成绩和奖项</a></li>

                </ul>
            </div>
        </div>
    </div>


    <div class="row" style="margin-top: 40px;">
        <div class="row" style="background-color: blue;">
            <img src="static/img/hezuo.png" style="float: left;"/>
            <div><font size="5" color="white">&nbsp;合作高校</font></div>

        </div>

        <div class="row" >
            <div class="col-md-2" style="padding-top: 15px;">
                <img src="static/img/x1.jpg" style=" width:100px; height: 100px;" />
                <p style="margin:10px 0 0 20px;">
                    <a href="http://www.ahu.edu.cn/" arget="_blank" style="color:#333;"> 安徽大学</a>
                </p>

            </div>



            <div class="col-md-2" style="padding-top: 15px;">
                <img src="static/img/x2.jpg" style=" width: 100px; height: 100px;" />
                <p style="margin:10px 0 0 20px;">
                    <a href="http://www.ahu.edu.cn/" arget="_blank" style="color:#333;"> 南京大学</a>
                </p>

            </div>

            <div class="col-md-2" style="padding-top: 15px;">
                <img src="static/img/x3.png" style=" width: 100px; height: 100px;" />
                <p style="margin:10px 0 0 20px;">
                    <a href="http://www.ahu.edu.cn/" arget="_blank" style="color:#333;"> 北京大学</a>
                </p>

            </div>

            <div class="col-md-2" style="padding-top: 15px;">
                <img src="static/img/x4.jpg" style=" width: 100px; height: 100px;" />
                <p style="margin:10px 0 0 20px;">
                    <a href="http://www.ahu.edu.cn/" arget="_blank" style="color:#333;"> 清华大学</a>
                </p>

            </div>

            <div class="col-md-2" style="padding-top: 15px;">
                <img src="static/img/x5.jpg" style=" width: 100px; height: 100px;" />
                <p style="margin:10px 0 0 20px;">
                    <a href="http://www.ahu.edu.cn/" arget="_blank" style="color:#333;"> 牛津大学</a>
                </p>

            </div>

            <div class="col-md-2" style="padding-top: 15px;">
                <img src="static/img/x6.jpg" style=" width: 100px; height: 100px;" />
                <p style="margin:10px 0 0 20px;">
                    <a href="http://www.ahu.edu.cn/" arget="_blank" style="color:#333;"> 哈弗大学</a>
                </p>

            </div>
        </div>
    </div>
</div>










<!--3.页脚部分-->
<div style="margin-left: 10.5%;margin-top: 30px;">

    <img src="static/img/footer_service.png" width="88.5%"/>

</div>
<div class="row" style="margin-top: 10px;">
    <p style="text-align: center;">第十届学佳培训机构在线考试系统 &copy;Copyright 2019&nbsp;未来之星小组出品</p>
</div>


</body>
</html>

