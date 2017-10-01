<%--
  Created by IntelliJ IDEA.
  User: Yan
  Date: 2017/9/4
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>英语在线学习管理系统</title>
    <!--让IE用最新模式渲染,获得更好的效果-->
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap.min.css">
    <script src="./script/jquery-1.11.0.min.js"></script>
    <script src="./bootstrap/js/bootstrap.min.js"></script>
    <style>
        #main{
            max-width:100%;
            margin:auto;
            border: 1px solid red;
        }
        .cus-nav{
            max-height:50px;
            line-height: 50px;
        }
        .cus-nav img{
            display: inline-block;
            vertical-align: middle;
        }
        .cus-second{
            background: #BE9E7F;
            height:40px;
            line-height: 40px;
            text-align: center;
        }
        .cus-second a{
            color: #fff;
            font-size: 16px;
            font-family: "微软雅黑";
        }
        .cus-second .col-xs-2{
            border-right: 1px solid #fff;
        }
        .cus-intro .panel-body p{
            text-indent: 2em;
        }
        .cus-hot .panel-body{
            text-align: center;
        }
        .cus-hot span{
            font-size: 13px;
        }
        .cus-copy{
            height:80px;
            line-height:80px;
            text-align: center;
        }
        .cus-copy p{

            text-align: center;
        }

        .cus-foot{
            background: #BE9E7F;
            text-align: center;
            height: 40px;
            line-height:40px;
            max-width: 640px;
            margin:auto
        }
        .cus-foot div{
            border-right: 1px solid #fff;
        }
        #myCourse{
            margin-top: 10px;
        }
    </style>
</head>
<body>
<!-- 整个内容居中container -->
<div class="container" id="main">


    <!--头部logo区域开始-->
    <div class="row cus-nav">
        <div class="col-xs-4 col-sm-4">
            <a href="#">
                <img src="./img/logo.png" class="img-responsive">
            </a>
        </div>

        <div class="col-xs-offset-4 col-xs-4 col-sm-offset-4 col-sm-4">
            <span class="glyphicon glyphicon-phone-alt"> <a href="tel:010 5718 0327"> 010-12345678 </a></span>

            <span class="glyphicon glyphicon-user"><a href="test.action"> 登录 </a></span>

            <!-- 登录的模态图开始。。。。。。。 -->
            <div class="modal fade" id="MyLogin">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                            <h4>登录网站</h4>
                        </div>

                        <div class="modal-body">
                            <form action="" method="post" class="">
                                <div class="form-group">
                                    <label for="username">用户名</label>
                                    <input type="text" class="form-control" id="username" placeholder="请输入用户名...">
                                </div>

                                <div class="form-group">
                                    <label for="Password">密码</label>
                                    <input type="password" class="form-control" id="Password" placeholder="输入密码...">
                                </div>

                                <div class="form-group">
                                    <label for="identity">身份</label>
                                    <select class="form-control" id="identity">
                                        <option value="1">学生</option>
                                        <option value="2">老师</option>
                                        <option value="3">管理员</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">记住我
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <input type="submit" class="form-control btn btn-success btn-block" value="登录">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 登录的模态图结束。。。。。。。 -->

            <span class="glyphicon glyphicon-user"><a href="#Myabout" data-toggle="modal"> 关于我们</a></span>

            <!-- 关于的模态图开始。。。。。。。 -->
            <div class="modal fade" id="Myabout">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                            <h4>关于本网站</h4>
                        </div>
                        <div class="modal-body">
                            <p>为了营造一个良好的学习氛围环境，同时也为了激励我们做出更好地内容，故本网站部分内容属于VIP性质，只有注册并升级为VIP用户，才可以使用，对此造成的不便，敬请谅解！</p>
                        </div>
                        <div class="modal-footer">
                            <a class="btn btn-default" data-dismiss="modal">取消</a>
                            <a class="btn btn-primary" data-dismiss="modal">确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 关于的模态图结束。。。。。。。 -->

        </div>
    </div>
    <!--头部logo区域结束-->


    <!--导航菜单开始-->
    <div class="row cus-second">
        <div class="col-xs-2 col-lg-2">
            <a href="#">首页</a>
        </div>
        <div class="col-xs-2 col-lg-2">
            <a href="#">中小学英语</a>
        </div>
        <div class="col-xs-2 col-lg-2">
            <a href="#">高中英语</a>
        </div>
        <div class="col-xs-2 col-lg-2">
            <a href="#">考研英语</a>
        </div>
        <div class="col-xs-2 col-lg-2">
            <a href="#">等级英语</a>
        </div>
        <div class="col-xs-2 col-lg-2">
            <a href="#">商务英语</a>
        </div>
    </div>
    <!--导航菜单结束-->


    <!-- 轮播图开始 -->
    <div class="row">
        <div class="carousel slide" id="myCarousel">
            <!--标识符部分-->
            <ul class="carousel-indicators">
                <li class="active"  data-target="#myCarousel" data-slide-to="0"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner">
                <div class="item active">
                    <img src="./img/slide001.jpg" class="img-responsive center-block">

                </div>
                <div class="item">
                    <img src="./img/slide002.jpg" class="img-responsive center-block">

                </div>
                <div class="item">
                    <img src="./img/slide003.jpg" class="img-responsive center-block">
                </div>
            </div>
            <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>
    <!-- 轮播图结束 -->


    <div class="row">
        <!-- 左边区域开始 -->
        <div class="left col-xs-12 col-sm-9 col-lg-9">

            <!--公司介绍开始-->
            <div class="row cus-intro" >
                <div class="panel panel-default" style="margin-top: 10px;margin-left: 0px; pull-left">
                    <div class="panel-heading">
                        公司简介
                    </div>
                    <div class="panel-body">
                        <p>
                            爱英语爱学习是同济大学杜老师带领学生创立的一个英语在线教育平台，该平台主要服务于九年制教育的学生，考研、考博党，备战雅思托福以及学习商务英语的人群，通过精品课程和学习资料的方式帮助他们更好地学习英语。
                            完成阶段性的目标，最终达到快乐学习英语的目的。
                        </p>
                    </div>
                </div>
            </div>


            <!--热门课程-->
            <div class="row cus-hot">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        热门课程
                        <p class="pull-right"><a href="#" style="text-decoration:none;">更多</a></p>
                    </div>

                    <div class="panel-body">
                        <div class="col-xs-4 col-sm-3">
                            <a href="#" class="thumbnail">
                                <img src="./img/002.jpg">
                                <span>英语单词轻松记</span>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <a href="#" class="thumbnail">
                                <img src="./img/003.jpg">
                                <span>30天搞定阅读理解</span>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <a href="#" class="thumbnail">
                                <img src="./img/004.jpg">
                                <span>朱伟老师的“念念有词”</span>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <a href="#" class="thumbnail">
                                <img src="./img/002.jpg">
                                <span>英语句式娓娓道来</span>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <a href="#" class="thumbnail">
                                <img src="./img/003.jpg">
                                <span>英语作文是这样写的</span>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <a href="#" class="thumbnail">
                                <img src="./img/004.jpg">
                                <span>口语是怎么炼成的</span>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <a href="#" class="thumbnail">
                                <img src="./img/002.jpg">
                                <span>英语听力真的很难吗？</span>
                            </a>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <a href="#" class="thumbnail">
                                <img src="./img/004.jpg">
                                <span>背单词，看我的</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!--最新资料-->
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        最新资料
                        <p class="pull-right"><a href="#" style="text-decoration:none;">更多</a></p>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <a href="#">中考英语知识点详解</a>

                        </li>
                        <li class="list-group-item">
                            <a href="#">高考英语历年考点详解</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#">考研英语核心词汇总结</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#">四六级英语作文模板</a>
                        </li>
                        <li class="list-group-item">
                            <a href="#">商务英语经典句式</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 左边区域结束 -->


        <!-- 右边区域开始 -->
        <div class="right col-sm-3  col-lg-3 hidden-xs" >
            <div class="list-group" >
                <h1 class="list-group-item" id="myCourse">课程分类<p class="pull-right text-center"><a href="#" style="text-decoration:none;font-size:20px;">更多</a></p></h1>
                <a href="#" class="list-group-item list-group-item-success">英语单词<span class="badge">19</span></a>
                <a href="#" class="list-group-item">阅读理解<span class="badge">50</span></a>
                <a href="#" class="list-group-item">口语和听力<span class="badge">42</span></a>
                <a href="#" class="list-group-item">语法和句式<span class="badge">24</span></a>
                <a href="#" class="list-group-item">书面作文<span class="badge">30</span></a>
            </div>

            <div class="list-group">
                <h1 class="list-group-item" >资料分类<p class="pull-right text-center"><a href="#" style="text-decoration:none;font-size:20px;">更多</a></p></h1>
                <a href="#" class="list-group-item list-group-item-success">英语单词<span class="badge">233</span></a>
                <a href="#" class="list-group-item">阅读理解<span class="badge">250</span></a>
                <a href="#" class="list-group-item">口语和听力<span class="badge">180</span></a>
                <a href="#" class="list-group-item">语法和句式<span class="badge">100</span></a>
                <a href="#" class="list-group-item">书面作文<span class="badge">192</span></a>
            </div>

            <div class="list-group">
                <h1 class="list-group-item">阅读排行<p class="pull-right text-center"><a href="#" style="text-decoration:none;font-size:20px;">更多</a></p></h1>
                <a href="#" class="list-group-item list-group-item-success">英语单词<span class="badge">1</span></a>
                <a href="#" class="list-group-item">阅读理解<span class="badge">2</span></a>
                <a href="#" class="list-group-item">口语和听力<span class="badge">3</span></a>
                <a href="#" class="list-group-item">语法和句式<span class="badge">4</span></a>
                <a href="#" class="list-group-item">书面作文<span class="badge">5</span></a>
            </div>
        </div>
        <!-- 右边区域结束 -->

    </div>


    <!--版权声明-->
    <div class="row cus-copy" style="background: #BE9E7F;padding: 10px auto;">
        <p>Copyright © 2017/7/31 爱学习爱英语
        </p>
    </div>

</div>
</body>
</html>