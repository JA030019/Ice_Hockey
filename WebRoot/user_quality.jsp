<%@ page language="java" import="java.util.*,com.kz.domain.*" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";	
	
	
	List userQualityList = (List) session.getAttribute("userQuality");
	Iterator iter;
	iter = userQualityList.iterator();
	
	
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户个人中心</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="bootstrap/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="bootstrap/jquery-ui"></script>
<link href="bootstrap/bootstrap-combined.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="row-fluid">
					<div class="span12">
						<div class="navbar">
							<div class="navbar-inner">
								<div class="container-fluid">
									<a data-target=".navbar-responsive-collapse"
										data-toggle="collapse" class="btn btn-navbar"><span
										class="icon-bar"></span><span class="icon-bar"></span><span
										class="icon-bar"></span> </a> <a href="homepage.jsp" class="brand">亚洲旱地冰球俱乐部</a>
									<div class="nav-collapse collapse navbar-responsive-collapse">
										<ul class="nav">
											<li class="active"><a href="homepage.jsp">主页</a></li>            
										</ul>
										<ul class="nav pull-right">
											<li class="divider-vertical"></li>
											<li><a href="/Ice_Hockey/ClearServlet">退出登录</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span3">
							<ul class="nav nav-list">
									<li class="nav-header"><h4>个人中心</h4></li>
									<li><a href="user_info.jsp">个人基本信息</a>
									</li>
									<li><a href="/Ice_Hockey/UserServlet?judge=2">等级证书</a>
									</li>
									<li><a href="/Ice_Hockey/UserServlet?judge=4">获奖信息</a>
									</li>
									<li class="active"><a href="/Ice_Hockey/UserServlet?judge=5">素质测试体系</a>
									</li>
									<li><a href="/Ice_Hockey/UserServlet?judge=6">品格评估体系</a>
									</li>
									<li><a href="user_change_info.jsp">修改个人信息</a>
									</li>
									<li><a href="user_change_password.jsp">修改密码</a></li>									
									<li class="divider"></li>
									<li><a href="">帮助</a></li>
								</ul>

						</div>
						<div class="span9">
							<div class="page-header">
								<h3>您的素质测试信息</h3>
							</div>
							<table class="table table-striped">
								<thead>
									<tr>
										<th>测试日期</th>
										<th>测试内容</th>
										<th>最佳成绩</th>
										<th>教练员</th>
										<th>测试条件</th>		
										<th>备注</th>									
									</tr>
								</thead>
								<tbody>
									<%
											while (iter.hasNext()) {
											UserQuality uq = (UserQuality) iter.next();
									%>
									<tr>
										<td><%=uq.getDate() %></td>										
										<td><%=uq.getContent() %></td>
										<td><%=uq.getGrade() %></td>
										<td><%=uq.getCoach() %></td>
										<td><%=uq.getTiaojian() %></td>
										<td><%=uq.getOther() %></td>																										
									</tr>
									<%
										}										
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
