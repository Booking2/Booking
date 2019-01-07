<!-- 出租我的住宿信息 页面  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/bootstrap.min (2).css" type="text/css">
<title>我的住宿：基本信息</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/捕获.PNG"
	type="image/x-icon">
<link rel="stylesheet" href="../css/addRerent.css" type="text/css">

<script src="../js/jquery-3.3.1.js"></script>
<script src="../js/addRerent.js"></script>
<script src="../js/bootstrap.min (2).js"></script>
</head>
<body>
	<div class="account row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<div class="join-logo">
				<img alt="logo"
					src="../img/857e24d682e37e1643fb09b3d17c4af26c4caec0.png">
			</div>
			<ul class="account-menu_updated ">
				<li><a href=""> <i class="glyphicon off"></i> 我的住宿
				</a></li>
				<li><a href=""> <i class="glyphicon on"></i> 退出
				</a></li>
			</ul>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="nav-steps col-sm-10">
			<ul class="nav main-nav" role="tablist">
				<li class="acti"><a data-toggle="pill">个人信息</a></li>
				<li id="jd"><a data-toggle="pill">酒店信息</a></li>
				<li id="fjzp"><a data-toggle="pill">房间照片</a></li>
				<li id="sk"><a data-toggle="pill">收款</a></li>
			</ul>
			<div class="compact-about-form tab-content">
				<!-- 填写个人信息 -->
				<div id="emnugrxi" class="container tab-pane active">
					<div>
						<div class="alignment">
							<h1>资林键</h1>
							<span>请输入贵住宿名称、联系方式和地址。</span>
						</div>
					</div>
					<%@ include file="menugr.jsp" %>
				</div>
				
				<!-- 填写酒店地址 -->
				<div id="menujd" class="container tab-pane fade">
					<%@ include file="menujd.jsp" %>
				</div>
				
				<!-- 上传酒店照片 -->
				<div id="menuzp" class="container tab-pane fade">
					<%@ include file="test.jsp" %>
				</div>
				
				<!-- 付款 -->
				<div id="menu3" class="container tab-pane fade">
					<input type="submit" name="proceed" value="完成"
						class="btn btn-block btn-primary btn-lg save_and_proceed">
				</div>
			</div>
		</div>
	</div>
</body>
</html>