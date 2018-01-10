<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
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
<title>欢迎访问亚洲旱地冰球协会</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="bootstrap/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="bootstrap/jquery-ui"></script>
<link href="bootstrap/bootstrap-combined.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
<script type="text/javascript">
	function fun1(){ // 改变img标签的src属性值
		//1 获得img标签对象
		var img = document.getElementById("one");
		//2 改变src属性
		img.src = "/Ice_Hockey/MakeCheckCodeServlet?date="+new Date();
	}
	
	</script>
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
									<a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span>
									<span class="icon-bar"></span><span class="icon-bar"></span> </a> 
									<a href="homepage.jsp" class="brand">亚洲旱地冰球协会</a>
									
										<ul class="nav">
											<li class="active"><a href="homepage.jsp">主页</a></li>
											<li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#">关于AFD<strong class="caret"></strong></a>
												<ul class="dropdown-menu">												
													<li><a href="#">协会简介</a></li>													
													<li><a href="#">人才招聘</a></li>
													<li><a href="#">闪电学院</a></li>
													<li><a href="#">国内外新闻</a></li>
													<li><a href="#">联系我们</a></li>

												</ul>
											</li> 							      
										</ul>
										
																
								
										<ul class="nav pull-right">
											<li class="divider-vertical"></li>
											<%if(flag == 0){ %>
											<li><a id="modal-197507" href="#modal-container-197507"
												data-toggle="modal">登录</a>
												<div id="modal-container-197507" class="modal hide fade"
													role="dialog" aria-labelledby="myModalLabel"
													aria-hidden="true">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">×</button>
														<h3 id="myModalLabel">用户登录</h3>
													</div>
													<div class="modal-body">
														<form class="form-horizontal" method="post" name="login" action="/Ice_Hockey/LoginServlet">
															<div class="control-group">
																<label class="control-label">用户名</label>
																<div class="controls">
																	<input id="input" type="text" name="username" />
																</div>
															</div>
															<div class="control-group">
																<label class="control-label" for="">密码</label>
																<div class="controls">
																	<input id="" type="password"
																		name="password" />
																</div>
															</div>
															
															<div class="control-group">
																<label class="control-label" for="inputPassword">验证码</label>
																<div class="controls">
																		<input id="inputCode" type="text" name="code" size="4" /><img id="one" src="/Ice_Hockey/MakeCheckCodeServlet" >
																		<a href="javaScript:void(0)" onclick="fun1();" >看不清,换一张</a><font color="red" >${requestScope.error}</font></td>
																</div>
															</div>
															<div class="control-group">
																<div class="controls">
																	<button type="submit" class="btn">登录</button>
																</div>
															</div>
														</form>
													</div>
												</div>
											</li>
											
											<li><a href="user_register.jsp">用户注册</a></li>										
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
				<h2>注册成功，请点击上方登录按钮进行登录</h2>
			</div>
		</div>
	</div>
</body>
</html>