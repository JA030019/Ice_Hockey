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
  <section id="about" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.1s">
					<div class="section-heading">
					<h2>旱地冰球项目介绍</h2>
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
        <div class="col-xs-4 col-sm-4 col-md-4">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                        <div class="avatar"><img src="img/icons/floorball_intro.jpg" alt="" class="img-responsive img-circle" /></div>      
				</div>
            </div>
        
	<p align="left">
	北美和英国的Floorball是从地板曲棍球演变而来的，而在北欧国家，旱地冰球则是受篮球和冰球运动的影响。
	世界上第一个国家旱地冰球联盟（SIBF）于1981年在瑞典成立。1983年，第一本官方规则手册问世。
	1985年，瑞典旱地冰球联盟（SFF）成为瑞典国家体育联盟会员
	<br>
	<br>
	这项运动相当灵活，几乎可以在任何地方进行，场地球员的数量也是可变的。旱地冰球运动十分吸引人，充满了速度和激情。
	旱地冰球之所以深受欢迎，原因之一就是这项运动极易开展：开始时不需要特定的技巧，规则简单易行，
	你只需要一双运动鞋，一支球杆和球。旱地冰球也可作为一种健康运动，男女享有平等地地位，早些年就已经有男女混合赛了。
	除了校园内的孩子和学生，现在许多工作场所及专门的兴趣小组都开展了旱地冰球运动，而且也出现了公司间的交流赛。
	</p>
	<br>
	<br>
	<p align="left">
	（1） 在中国是新面貌，充满活力、充满能量，快乐而轻松。<br>
	（2） 器材成本低，球员只需要普通的运动服、运动鞋加上一球一杆则可参与到这项运动中，普通的球杆在200RMB左右，专业球杆则可高至数千。
		专业竞技队则需要&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
		配备专业运动鞋、球杆、球门、守门员装备等。<br>
	（3） 参与人群广范，适合男女老少共同参加。小至五六岁，长至七八十都可以参与到这项运动中，不仅如此，
		这项运动的最大特点是可男女混合比赛。<br>
	（4） 场上球员的数量也是可以变化的：3对3、5对5等（这些都是没有守门员的）。<br>
	（5） 场地不受限制，这是一项无处不在的运动，无论是室内室外场地，还是沙地、草地、水泥地都可以运动。<br>
	（6） 简单易学，10分钟教学即可上手。<br>
	（7） 安全性高，一般采用的是碳纤维轻质球杆，镂空轻质塑料球，多数碰撞大都是在杆与杆之间产生，区别于其他运动身体与身体的冲撞，因此具有较高的安全性。<br>
	（8） 旱地冰球运动是一种更富有挑战性、娱乐性、趣味性的团队运动。它能增加队员的互动、交流进而增加团队的凝聚力。<br>
	</p>
	
    </div>		
	</div>	
	</section>
  
  </body>
</html>
