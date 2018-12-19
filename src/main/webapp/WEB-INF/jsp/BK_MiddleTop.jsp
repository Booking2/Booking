<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中上部</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
 *{
      margin: 0;
      padding: 0;
  }
  div {
    display: block;
 }
 .Middle_top{
      height: 250px;
      background-color: #F0F0F0;
 }
 .Middle_top_fond1{
      margin-left:142px;
      padding-top:30px;
      font-size:25px; 
 }
 .Middle_top_fond2{
      margin-left:142px; 
      font-size:15px;
 }
 .promotion-postcards-list{
 	  height: 574px;
 }
 .promotion-postcards_row{
 	  width: 100%;
 	  height: 272px;
 	  padding-bottom: 15px;
 }
 .promotion-postcard__large{
 	  padding-right: 8px;
 	  padding-left: 0px;
 	  box-sizing: border-box;
      float: left;
      width: 50%;
      height: 270px;
 }
 .promotion-postcard__small{
 	  float: left;
      width: 33.333333%;
      height: 272px;
 }
 .col-sm-2{
      border-style:solid;
 	  border-color: black;
 }
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
 .carousel-control-next{
	  margin-top:-400px;
	  margin-left:480px;
	  z-index:999;
 }
</style>
<title>Booking.com缤客:提供湖南省酒店网上预定，现在就查询预定酒店</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/捕获.PNG"
	type="image/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 写响应式 -->
	<div class="row container-fluid">
		<%@ include file="BK_Head.jsp"%>
		<div class="Middle_top">
			<div class="Middle_top_fond1">缤纷四季优惠搜不停</div>
			<div class="Middle_top_fond2">从舒适的乡村民宿到时髦的都市公寓</div>
			<input type="text"
				style="background:url('${pageContext.request.contextPath}/img/双人床.png')no-repeat scroll 16px center transparent;background-size:35px; background-color:#fff"
				name="ss" id="Middle_top_destination" placeholder="目的地？" value="">
			<input
				style="background:url('${pageContext.request.contextPath}/img/日历 (2).png')no-repeat scroll 16px  center transparent;background-size:35px; background-color:#fff"
				disabled="disabled" name="time" id="Middle_top_time"
				placeholder="入住   -  退房" value="">
			<div class="Middle_top_ss">搜索</div>
		</div>
		<div class="col-md-2"></div>
		<div class="promotion-postcards-list col-md-8">
			<!-- /=======================前面两个框=============/ -->
			<div class="promotion-postcards_row" id="city1">
				<c:forEach items="${getlistcity}" var="city" varStatus="status">
					<!--attr-id="promotion-postcard__large_1"  -->
					<div id="${status.index}" class="promotion-postcard__large"
						style="background-image: url('${pageContext.request.contextPath}/img/${city.ciictures}')">
						<div>
							<h3 id="promotion-postcard__large_1_">${city.ciname}</h3>
							<h5 id="promotion-postcard__large_1_1">1,000家住宿</h5>
							<span rel="300" title="不感兴趣" class="promotion-postcard_bg">╳</span>
						</div>
						<div class="promotion-postcard__large_price">
							<div id="promotion-postcard__large_1_1_">均价</div>
							<br />
							<p id="promotion-postcard__large_1_1_1">245元</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- /=======================后面三个框=============/ -->
			<div class="promotion-postcards_row" id="city"></div>
			<!--=======================酒店图片切换=============  -->
			<div class="iframe">
				<iframe class="rooms" src="getrooms" width="100%" frameborder="0"
					height="550px"></iframe>
			</div>
			<!--=======================房间类型图片切换=============  -->
			<div class="housing">
				<%@ include file="BK_Housing.jsp"%>
			</div>
			<!--=======================点评==================-->
			<div>
				<%@ include file="BK_Comment.jsp"%>
			</div>
		</div>

		<div style="bottom: 0px; width: 100%; margin-top: 1850px;">
			<%@ include file="BK_Tail.jsp"%>
		</div>
		<div class="col-sm-2"></div>

	</div>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/Middle.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/middle.css"
	type="text/css">
</html>
