<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 	  border-style:solid;
 	  border-color: black;
 	  padding-right: 8px;
 	  padding-left: 0px;
 	  box-sizing: border-box;
      float: left;
      width: 50%;
      height: 270px;
 }
 .promotion-postcard__small{
 	  border-style:solid;
 	  border-color: black;
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
</head>
<body>
<!-- 写响应式 -->
<div class="row container-fluid">
   <%@ include file = "BK_Head.jsp" %> 
   <div class="Middle_top">
     <div class="Middle_top_fond1">缤纷四季优惠搜不停</div>
     <div class="Middle_top_fond2">从舒适的乡村民宿到时髦的都市公寓</div>    
   </div>
	  <div class="col-sm-1"></div>
	   <div class="promotion-postcards-list col-sm-10">
	   	 <div class="promotion-postcards_row">
	   	 	<div class="promotion-postcard__large">

	   	 	</div>
	   	 	<div class="promotion-postcard__large"></div>
	   	 </div>
	   	 <div class="promotion-postcards_row">
	   	 	<div class="promotion-postcard__small"></div>
	   	 	<div class="promotion-postcard__small"></div>
	   	 	<div class="promotion-postcard__small"></div>
	   	 </div>
	   </div>
   <div class="col-sm-1"></div>
</div>
</body>
</html>