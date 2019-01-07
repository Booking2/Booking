<!-- 显示该区下的所有酒店页面 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking.com缤客：位于${listcity[0].ciname}的酒店，现在就预定酒店</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/捕获.PNG"
	type="image/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/sumholet.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/sumholet.css"
	type="text/css">
</head>
<body>
	<div class="holet">
		<%@ include file="BK_Head.jsp"%>
		<div class="col-md-2"></div>
		<div class="col-md-8">
		    <input type="hidden" class="param" value="${param.currentPageNo}"/>
		    <div style="margin-top: 5px"><a href="/bk_city/getlistbk_city">首页</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a href="/bk_city/getlistbk_city">湖南省</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;${listcity[0].ciname}</div>
			<div class="holet_cityname">
			    <span ><img style="width: 140px " height="70px" src="../img/${listcity[0].ciictures}"></span>
				<h1>${listcity[0].ciname}</h1>
				<h5>网友推荐旅行主题：购物、美食、观光</h5> 
			</div> 
			<hr />
			<div id="right" class="rlt-right maps-overlay-sr-container"
				role="main">
				<div class=" sr_header--wrapper sr_header--wrapper-no-dates ">
					<div class="sr_header--title">
						<div class="sr_header  sr_header--reduced">
							<h2 class="sorth1">${listcity[0].ciname}：共${pageTool.totalCount}家住宿</h2>
						</div>
					</div>
				</div>

				<div data-block-id="sort_bar">
					<div id="sort_by"  class=" hilite  " style="visibility: visible;">
						<ul class="sort_option_list" >
							<li class=" sort_category   sort_popularity "><a
								href="/searchresults.zh-cn.html?aid=334565;label=baidu-brandzone_booking-brand-list1;sid=ecbbabdb117be81dcf85176d5bc3daec;city=-1353149;class_interval=1;dest_id=-1353149;dest_type=city;from_idr=1;ilp=1;label_click=undef;raw_dest_type=city;room1=A%2CA;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=92000f8b529d0335;ssb=empty&amp;;order=popularity"
								class="sort_option " > 缤客推荐 </a></li>
							<li class=" sort_category  selected  sort_hpe "><a
								href="/searchresults.zh-cn.html?aid=334565;label=baidu-brandzone_booking-brand-list1;sid=ecbbabdb117be81dcf85176d5bc3daec;city=-1353149;class_interval=1;dest_id=-1353149;dest_type=city;from_idr=1;ilp=1;label_click=undef;raw_dest_type=city;room1=A%2CA;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=92000f8b529d0335;ssb=empty&amp;;order=hpe"
								class="sort_option " > 优先显示低价住宿 </a></li>
							<li class=" sort_category   with_dd sort_class "><a
								href="/searchresults.zh-cn.html?aid=334565;label=baidu-brandzone_booking-brand-list1;sid=ecbbabdb117be81dcf85176d5bc3daec;city=-1353149;class_interval=1;dest_id=-1353149;dest_type=city;from_idr=1;ilp=1;label_click=undef;raw_dest_type=city;room1=A%2CA;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=92000f8b529d0335;ssb=empty&amp;;order=class"
								class="sort_option " data-category="class" role="button"
								aria-haspopup="true"> 星级 <svg
										class="bk-icon -sprite-down_orange bui__down_orange"
										height="10" width="10" viewBox="0 0 10 6"> <path
										fill="#000" d="M10 0L5 6 0 0z"></path></svg>
							</a></li>
							<li class=" sort_category   sort_class_and_price "><a
								href="/searchresults.zh-cn.html?aid=334565;label=baidu-brandzone_booking-brand-list1;sid=ecbbabdb117be81dcf85176d5bc3daec;city=-1353149;class_interval=1;dest_id=-1353149;dest_type=city;from_idr=1;ilp=1;label_click=undef;raw_dest_type=city;room1=A%2CA;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=92000f8b529d0335;ssb=empty&amp;;order=class_and_price"
								class="sort_option " data-category="class_and_price"> 评级和价格
							</a></li>
							<li class=" sort_category   sort_distance_from_landmark "><a
								href="/searchresults.zh-cn.html?aid=334565&amp;label=baidu-brandzone_booking-brand-list1&amp;sid=ecbbabdb117be81dcf85176d5bc3daec&amp;city=-1353149&amp;class_interval=1&amp;dest_id=-1353149&amp;dest_type=city&amp;from_idr=1&amp;ilp=1&amp;label_click=undef&amp;raw_dest_type=city&amp;room1=A%2CA&amp;sb_price_type=total&amp;shw_aparth=1&amp;slp_r_match=0&amp;srpvid=92000f8b529d0335&amp;ssb=empty&amp;order=distance_from_landmark&amp;dst_landmark=cc"
								class="sort_option " data-category="distance_from_landmark">
									距离市中心 </a></li>
							<li class=" sort_category   sort_bayesian_review_score "><a
								href="/searchresults.zh-cn.html?aid=334565;label=baidu-brandzone_booking-brand-list1;sid=ecbbabdb117be81dcf85176d5bc3daec;city=-1353149;class_interval=1;dest_id=-1353149;dest_type=city;from_idr=1;ilp=1;label_click=undef;raw_dest_type=city;room1=A%2CA;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=92000f8b529d0335;ssb=empty&amp;;order=bayesian_review_score"
								class="sort_option " data-category="bayesian_review_score">
									高点评分数及数量 </a></li>
							<li class=" sort_category   sort_nr_reviews "><a
								href="/searchresults.zh-cn.html?aid=334565;label=baidu-brandzone_booking-brand-list1;sid=ecbbabdb117be81dcf85176d5bc3daec;city=-1353149;class_interval=1;dest_id=-1353149;dest_type=city;from_idr=1;ilp=1;label_click=undef;raw_dest_type=city;room1=A%2CA;sb_price_type=total;shw_aparth=1;slp_r_match=0;srpvid=92000f8b529d0335;ssb=empty&amp;;order=nr_reviews"
								class="sort_option " data-category="nr_reviews"> 点评数量从高到低 </a></li>

						</ul>
					</div>
				</div>
				 <div class="holetdetails">  
			    </div>   
			   <%@ include file="page.jsp"%>
		 </div>
		 <%@ include file="BK_Holet.jsp"%>
		 <div style="margin-top: 10px;margin-bottom: 10px" ></div>
		 <%@ include file="BK_Narrow.jsp"%>
		</div>
		<div style="bottom: 0px; width: 100%; margin-top: 1510px;">
			<%@ include file="BK_Tail.jsp"%>
		</div>
		<div class="col-md-2"></div>
	</div>
</body>
</html>