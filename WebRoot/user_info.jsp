<%@ page language="java" import="java.util.*,com.kz.domain.*"
	contentType="text/html; charset=utf-8"%>
<%
	
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";	
	User user = (User)session.getAttribute("user");
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
										class="icon-bar"></span> </a> <a href="index.jsp" class="brand">亞洲旱地冰球協會</a>
									<div class="nav-collapse collapse navbar-responsive-collapse">
										<ul class="nav">
											<li><a href="index.jsp">主页</a>
											</li>
											
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
				<div class="row-fluid">
					<div class="span12">
						<div class="row-fluid">
							<div class="span3">
								<ul class="nav nav-list">
									<li class="nav-header"><h4>个人中心</h4></li>
									<li class="active"><a href="user_info.jsp">个人基本信息</a>
									</li>
									<li><a href="/Ice_Hockey/UserServlet?judge=2">等级证书</a>
									</li>
									<li><a href="/Ice_Hockey/UserServlet?judge=4">获奖信息</a>
									</li>
									<li><a href="/Ice_Hockey/UserServlet?judge=5">素质测试体系</a>
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
									<h1>您的个人信息</h1>
								</div>
								<table class="table table-striped">
									<tr>
										<td>用户名</td>
										<td><%=user.getUsername() %>
									</tr>
									<tr>
										<td>地区</td>
										<td><%=user.getProvince() %>
									</tr>
									<tr>
										<td>邮箱</td>
										<td><%=user.getEmail() %>
									</tr>	
									<tr>
										<td>手机号</td>
										<td><%=user.getPhone() %>
									</tr>	
									<tr>
										<td>真实姓名</td>
										<td><%=user.getRealname() %>
									</tr>
									<tr>
										<td>性别</td>
										<td><%=user.getSex() %>
									</tr>
									<tr>
										<td>生日</td>
										<td><%=user.getBrith() %>
									</tr>
									<tr>
										<td>球龄</td>
										<td><%=user.getPlayexperience() %>年
									</tr>
									<tr>
										<td>握杆</td>
										<td><%=user.getHold() %>
									</tr>	
									<tr>
										<td>伤病史</td>
										<td><%=user.getInjury() %>
									</tr>
									<tr>
										<td>其他</td>
										<td><%=user.getOther() %>
									</tr>															
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
