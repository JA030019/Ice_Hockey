<%@ page language="java" import="java.util.*,com.kz.domain.*" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	Userlevel ul = (Userlevel) session.getAttribute("UserLevelInfo");
	User user = (User) session.getAttribute("user");
	
	int flag;
	if (session.getAttribute("user") == null)
		flag = 0;
	else
		flag = 1;
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>等级证书详情页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="bootstrap/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="bootstrap/jquery-ui"></script>
<link href="bootstrap/bootstrap-combined.min.css" rel="stylesheet"
	media="screen">
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
											<%if(flag == 0){ %>
																					
											<%}else if(flag == 1){ %>
												<li><a href="/Ice_Hockey/user_info.jsp">个人中心</a></li>
												<li><a href="/Ice_Hockey/ClearServlet">退出登录</a></li>
											<%} %>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="page-header">
							<h3>查看证书详情</h3>
						</div>
						
						<table class="table">
							<tr>
								<th>证书序列号</th>								
								<th><%=ul.getId()%></th>
							</tr>
							<tr>
								<th>证书图片</th>								
								<th><img src = "/Ice_Hockey<%=ul.getImgurl()%>" alt="暂无无图片" /><th>								
							</tr>						
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>