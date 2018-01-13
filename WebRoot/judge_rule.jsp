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
					<h2>裁判规则</h2>
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
        
        
	<p align="left">
	
	旱地冰球是在室内进行的团体球类项目，比赛场地可以用木板或硬塑胶等材质制成，场地比篮球场稍大，与手球场或室内五人制足球场类似，
	为标准40mX20m的圆角矩形，其四周必须有挡板，挡板是用木板或塑胶等材质制成，挡板高为1250px。其比赛方式与冰球和曲棍球十分相似，
	其主要比赛目的是用球杆控制球并将其打入对方的球门而得分。正规比赛每方有6名队员上场，其中包括一名守门员。
	每队最多可由20名队员组成一支球队，其中包括两名守门员。<br>

	比赛场地<br>
	比赛场地尺寸：场地规格为40米长，20米宽，周边有挡板，挡板四角为圆角，经IFF认证并有相应标记。场地为长方形，
	测量标准为长乘宽，获准最小尺寸长36米、宽18米，最大尺寸长44米，宽22米。
	<br>
	<br>
	</p>
	<img src="img/icons/changdi1.png" alt="" /></div>
 	<br>
 	<p align="left">
	正式比赛标准场地<br>
	球门：IFF认证和专门标识的球门置于事先标示处。球门开口朝向场地中心。<br>
	休息区：休息区长10米，与球场长边平行，距离中线5米，备有运动员休息长凳。挡板两侧各有休息区标记，<br>
	休息区宽度距挡板不超3米，板凳可容纳19人，离挡板有一定距离。也可以在球场顶端用不同颜色标示休息区。<br>
	记录员及处罚席：场地另外一侧正对休息区处的中线附近设记录员席及处罚席，记录员席及处罚席与挡板距离适中。<br>
	记录席两边为两队分设处罚席，每个可容两人位置。官方每一支队伍都应配备处罚席，放置于每队的记录员席内，<br>
	处罚席需可容纳两个人。官方有权摆放两队的记录员席和处罚席，处罚席需至少与替补席隔开两米的距离。<br><br>

	比赛时间<br>
	常规比赛时间：正规比赛时间应当为3节，每节20分钟，节间休息10分钟，且两队交换场地。
	比赛时间最多可缩至两节，每节15分钟，中场休息由主管领导决定。裁判鸣哨，无论状况如何，比赛停止，一旦开球，开始计时。罚球时应停止计时。
	暂停：整场比赛中每队都有一次要求暂停的权利，此时裁判应鸣哨三声示意比赛中断。暂停的要求只能由球队的队长或队员提出，暂停时间为30秒。
	加时赛：如果比赛平局，则可以进行10分钟的加时赛。
	点球决战：加时赛仍平局时，进行点球决战，两队各五名队员依次进行罚点球，直至分出胜负。
	<br><br>
	参赛人员<br>
	队员：每队最多可报名20名队员，比赛过程中每队最多使用六名球员，其中包括一名守门员，或比赛中最多只有6名队员同时上场。<br>
	队员的替换：比赛中替换队员不限次数，且随时可换。换人必须在被替换球员出挡板之后，替换的球员才能入场，并且只能在标示的换人区换人。<br>
	守门员的特殊规定：如果守门员完全离开球门区，则他在回到球门区之前应该被认为是一名无球杆的球员，即不允许用手进行传接球。<br>
	队长的特殊规则：只有队长有权与裁判进行对话，同时有义务协助裁判。<br>
	裁判员：一场比赛应有两名同等认证的裁判员掌控。<br>
	记录员：记录员应位于记录席，客观、负责任地记录比赛情况、提醒时间。<br><br>
	<br>
	定位球
	定位球包括争球、边线球、任意球和罚点球。<br>
	争球：在新一节比赛开始或者一个合法的进球得分之后，应该在中点争球。比赛中断但没有球队获得边线球、任意球或罚点球时，比赛应该从争球开始。争球可以直接射门。<br>
	边线球：球出界时，未犯规队发边线球，边线球应当从球离开球场的位置实施，距离挡板1.5米，
	但不能在球门线延长线后方。发边线球时其他球员距发球点3米以外，发球时应直接击打，禁止拖、轻碰或以杆提起。边线球也可直接射门。<br>
	任意球：任意球应在犯规发生的地点执行，但不能在球门线及其延长线后方，或者距守门员区3.5米。其他发球基本同边线球发球，也可直接射门。<br>
	罚点球：罚点球应从中心点开始，罚点球球员可无限次触球，但是罚点球期间必须向前移动球。一旦守门员触球，负责罚球的队员就不能再次碰。<br><br>
	<br>
	处罚
	当犯规导致判罚时，犯规者应该受到处罚。受罚队员在整个受罚阶段都应处于处罚席。处罚主要有2分钟处罚，5分钟处罚，退场处罚。处罚时间内无论哪一方进球，处罚都立即解除。
	<br><br>
	得分<br>
	合法得分：当球被合法的打进球门之后，被认为是合法得分，同时应从中心点争球。场中争球后所有已获得分不得被修改。<br>
	不合法进球：不合法进球包括的情况有当进攻队员在射门前或者射门时已有可判罚任意球或罚球的犯规行为；当一个进攻球员故意用身体将球顶进球门；当球在哨声响起时或之后进入球门；当球部分进入球门，却没有完全越过球门线前端；当一个守门员将球扔或踢进对手的球门，或者以另外的合理的方式；当一名球员有意将球踢向其他队员或其装备导致进球；当犯规队在延迟处罚中射门得分，应执行处罚，重新争球；当球打在裁判身上射入球门。
	</p>
    </div>		
	</section>
  
  

	
	
  
	

  </body>
</html>
