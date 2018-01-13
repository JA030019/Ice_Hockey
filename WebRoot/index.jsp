<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	int flag;
	if (session.getAttribute("user") == null){
		flag = 0;
	}else
		flag = 1;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>亞洲旱地冰球協會</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>	
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>
    
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.jsp">
                    <h1>亞洲旱地冰球協會</h1>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      
      <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li><a href="#about">关于我们</a></li>
		<li><a href="#service">服务板块</a></li>
		<li><a href="#contact">联系我们</a></li>
		
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">旱地冰球 <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="/Ice_Hockey/floorball_intro.jsp">项目介绍</a></li>
            <li><a href="/Ice_Hockey/fb_develop.jsp">国内外发展</a></li>
            <li><a href="/Ice_Hockey/judge_rule.jsp">裁判规则</a></li>
          </ul>
        </li>

		<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">赛事活动 <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="/Ice_Hockey/game.jsp">国内外赛事</a></li>
            <li><a href="#">其它活动</a></li>
          </ul>
        </li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">培训信息 <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="#">近期培训</a></li>
			<li><a href="/Ice_Hockey/coach.jsp">教练团队</a></li>
			<li><a href="#">培训回顾</a></li>
			<li><a href="#">培训体系</a></li>		
          </ul>
        </li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">资料库 <b class="caret"></b></a>
          <ul class="dropdown-menu">
		   <li><a href="#">视频专栏</a></li>
		   <li><a href="#">精彩图集</a></li>
		   <li><a href="#">文件下载</a></li>			
          </ul>
        </li>
        
        <%if(flag == 0){ %>
      	 <li><a href="user_login.jsp">登录</a></li>
		<li><a href="user_register.jsp">用户注册</a></li>										
		<%}else if(flag == 1){ %>
		<li><a href="/Ice_Hockey/user_info.jsp">个人中心</a></li>
		<li><a href="/Ice_Hockey/ClearServlet">退出登录</a></li>
		<%} %>
       
      </ul>
	     </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    	

<!-- Section: intro -->
    <section id="intro" class="intro">
	
		<div class="slogan">
			<h2>歡迎來到 <span class="text_color">AFA</span> </h2>
			<h4>歡迎來到亞洲旱地冰球協會，開始您的旱地冰球之旅</h4>
		</div>
		<div class="page-scroll">
			<a href="#service" class="btn btn-circle">
				<i class="fa fa-angle-double-down animated"></i>
			</a>
		</div>
    </section>
	<!-- /Section: intro -->

	<!-- Section: about -->
    <section id="about" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.1s">
					<div class="section-heading">
					<h2>About us</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		
		<div class="container">
		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
        <div class="row">
        <div class="col-xs-4 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                        <div class="avatar"><img src="img/team/1.png" alt="" class="img-responsive img-circle" /></div>      
				</div>
            </div>
        
			<p align="left">亚洲旱地冰球协会（The Asia Floorball Association简称“AFA“），于2017/12/28在中国香港成立。
			协会由亚洲的旱地冰球工作者，教育爱好者及热心支持旱地冰球运动的企事业、团体自愿组成的公益慈善类、专业性的
			非营利性的社会团体组成。
			目前亚洲旱地冰球协会主要以五方面领域发展旱地冰球：培训系统（教练员培训体系、裁判员培训体系、TEEC旱地冰球课程引导员体系）；
			进阶系统（教练员进阶标准、裁判员进阶标准、TEEC课程引导员进阶标准）；会员注册系统（运动员、教练员）；赛事系统；
			认证系统（俱乐部合作、课程认证、器材认证）.
			</p>
        </div>		
		</div>	
	</section>
	<!-- /Section: about -->
	
	

	<!-- Section: services -->
    <section id="service" class="home-section text-center bg-gray">
		
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.1s">
					<div class="section-heading">
					<h2>Our Services</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">
		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
        <div class="row">
            <div class="col-sm-4 col-md-4">
				<div class="wow fadeInLeft" data-wow-delay="0.1s">
                <div class="service-box">
					<div class="service-icon">
						<a href = "/Ice_Hockey/shandian_introduction.jsp"><img src="img/icons/service-icon-1.png" alt="" /></a>
					</div>
					<div class="service-desc">
						<h5>闪电旱地冰球学院</h5>
						<p align="left">Specialized闪电旱地冰球学院拥有国内外顶级教练组成的高水准培训团队及权威性与专业性为一体的青少年培训体系。</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-sm-4 col-md-4">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-box">
					<div class="service-icon">
					
						<a href = "/Ice_Hockey/shandian_teen.jsp"><img src="img/icons/service-icon-2.png" alt="" /></a>
					</div>
					<div class="service-desc">
						<h5>闪电青少年成长计划联盟</h5>
						<p align="left">闪电旱地冰球课程是一门以身体练习为主要手段、以增进学员品格发展为主要目的的必修课程，是旱地冰球俱乐部课程体系的重要组成部分</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-sm-4 col-md-4">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-3.png" alt="" />
					</div>
					<div class="service-desc">
						<h5>一起玩创意工作室</h5>
						<p>内容简介</p>
					</div>
                </div>
				</div>
            </div>
        </div>		
		</div>
	</section>
	<!-- /Section: services -->
	

	<!-- Section: contact -->
    <section id="contact" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.1s">
					<div class="section-heading">
					<h2>Get in touch</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">
		  <div class="row">	
		  <div class="col-lg-2 col-lg-offset-5">
		  	<div class="widget-contact">
		  	<h5>地址</h5>
		  		<address>
				  <strong>亞洲旱地冰球協會</strong><br>
				  Tower 795 Folsom Ave, Beautiful Suite 600<br>
				  San Francisco, 香港 94107<br>
				  <abbr title="Phone">电话:</abbr> (123) 456-7890
				</address>
				
				
				<address>
				  <strong>郵箱</strong><br>
				  <a href="mailto:kaizheng1993@gmial.com">email.name@example.com</a>
				</address>
		  	</div>
		  	</div>
		  </div>
		</div>
	</section>
	<!-- /Section: contact -->
	
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.1s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
					</div>
					<p>&copy;Copyright 2018 - AFA. All rights reserved. </p>
				</div>
			</div>	
		</div>
	</footer>
</body>
</html>