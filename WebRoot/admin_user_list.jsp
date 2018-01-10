<%@ page language="java" import="java.util.*,com.kz.domain.*" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	
	List admin_user_list = (List) session.getAttribute("admin_user_list");
	int listlength = admin_user_list.size();
	int pages = (int) (listlength / 10);
	if (listlength % 10 != 0)
		pages++;

	int mypage;
	if (request.getParameter("page")  == null)
		mypage = 1;
	else
		mypage = Integer.valueOf(request.getParameter("page").toString());
		
	int pagehead = (mypage - 1) * 10;
	
	List myList = new ArrayList();
	for (int i = pagehead; i < pagehead + 10; i++) {
		if(i >= listlength)
			break;
		myList.add(admin_user_list.get(i));
	}

	Iterator iter;
	iter = myList.iterator();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>所有用户列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="bootstrap/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="bootstrap/jquery-ui"></script>
<link href="bootstrap/bootstrap-combined.min.css" rel="stylesheet"
	media="screen">
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
<style type="text/css">
.fenye {
	position: fixed;
	bottom: 10px;
}
</style>
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
									<li class="active"><a href="/Ice_Hockey/AdminServlet?judge=1">管理所有用户</a>
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
								<table class="table table-striped">
									<thead>
										<tr>
											<th>用户名称</th>
											<th>是否删除</th>
										</tr>
									</thead>
									<tbody>
										<%int i = 0;
											while (iter.hasNext()) {
												User user = (User) iter.next();
										%>
										<tr>
											<th><a
												href="/Ice_Hockey/AdminServlet?sid=<%=user.getId()%>"><%=user.getUsername()%></a>
											</th>
											<th><a id="modal-<%=(581757+i) %>" href="#modal-container-<%=(581757+i) %>"
												role="button" class="btn" data-toggle="modal">删除该用户</a>
												<div id="modal-container-<%=(581757+i) %>" class="modal hide fade"
													role="dialog" aria-labelledby="myModalLabel"
													aria-hidden="true">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">×</button>
														<h3 id="myModalLabel">再问一次</h3>
													</div>
													<div class="modal-body">
														<p>确定是否删除？</p>
													</div>
													<div class="modal-footer">
														<button class="btn" data-dismiss="modal"
															aria-hidden="true">关闭</button>
														<a href="/Ice_Hockey/AdminServlet?uid=<%=user.getId()%>" class="btn btn-primary btn-lg" role="button">删除</a>
													</div>
												</div> 
											</th>
										</tr>
										<%i++;
											}
										%>
									</tbody>
								</table>
								<div class="span6 pagination pagination-centered fenye">
									<ul>
										<%if(mypage == 1){ %>

										<%if(mypage == pages){ %>

										<%}else{ 
									
										for(int j = 1; j <= pages; j++){
									%>
										<li><a href="admin_user_list.jsp?page=<%=j%>"><%=j %></a>
										</li>

										<%} %>

										<li><a href="admin_user_list.jsp?page=<%=mypage + 1%>">下一页</a>
										</li>
										<%} %>

										<%}else{%>

										<%if(mypage == pages){ 
											%>
										<li><a href="admin_user_list.jsp?page=<%=mypage - 1%>">上一页</a>
										</li>
										<%
											for(int j = 1; j <= pages; j++){
										%>
										<li><a href="admin_user_list.jsp?page=<%=j%>"><%=j %></a>
										</li>
										<%}}else{ %>
										<li><a href="admin_user_list.jsp?page=<%=mypage - 1%>">上一页</a>
										</li>
										<%
											for(int j = 1; j <= pages; j++){
										%>
										<li><a href="admin_user_list.jsp?page=<%=j%>"><%=j %></a>
										</li>
										<%} %>
										<li><a href="admin_user_list.jsp?page=<%=mypage + 1%>">下一页</a>
										</li>
										<%} %>

										<%} %>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
