<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
        <li ><a href="index.jsp">Home</a></li>
		
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
  	<!-- Section: services -->
    <section id="service" class="home-section text-center bg-gray">
		
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.1s">
					<div class="section-heading">
					<h2>教练团队</h2>
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
            <div class="col-sm-6 col-md-6">
				<div class="wow fadeInLeft" data-wow-delay="0.1s">
                <div class="service-box">
					<div class="service-icon">
						<a href = "/Ice_Hockey/shandian_introduction.jsp"><img src="img/team/4.jpg" alt="" /></a>
					</div>
					<div class="service-desc">
						<h5>Karena 导师</h5>
						<p align="left">一起玩创意拓展工作室 创始人；
										香港浸会大学体育管理硕士研究生，拥有多年的教学与管理经验。
										亞洲旱地冰球協會  会长；
										闪电旱地冰球学院  高级讲师；
										体验式高级培训师
						</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-sm-6 col-md-6">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/team/4.jpg" alt="" />
					</div>
					<div class="service-desc">
						<h5>Samson 教练</h5>
						<p align="left">一起玩创意拓展工作室 创始人；
										亞洲旱地冰球協會  常任秘书长；
										闪电旱地冰球学院  主教练及培训总监；
										亚洲青少年户外教育协会引导师；
										英国教育家Dr. Roger Greenaway签到体验教育引导师；
										曾在多家上海双语学校担任外聘教员，具有丰富的双语教学经验。
					</p>
					</div>
                </div>
				</div>
            </div>
			
        </div>		
		</div>
	</section>
	<!-- /Section: services -->
  
 
  </body>
</html>
