<%@ page language="java" import="java.util.*,com.kz.domain.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新建用户</title>
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
								 <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar">
								 <span class="icon-bar"></span><span class="icon-bar"></span>
								 <span class="icon-bar"></span></a>
								  <a href="#" class="brand">你好管理员</a>
								<div class="nav-collapse collapse navbar-responsive-collapse">
									<ul class="nav pull-right">
										<li class="divider-vertical"></li>
										<li>
											<a href="clear.action">退出登录</a>
										</li>
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
									<li class="nav-header">管理各类用户</li>									
									<li ><a href="/Ice_Hockey/AdminServlet?judge=1">管理所有用户</a>
									</li>
									<li><a href="/Ice_Hockey/AdminServlet?judge=2">管理员列表</a>
									</li>
									<li class="nav-header">管理用户高级信息</li>	
									<li><a href="/Ice_Hockey/AdminServlet?judge=3">添加用户等级证书信息</a>
									</li>	
									<li><a href="/Ice_Hockey/AdminServlet?judge=4">添加用户获奖信息</a>
									</li>
									<li><a href="/Ice_Hockey/AdminServlet?judge=5">添加用户素质测试成绩</a>
									</li>
									<li><a href="/Ice_Hockey/AdminServlet?judge=6">添加用户品格评估成绩</a>
									</li>											
								</ul>
							
						</div>
							<div class="span9">
								<div class="page-header">
									<h1>
										新建用户
									</h1>
								</div>
								<form class="form-horizontal" method="post"
									action="/Ice_Hockey/AdminRegisterServlet?register=admin">
									<div class="control-group">
										<label class="control-label">管理员名</label>
										<div class="controls">
											<input id="input" type="text" name="adminname" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputPassword">密码</label>
										<div class="controls">
											<input id="inputPassword" type="text" name="password" />
										</div>
									</div>
									<div class="control-group">
										<div class="controls">
											<button type="submit" class="btn">新建</button>
										</div>
									</div>
								</form>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
