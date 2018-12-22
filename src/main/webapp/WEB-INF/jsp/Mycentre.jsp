<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Mycentre.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css">
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/mycentre.js"></script> 
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>   
</head>
<body class="mysettings" data-spy="scroll" data-target="#myScrollspy">
	<%@ include file="BK_Head.jsp"%>
	<div class="col-md-2"></div>
	<div class="col-md-8 settings">
		<div class="box">
			<ul class="fl_l">
				<li class="active"><a href="##">菜单1</a></li>
				<li><a href="##">菜单2</a></li>
				<li><a href="##">菜单3</a></li>
				<li><a href="##">菜单4</a></li>
			</ul>
			<ul class="fl_r">
				<li style="height:150px;"> </li>
				<li style="height:50px;"> </li>
				<li style="height:50px;"> </li>
				<li style="height:50px;"> </li>
			</ul>
			<div style="clear: both;"></div>
		</div>

		<div class="col-md-2"></div>
	</div>
	<div style="margin-top: 500px;"><%@ include file="BK_Tail.jsp"%></div>
</body>
</html>