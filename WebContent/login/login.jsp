<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="login.css">
</head>
<body>
	<div id="loginDiv">
		<form action="" method="post" id="form">
			<h1 style="text-align: center; color: aliceblue;">LOGIN&nbsp;&nbsp;IN</h1>
			<p>
				User Name: 
				<input id="userNname" type="text" name="userName" autofocus pattern="^[a-zA-Z0-9]{1,10}$">
				
				<label id="name_trip"></label>
			</p>

			<p>
				Password:&nbsp;&nbsp; <input id="password" type="password"
					name="password"> <label id="password_trip"></label>
			</p>

			<div style="text-align: center; margin-top: 30px;">
				<input type="submit" class="button" value="login up"> <input
					type="reset" class="button" value="reset">
			</div>
			<div>
				<p style="text-align: center;"><a href="regist.jsp" style="color: whitesmoke;text-decoration: none;">注册一个账号？</a></p>
			</div>	
		</form>
	</div>
</body>
</html>