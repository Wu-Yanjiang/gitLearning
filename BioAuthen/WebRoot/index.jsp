<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>基于生物识别的可信身份认证平台</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        body {
            padding-top: 50px;
            padding-bottom: 40px;
            color: #5a5a5a;
        }

        /* 轮播广告 */

        .carousel {
            height: 650px;
            margin-bottom: 60px;
        }

        .carousel .item {
            height: 650px;
            background-color: #000;
        }

        .carousel .item img {
            width: 100%;
        }

        .carousel-caption {
            z-index: 10;
        }

        .carousel-caption p {
            margin-bottom: 20px;
            font-size: 20px;
            line-height: 1.8;
        }

        /* 简介 */

        .summary {
            padding-right: 15px;
            padding-left: 15px;
        }

        .summary .col-md-6 {
            margin-bottom: 20px;
            text-align: center;
        }

        /* 特性 */

        .feature-divider {
            margin: 40px 0;
        }

        .feature {
            padding: 30px 0;
        }

        .feature-heading {
            font-size: 50px;
            color: #2a6496;
        }

        .feature-heading .text-muted {
            font-size: 28px;
        }
    </style>
</head>


<body>
<!-- 顶部导航 -->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="menu-nav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">基于生物识别的可信身份认证平台</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#ad-carousel">综述</a></li>
                <li><a href="#summary-container">简述</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">特点 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#feature-tab" data-tab="tab-finger">指纹识别</a></li>
                        <li><a href="#feature-tab" data-tab="tab-face">人脸识别</a></li>
                        <li><a href="#feature-tab" data-tab="tab-aboutUs">关于我们</a></li>
                        <li><a href="#">更多...</a></li>
                    </ul>
                </li>
                <li><a href="#" data-toggle="modal" data-target="#about-modal">关于</a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                
                <!--bootstrap的导航条默认的是不跳转本界面以外的其他界面的-->
                <!--此处不进行相应的js代码的修改是无法直接跳转到登录的-->
                <li class="active"><a href="#summary-container">登录</a></li>

            </ul>
        </div>
    </div>
</div>


<!-- 广告轮播 -->
<div id="ad-carousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
        <li data-target="#ad-carousel" data-slide-to="1"></li>
        <li data-target="#ad-carousel" data-slide-to="2"></li>
        <li data-target="#ad-carousel" data-slide-to="3"></li>
        <li data-target="#ad-carousel" data-slide-to="4"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/standard4.jpeg" alt="1 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>指纹识别</h1>

                    <p>指纹识别，由于其具有终身不变性、唯一性和方便性，已几乎成为生物特征识别的代名词</p>

                    <p><a class="btn btn-lg btn-primary" href="https://baike.baidu.com/item/%E6%8C%87%E7%BA%B9%E8%AF%86%E5%88%AB/206264?fr=aladdin"
                          role="button" target="_blank">点我了解更多</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="images/standard6.jpeg" alt="2 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>虹膜识别</h1>

                    <p>人的眼睛结构由巩膜、虹膜、瞳孔晶状体、视网膜等部分组成。虹膜是位于黑色瞳孔和白色巩膜之间的圆环状部分，其包含有很多相互交错的斑点、细丝、冠状、条纹、隐窝等的细节特征</p>

                    <p><a class="btn btn-lg btn-primary" href="https://baike.baidu.com/item/%E8%99%B9%E8%86%9C%E8%AF%86%E5%88%AB%E6%8A%80%E6%9C%AF/1530077?fr=aladdin&fromid=2251802&fromtitle=%E8%99%B9%E8%86%9C%E8%AF%86%E5%88%AB" target="_blank"
                          role="button">点我了解更多</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="images/standard7.jpeg" alt="3 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>掌静脉识别</h1>

                    <p>静脉是导血回心的血管，起于毛细血管，止于心房，表浅静脉在皮下可以看见。掌静脉，顾名思义，就是手掌内静脉。掌静脉识别是静脉识别的一种，属于生物识别的一种</p>

                    <p><a class="btn btn-lg btn-primary" href="https://baike.baidu.com/item/%E6%8E%8C%E9%9D%99%E8%84%89%E8%AF%86%E5%88%AB/1965171?fr=aladdin" target="_blank"
                          role="button">点我了解更多</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="images/standard5.jpeg" alt="4 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>人脸识别</h1>

                    <p>人脸识别，是基于人的脸部特征信息进行身份识别的一种生物识别技术。用摄像机或摄像头采集含有人脸的图像或视频流，并自动在图像中检测和跟踪人脸，进而对检测到的人脸进行脸部的一系列相关技术，通常也叫做人像识别、面部识别</p>

                    <p><a class="btn btn-lg btn-primary" href="https://baike.baidu.com/item/%E4%BA%BA%E8%84%B8%E8%AF%86%E5%88%AB" target="_blank"
                          role="button">点我了解更多</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="images/standard8.jpeg" alt="5 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>MORE</h1>

                    <p>更多可靠的生物识别技术，还在有待我们发掘......</p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#ad-carousel" data-slide="prev"><span
            class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#ad-carousel" data-slide="next"><span
            class="glyphicon glyphicon-chevron-right"></span></a>
</div>

<!-- 主要内容 -->
<div class="container summary">
	
	<!-- 简介 -->
	<div class="row" id="summary-container">
		<!-- <div class="col-md-6">
        	<img class="img-circle" src="images/standard10.jpg" alt="Fingerprint Authentication">

        	<h2>指纹识别</h2>

        	<p>指纹是指人的手指末端正面皮肤上凸凹不平产生的纹线。纹线有规律的排列形成不同的纹型。纹线的起点、终点、结合点和分叉点，称为指纹的细节特征点（minutiae）</p>

        	<form action="doEnter" method="post">
        		<input type="submit" class="btn btn-info btn-lg" role="button" value="点我进入指纹识别">
        	</form>
    	</div>
    	 
    	<div class="col-md-6"> -->
        	<img class="img-circle" src="images/standard11.gif" alt="Face Authentication">

        	<h2>人脸识别</h2>

        	<p>人脸识别主要用于身份识别。由于视频监控正在快速普及，众多的视频监控应用迫切需要一种远距离、用户非配合状态下的快速身份识别技术</p>
			<form action="doEnter" method="post">
        		<input type="submit" class="btn btn-info btn-lg" role="button" value="点我进入人脸识别">
        	</form>
        	
    	<!--  </div>  -->
	</div>

	<!-- 特性 -->
	 <hr class="feature-divider">

    <ul class="nav nav-tabs" role="tablist" id="feature-tab">
        <li class="active"><a href="#tab-finger" role="tab" data-toggle="tab">指纹识别</a></li>
        <li><a href="#tab-face" role="tab" data-toggle="tab">人脸识别</a></li>
        <li><a href="#tab-aboutUs" role="tab" data-toggle="tab">关于我们</a></li>
    </ul>

    <div class="tab-content">
        <div class="tab-pane active" id="tab-finger">
            <div class="row feature">
                <div class="col-md-7">

                    <h2 class="feature-heading">指纹识别 <span
                            class="text-muted">使用最广的生物识别技术</span></h2>

                    <p class="lead">每个人包括指纹在内的皮肤纹路在图案、断点和交叉点上各不相同，呈现唯一性且终生不变。
                    据此，我们就可以把一个人同他的指纹对应起来，通过将他的指纹和预先保存的指纹数据进行比较，就可以验
                    证它的真实身份，这就是指纹识别技术。指纹识别主要根据人体指纹的纹路、细节特征等信息对操作或被操作
                    者进行身份鉴定，得益于现代电子集成制造技术和快速而可靠的算法研究，已经开始走入我们的日常生活，成为
                    目前生物检测学中研究最深入，应用最广泛，发展最成熟的技术。</p>
                </div>
                <div class="col-md-5">
                    <img class="feature-image img-responsive" src="images/standard12.jpg"
                         alt="Fingerprint">
                </div>
            </div>
        </div>
        <div class="tab-pane" id="tab-face">
            <div class="row feature">
                <div class="col-md-5">
                    <img class="feature-image img-responsive" src="images/standard13.jpg"
                         alt="Face">
                </div>
                <div class="col-md-7">

                    <h2 class="feature-heading">人脸识别<span class="text-muted">最具发展前景的生物识别技术</span>
                    </h2>

                    <p class="lead">主流的人脸识别技术基本上可以归结为三类，即：基于几何特征的方法、基于模板的方法和基于模型的方法。
					 基于几何特征的方法是最早、最传统的方法，通常需要和其他算法结合才能有比较好的效果。
					基于模板的方法可以分为基于相关匹配的方法、特征脸方法、线性判别分析方法、奇异值分解方法、神经网络方法、动态连接匹配方法等。
					基于模型的方法则有基于隐马尔柯夫模型，主动形状模型和主动外观模型的方法等。</p>
                </div>
            </div>
        </div>
        <div class="tab-pane" id="tab-aboutUs">
            <div class="row feature">
                <div class="col-md-7">

                    <h2 class="feature-heading">ABOUT US <span class="text-muted">关于我们的团队</span></h2>

                    <p class="lead">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
                </div>
                <div class="col-md-5">
                    <img class="feature-image img-responsive" src="images/standard14.jpg"
                         alt="About Us">
                </div>
            </div>
        </div>
    </div>
    <hr class="feature-divider">

     <!-- 关于弹出框 -->
    <div class="modal fade" id="about-modal" tabindex="-1" role="dialog" aria-labelledby="modal-label"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
                    <h4 class="modal-title" id="modal-label">关于</h4>
                </div>
                <div class="modal-body">
                    <p>本平台是四川农业大学信息工程学院2017年本科生兴趣科研项目——基于生物识别的可信身份认证平台</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">了解了</button>
                </div>
            </div>
        </div>
    </div>


    <!--底部-->
    <footer>
        <p class="pull-right"><a href="#top">回到顶部</a></p>

        <p>&copy; 2017 基于生物识别的可信身份认证平台 四川农业大学信息工程学院本科生兴趣科研项目小组 </p>
    </footer>

</div>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $(function () {
        $('#ad-carousel').carousel();
        $('#menu-nav .navbar-collapse a').click(function (e) {
            var href = $(this).attr('href');
            var tabId = $(this).attr('data-tab');
            if ('#' !== href) {
                e.preventDefault();
                $(document).scrollTop($(href).offset().top - 70);
                if (tabId) {
                    $('#feature-tab a[href=#' + tabId + ']').tab('show');
                }
            }
        });
    });
</script>
<script type="text/javascript">
$(document).ready(function () { 
   $('ul.nav > li').click(function (e) {
      e.preventDefault();
      $('ul.nav > li').removeClass('active');
      $(this).addClass('active');
   });
});
</script>
</body>
</html>
