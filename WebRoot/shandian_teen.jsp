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
					<div class="avatar"><img src="img/icons/shandian_teen.png" alt="" class="img-responsive " /></div>      			
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
              
         </div>
        
	<p align="left">
		前言：<br>
		随着科学技术的迅猛发展和经济的全球化，人类社会的物质文化生活水平从整体上有了很大提高，家长们对于孩子的教育投资大大增加，
		但是，现代生产和生活方式造成孩子们的体力活动减少和心理压力增大，对孩子身心健康造成了日益严重的威胁。人们逐渐认识到，健康不仅是没有疾病和不虚弱，
		而且是在身体、心理和社会发展方面都保持完美的状态。家长比以往任何时候都更加关注孩子的身心健康状况和综合能力。
		由于国民的身心健康和综合能力对国家的发展、社会的进步和个人的幸福都至关重要，而闪电旱地冰球课程又是增进孩子身
		心健康和综合能力的重要途径因此。<br>
		《中共中央国务院关于深化教育改革全面推进素质教育的决定》指出："健康体魄是青少年为祖国和人民服务的基本前提，
		是中华民族旺盛生命力的体现。"《闪电青少年成长计划联盟（5-12岁）课程标准》（以下简称《标准》）正是在这一思想的指导下制订的。《标准》突出强调要尊重教师和学生对教学内容的选择性，注重教学评价的多样性，使课程有利于激发学员的运动兴趣，养成坚持体育锻炼的习惯，形成勇敢顽强和坚韧不拔的意志品质，促进学员在身体、心理和社会适应能力等方面健康、和谐地发展，从而为提高学员的整体健康水平发挥重要作用。
		<br>
		<br>
		1.	课程性质<br>
		（一）课程性质<br>
		闪电旱地冰球课程是一门以身体练习为主要手段、以增进学员品格发展为主要目的的必修课程是学校课程体系、旱地冰球俱乐部课程体系的重要组成部分，是实施体育锻炼和品格发展人才不可缺少的重要途径。它是对原有的旱地冰球课程进行深化改革，突出品格发展目标的一门课程。
		<br><br>
		（二）课程价值<br>
		闪电旱地冰球课程对于提高学员的体质和健康水平，促进学员品格发展，培养社会主义现代化建设需要的高素质劳动者，具有极为重要的作用。<br>
		1.	增进身体健康
		通过本课程的学习，学员能够提高对身体和健康的认识，掌握有关身体健康的知识和科学健身方法，
		提高自我保健意识；坚持锻炼，增强体能，促进身体健康；养成健康的生活方式。<br>
		2.	提高心理健康水平
		通过本课程的学习，学员将在和谐、平等、友爱的运动环境中感受到集体的温暖和情感的愉悦；
		在团队训练中，提高领导力和表达力；在经历挫折和克服困难的过程中，提高抗挫折能力、情绪调节能力和反思能力，
		培养坚强的意志品质；在不断体验进步或成功的过程中，增强自尊心、自信心和专注力，培养创新精神和创新能力，
		形成积极向上、乐观开朗的生活态度。<br>
		3.	增强社会适应能力
		通过本课程的学习，学员将理解个人健康与群体健康的密切关系，建立起对自我、群体和社会的责任感；
		形成现代社会所必需的合作与竞争意识，学会尊重和关心他人，培养良好的体育道德和集体主义、社会主义、
		爱国主义精神学会获取现代社会中知识的方法。<br>
		4.	获得旱地冰球知识和技能
		通过本课程的学习，学员能够掌握旱地冰球的基本知识和运动技能，并形成终身锻炼的意识和习惯；学员可以根据自己的不同需求，选择个人喜爱的方法参与旱地冰球日常训练，挖掘运动潜能，提高运动欣赏能力，形成积极的余暇生活方式；学员可以提高体育运动中的安全防范能力。
		<br><br>
		2.	课程基本理念<br>
		（一）坚持"健康第一"的指导思想，促进学员健康成长<br>
		闪电旱地冰球课程以促进学员身体、心理和社会适应能力整体健康水平的提高为目标，
		构建了技能、认知、情感、行为等领域并行推进的课程结构，融合了体育、生理、心理、卫生保健环境、社会
		、安全、营养等诸多学科领域的有关知识，真正关注学员的健康意识、锻炼习惯和卫生习惯的养成，将增进
		学员健康贯穿于课程实施的全过程，确保"健康第一"的思想落到实处，使学员健康成长。<br>
		（二）激发运动兴趣，培养学员终身体育的意识<br>
		运动兴趣是终身体育的基础，运动兴趣和习惯是促进学员自主学习和终身坚持锻炼的前提。无论
		是教学内容的选择还是教学方法的更新，都应十分关注学员的运动兴趣，只有激发和保持学员的运动兴趣，才
		能使学员自觉、积极地进行体育锻炼。因此，在旱地冰球教学中，学员的运动兴趣是实现闪电旱地冰球课程目标
		和价值的有效保证。<br>
		（三）以学员发展为中心，重视学员的主体地位<br>
		闪电旱地冰球课程关注的核心是满足学员的需要和重视学员的情感体验，促进全面
		发展的社会主义新人的成长。从课程设计到评估的各个环节，始终把学员主动、全面的发展放在中心
		地位。在注意发挥教学活动中教师辅助作用的同时，特别强调学员学习主体地位的体现，以充分发挥学员
		的学习积极性和学习潜能，提高学员的体育学习能力。<br>
		（四）关注个体差异与不同需求，确保每一个学员受益<br>
		闪电旱地冰球课程充分注意到学员在身体条件、兴趣爱好和运动技能等方面的个体差
		异，根据这种差异性确定学习目标和评价方法，并提出相应的教学建议，从而保证绝大多数学员能完成
		课程学习目标，使每个学员都能体验到学习和成功的乐趣，以满足自我发展的需要。
		<br><br>
		3.	课程标准的设计思路<br>
		（一）根据课程目标与内容划分学习领域<br>
		闪电旱地冰球课程改变了传统的按运动项目划分课程内容和安排教学时数的框架，根据可视化模型（
		章级体系）、徽章奖励机制以及线上成长档案，提升课程内容效果的科学性和直观性，并将课
		程学习内容划分为幼铜章、铜章、银章和金章四个学习领域，并根据领域目标构建课程的内容体系。<br>
		（二）根据学员身心发展的特征划分学习水平<br>
		《标准》根据学员身心发展的特征，将中小学的学习划分为四级水平，并在各学习领域按水平
		设置相应的水平目标。水平一至水平四分别相当于幼铜章、铜章、银章和金章
		考虑到学校和学员各方面的差异性，《标准》在各个领域设立水平四，作为5-12岁学员，闪电旱地冰
		球课程的发展性学习目标。<br>
		（三）根据可操作性和可观察性要求确定具体的学习目标<br>
		为了确保学习目标的达成和学习评价的可行性，学习目标必须是具体的、可观察的。在
		技术章级体系和品格章级体系两个学习领域，要求学员在掌握有关理念、技能的同时，强调学员应在
		运动实践中体验心理感受并形成良好的行为习惯，这使情感、意志方面的学习目标由隐性变为显性，由原则
		性的要求变为可以观测的行为表征。这既便于学员学习时自我认识和体验，也便于教师对学员的观察和评价。<br>
		（四）根据四级课程管理的要求加大课程内容的选择性<br>
		按照四级课程管理的要求，本《标准》规定了各学习领域、各水平的学习目标，同时确定了依据学习目标选择教学内容的原
		则。各校、各俱乐部和教练员在制订具体的课程实施方案时，可以依据课程的学习目标，从本校、本部的实际情况出发
		，选用适当的教学内容和教学方法，各校、各部可以按照《标准》内容对教学内容的选取作了灵活的处理。<br>
		（五）根据课程发展性要求建立评价体系<br>
		课程评估是促进课程目标实现和课程建设的重要手段。《标准》注重综合阶段评价和终结性
		评价为原则，强化评价的激励、发展功能，并根据这样的原则对教学评价提出了相应的建议
		。《标准》把学员的体能、知识与技能、学习态度、情意表现与品格精神纳入学习成绩评定的范围，并
		让（俱乐部）家长参与评价过程，以体现学员学习的主体地位，提高学员的学习兴趣。<br>
			
	</p>
    </div>		
	</section>
  
  

  </body>
</html>
