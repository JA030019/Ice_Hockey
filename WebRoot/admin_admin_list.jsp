<%@ page language="java" import="java.util.*,com.kz.domain.*" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

	List admin_admin_list = (List) session.getAttribute("admin_admin_list");
	Iterator iter;
	iter = admin_admin_list.iterator();

	Admin myAdmin = (Admin)session.getAttribute("admin");


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache">
 <meta http-equiv="cache-control" content="no-cache">
<title>所有管理员列表</title>
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
										data-toggle="collapse" class="btn btn-navbar"> <span
										class="icon-bar"></span><span class="icon-bar"></span> <span
										class="icon-bar"></span> </a> <a href="#" class="brand">你好管理员</a>
									<div class="nav-collapse collapse navbar-responsive-collapse">
										<ul class="nav pull-right">
											<li class="divider-vertical"></li>
											<li><a href="/Ice_Hockey/ClearServlet">退出登录</a>
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
									<li class="active"><a href="/Ice_Hockey/AdminServlet?judge=2">管理员列表</a>
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
								<table class="table table-striped">
									<thead>
										<tr>
											<th>管理员名称</th>
											<th>管理员权限</th>
											<%
												if ((myAdmin.getPower() == 1)) {
											%>
											<th>密码</th>
											<th>操作</th>
											<%
												}
											%>
										</tr>
									</thead>
									<tbody>
										<%
											while (iter.hasNext()) {
												Admin admin = (Admin) iter.next();
										%>
										<tr>
											<th><%=admin.getAdminname()%></th>
											<%
												if ((admin.getPower() == 1)) {
											%>
											<th>总管理员</th>
											<th></th>
											<%
												} else {
											%><th>一般客服</th>
											<%
												if ((myAdmin.getPower() == 1)) {//如果我是总管理员
											%>
											<th><%=admin.getPassword()%></th>
											<th><a href="/Ice_Hockey/AdminServlet?id=<%=admin.getId()%>">删除该管理员</a>
											</th>
											<%
												}
													}
													if (admin.getId().equals(myAdmin.getId())) {
											%>
											<th>我</th>
											<%
												}
											%>
										</tr>
										<%
											}
										%>
									</tbody>
								</table>
								<%
									if ((myAdmin.getPower() == 1)) {//如果我是总管理员
								%>
								<a href="admin_new_admin.jsp" class="btn btn-primary btn-lg"
									role="button">新建管理员</a>
								<%
									}
								%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
