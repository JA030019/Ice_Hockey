<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>亚洲旱地冰球俱乐部管理员登录</title>
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
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="span12">
					<div class="page-header">
						<h2>
							管理员登录通道
						</h2>
					</div>
					<div>
						<form class="form-horizontal" method="post" name="login" action="/Ice_Hockey/AdminLoginServlet">
							<div class="control-group">
								<label class="control-label">用户名</label>
								<div class="controls">
									<input id="input" type="text" name="adminname" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">密码</label>
								<div class="controls">
									<input id="inputPassword" type="password" name="password" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">身份</label>
								<div class="controls">
									<select class="control-label" name="person">
										<option value="manage">管理员</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="btn">登陆</button>
								</div>
							</div>
						</form>
					</div>
				</div>
</body>
</html>
