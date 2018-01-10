<%@ page language="java" import="java.util.*,com.kz.domain.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="bootstrap/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="bootstrap/jquery-ui"></script>
<link href="bootstrap/bootstrap-combined.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="js/area.js"></script>  
<script type="text/javascript">
	function fun1(){ // 改变img标签的src属性值
		//1 获得img标签对象
		var img = document.getElementById("one");
		//2 改变src属性
		img.src = "/Ice_Hockey/MakeCheckCodeServlet?date="+new Date();
	}

// 文本框清空灰色提示  
function TextOnFocusShow(showId)  
{  
    var showIdTextValue = document.getElementById(showId).value;  
    var showIdTextDeValue = document.getElementById(showId).defaultValue;// text初始设置  
    if(showIdTextValue == showIdTextDeValue)  
    {  
        document.getElementById(showId).value = "";  
        document.getElementById(showId).style.color='#000';  
    }  
}  
// 文本框为空时增加灰色提示  
function TextOnBlurShow(showId)  
{  
    var lDateValue = document.getElementById(showId).value;  
    var lDateDefaultValue = document.getElementById(showId).defaultValue;  
    if(lDateValue == '')  
    {  
        document.getElementById(showId).value = lDateDefaultValue;  
        document.getElementById(showId).style.color='#999';  
    }  
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
									<a data-target=".navbar-responsive-collapse"
										data-toggle="collapse" class="btn btn-navbar"> <span
										class="icon-bar"></span><span class="icon-bar"></span> <span
										class="icon-bar"></span> </a> <a href="homepage.jsp" class="brand">主页</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="row-fluid">
							<div class="span8 offset2">
								<div class="page-header">
									<h2>
										用户注册 <small>请填写用户注册信息</small>
									</h2>
								</div>
								<form class="form-horizontal" action="/Ice_Hockey/RegisterServlet?register=user" method="post" >
									
									<div class="control-group">
										<label class="control-label">用户名</label>
										<div class="controls">
											<input id="username" type="text" name="username" /> &nbsp <small>（长度为3~25个字符，不能以“_”开头或结尾）</small>
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">手机号</label>
										<div class="controls">
											<input id="phone" type="text" name="phone" />
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">邮箱</label>
										<div class="controls">
											<input id= "email" type="text" name="email"  value="例如：cfdfloorball@163.com" onfocus="TextOnFocusShow(this.id);" onblur="TextOnBlurShow(this.id);" style="color:#999999"/> 
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">地区</label>
										<div class="controls">
											<select id="province"  name="province"></select>  
    										<select id="city" runat="server" name="city"></select>   
    										<!--js初始化函数-->     
   											 <script type="text/javascript">  
        										setup();  
    										 </script>  
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">密码</label>
										<div class="controls">
											<input id="password" type="password" name="password">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">确认密码</label>
										<div class="controls">
											<input id="repassword" type="password" name="repassword"/>
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="inputPassword"><br>验证码</label>
										<div class="controls">
										<input id="inputCode" type="text" name="code" size="4" /><img id="one" src="/Ice_Hockey/MakeCheckCodeServlet" >
										<a href="javaScript:void(0)" onclick="fun1();" >看不清,换一张</a><font color="red" >${requestScope.error}</font></td>
										</div>
									</div>	
														
									<div class="control-group">
										<div class="controls">
											<button id="register_button" onclick="summitRegisterInfo()"
												class="btn">提交注册</button>
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
