<!-- 显示该区下的所有酒店页面 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking.com缤客：位于${listcity[0].ciname}的酒店，现在就预定酒店</title>
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
			<div class="holet_cityname">
				<h1>${listcity[0].ciname}</h1>
				<h5>网友推荐旅行主题：购物、美食、观光</h5>
			</div> 
			<hr />
			<div id="right" class="rlt-right maps-overlay-sr-container"
				role="main">
				<div class=" sr_header--wrapper sr_header--wrapper-no-dates ">
					<div class="sr_header--title">
						<div class="sr_header  sr_header--reduced">
							<h2 class="sorth1">${listcity[0].ciname}：共713家住宿</h2>
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
				<!--  <div class="sr_item sr_item_new sr_item_default sr_property_block sr_item_bs sr_flex_layout sr_item_no_dates">
					酒店图片
					<div class="sr_item_photo" id="hotel_55070"> 
						<a class=" sr_item_photo_link sr_hotel_preview_track  "
							href="#" > <img class="hotel_image" src="https://ac-r.static.booking.cn/xdata/images/hotel/square200/149978407.jpg?k=e72ccc1061d3ca615c1b75ce281120f573e2218171a87edb1bd84f66c04b8122&amp;o="
							alt="湾景国际"  width="200"
							height="200"> 
						</a>
					</div>
					<div class="sr_item_content sr_item_content_slider_wrapper ">
						<div class="sr_property_block_main_row">
							<div class="sr_item_main_block">
								<h3 class="sr-hotel__title">
									 
								</h3>
								<i class="bk-icon-wrapper bk-icon-stars star_track"> 
								<svg class="bk-icon -sprite-ratings_stars_4" height="10" width="43" viewBox="0 0 52 12">
									<path fill="#FEBA02" d="M13 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.1-.5-.1-.5 0l-1.5 4-4.6.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3h.3l3.7-2.6 3.7 2.6H10.5c.1-.1.1-.2.1-.3L9.4 7.3l3.5-2.5c.1 0 .1-.1.1-.2zM26 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H23.6c.1-.1.1-.2.1-.3l-1.2-4.3L26 4.9v-.3zM39 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H36.6c.1-.1.1-.2.1-.3l-1.2-4.3L39 4.9v-.3zM52 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H49.6c.1-.1.1-.2.1-.3l-1.2-4.3L52 4.9v-.3z"></path></svg>
								</i>
								<svg 
									class="bk-icon -iconset-thumbs_up_square pp-icon-valign--inherit"
									fill="#FEBB02" height="20" rel="300"
									width="20" viewBox="0 0 128 128">
								   <path d="M112 8H16a8 8 0 0 0-8 8v96a8 8 0 0 0 8 8h96a8 8 0 0 0 8-8V16a8 8 0 0 0-8-8zM48 96H24V58h24zm56-25a8.7 8.7 0 0 1-2 6 8.9 8.9 0 0 1 1 4 6.9 6.9 0 0 1-5 7c-.5 4-4.8 8-9 8H56V58l10.3-23.3a5.4 5.4 0 0 1 10.1 2.7 10.3 10.3 0 0 1-.6 2.7L72 52h23c4.5 0 9 3.5 9 8a9.2 9.2 0 0 1-2 5.3 7.5 7.5 0 0 1 2 5.7z"></path>
								</svg>
					 描述区 
								<div class="hotel_desc">
									湾景国际提供设备齐全的无烟客房，距离湾仔地铁站有5分钟步行路程,距离香港会展中心有2分钟的步行路程，俯瞰着维多利亚港，提供内部餐厅和覆盖各处的WiFi。...
								</div>
							</div>
					 评分区 
							<div class="sr_item_review_block">
								<div class="reviewFloater reviewFloaterBadge__container">
									<div class="sr-review-score review-breakdown-tooltip-link" >
										<div class="bui-review-score c-score bui-review-score--end">
												<div class="bui-review-score__badge" >7.7</div>
												<div class="bui-review-score__content">
													<div class="bui-review-score__title" aria-label="好">
														好</div>
													<div class="bui-review-score__text">5,859条住客点评</div>
												</div>
										</div>   
									</div>
					 点击显示该酒店下的房间 
									<div
										class="sr-cta-button-row sr-cta-button-bottom-spacing sr-cta-button-top-spacing">
										<div data-et-click="customGoal:UBKeJOLQLDHKdfXJeZCMVSHT:1">
											<a class="b-button b-button_primary sr_cta_button no_dates_click jq_tooltip">
											  <span class="b-button__text"> 显示价格 </span>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="sr_rooms_table_block clearfix"> 
								<div class="loc_sr_review better_contrast_review">
									<a class="good_review_text" > “位置很好，服务很不錯！ ” </a>
									<div class="loc_sr_reviewer">
										<i class="bicon-LoginIcon"></i><strong>Piglet🐷</strong><span>，zw</span>
									</div>
								</div> 
						</div>
					</div> 
					<div class="clearfix"></div>
				</div>  --> 
			 </div>  
			
		 </div>
		 <%@ include file="BK_Holet.jsp"%>
		</div>
		<div class="col-md-2"></div>
	</div>
</body>
</html>