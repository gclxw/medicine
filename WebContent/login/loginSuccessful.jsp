<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="cc.MyMVC.dao.User"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String username = (String)request.getSession().getAttribute("userName");	
%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>用户管理系统</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <base href="<%= basePath%>>">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/ready.css">
</head>

<body>
    <div class="wrapper">
        <div class="main-header">
            <div class="logo-header">
                <a href="loginSuccessful.jsp" class="logo">
					Ready Dashboard
				</a>
                <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
                <button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
            </div>

            <nav class="navbar navbar-header navbar-expand-lg">
                <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> 
                        <img src="assets/img/profile.jpg" alt="user-img" width="36" class="img-circle">
                        <span><%=username%></span>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <a class="dropdown-item" href="#"><i class="fa fa-power-off"></i> Logout</a>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="sidebar">
            <div class="scrollbar-inner sidebar-wrapper">
                <ul class="nav">
                    <li class="nav-item active">
                        <a href="loginSuccessful.jsp">
                            <i class="la la-heartbeat"></i>
                            <p>首页</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="userManage.jsp">
                            <i class="la la-user"></i>
                            <p>用户管理</p>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
        <div class="main-panel">
            <div class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">World Map</h4>
                                <p class="card-category">
                                    Map of the distribution of users around the world</p>
                            </div>
                            <div class="card-body">
                                <div class="mapcontainer">
                                    <div class="map">
                                        <span>Alternative content for the map</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <footer class="footer">
			<div class="copyright ml-auto">
				2018, made with <i class="la la-heart heart text-danger"></i> 
				by - More Templates
			</div>
		</footer>
    </div>
</body>

<script src="assets/js/core/jquery.3.2.1.min.js"></script>
<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="assets/js/core/popper.min.js"></script>
<script src="assets/js/core/bootstrap.min.js"></script>
<script src="assets/js/plugin/chartist/chartist.min.js"></script>
<script src="assets/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
<script src="assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
<script src="assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<script src="assets/js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
<script src="assets/js/plugin/jquery-mapael/maps/world_countries.min.js"></script>
<script src="assets/js/plugin/chart-circle/circles.min.js"></script>
<script src="assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script src="assets/js/ready.min.js"></script>
<script src="assets/js/demo.js"></script>
<script type="text/javascript">
    
</script>
</html>