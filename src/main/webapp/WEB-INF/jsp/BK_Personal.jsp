<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人后台</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/捕获.PNG"
	type="image/x-icon">
<link rel="stylesheet" href="../css/nav.css" type="text/css">
<link rel="stylesheet" href="../css/rig.css" type="text/css">
<link rel="stylesheet" href="../fonts/iconfont.css" type="text/css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/nav.js"></script>
<script type="text/javascript" src="../js/rig.js"></script>
</head>
<div class="nav">
	<div class="nav-top">
		<div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="../images/mini.png"></div>
	</div>
	<ul>
		<li class="nav-item nav-show">
			<a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>个人信息</span><i class="my-icon nav-more"></i></a>
			<ul style="display: block;">
				<li><a id="updatex" href="javascript:;"><span>修改信息</span></a></li>
				<li><a id="updatap" href="javascript:;"><span>修改密码</span></a></li>
				<li><a href="javascript:;"><span>登录日志</span></a></li>
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>酒店管理</span><i class="my-icon nav-more"></i></a>
			<ul style="display: none;">
				<li><a href="javascript:;"><span>酒店管理</span></a></li>
				<li><a href="javascript:;"><span>房间管理</span></a></li>
				<li><a href="javascript:;"><span>用户信息</span></a></li>
				<li><a href="javascript:;"><span>系统日志</span></a></li>
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i class="my-icon nav-more"></i></a>
			<ul style="">
				<li><a href="javascript:;"><span>订单列表</span></a></li>
				<li><a href="javascript:;"><span>订单管理</span></a></li>
				<li><a href="javascript:;"><span>也打酱油</span></a></li>
			</ul>
		</li>
	</ul>
</div>
<div class="rig">
</div>
</body>
</html>