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
					<h2>国内外发展</h2>
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
	自1981年世界上第一个国家旱地冰球联盟在瑞典成立以来，1986年4月12日，瑞典、芬兰和瑞士在瑞典的胡斯克瓦纳（Huskvarna）成立了国际旱地冰球联合会（IFF），IFF是国际单项体育联合会总会（GAISF）的普通会员，国际奥林匹克委员会（IOC）的正式会员，并与世界大学生运动联合会（FISU）及澳大利亚电子竞技运动管理局（EMSA）合作。
	IFF致力于三个领域的运作：旱地冰球运动的市场营销、发展和策略。
	旱地冰球正在向欧洲其他国家——亚洲、澳洲以及美洲传播。德国、美国等国也在积极开展此项运动。
	目前，已有80多个国家在开展该项目，而属于IFF的成员国有58个。
	IFF正在为旱地冰球项目进入奥运会而努力着。
	中国是IFF参与国之一。

	旱地冰球运动在中国发展迅速，自2008年正式推广以来尤其受高校学生们的欢迎。目前发展得最好的城市是上海，其次是北京。
	中国作为新兴的世界经济体，在世界经济上发挥着重要的作用，而中国市场也成为了旱地冰球发展的重要根据地。国际旱地冰球联合会（IFF）和亚太旱地冰球联盟（AOFC）热切地希望中国能够加入国际旱地冰球大家庭，为国际旱地冰球发展带去更强大的力量。
	
	</p>
	
    </div>		
	</div>	
	</section>
  
 
  </body>
</html>
