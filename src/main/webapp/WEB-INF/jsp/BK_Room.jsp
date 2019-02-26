<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:forEach items="${gethotelAll}" var="all">
  <title>${all.honame}预订_${all.honame}价格优惠_Booking.com缤客</title>
</c:forEach>
 
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/room.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/toastr.css"
	type="text/css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/toastr.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/iepng.js"></script>

<link rel="icon" href="${pageContext.request.contextPath}/img/捕获.PNG"
	type="image/x-icon">
 

</head>
<body>
<!-- 代码begin -->
<div> 
 
  <%@ include file="BK_Head.jsp"%>
   <div class="col-md-2"></div>
   <div class="col-md-8">
   <c:forEach items="${gethotelAll}" var="alls">
     <div style="margin-top: 5px"><a href="/bk_city/getlistbk_city">首页</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a href="/bk_city/getlistbk_city">湖南省</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a href="/bk_city/citybycityid?ciid=${alls.ciid}">${alls.cname}市</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a href="#">${alls.aname}</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span id="honame">${alls.honame}</span></div>
   </c:forEach>
       <div class="room_2">
           <!-- 须知 -->
       <div class="hp_nav_bar_wrapper hp-nav-bottom-border">
			<ul class="hp_nav_bar boldify_hp_nav">
				<li class="hp_nav_bar_item">
					<a href="#rooms_table" class="hp_nav_availability_link nav-link-room--bold  selected" data-ref="hp_availability_style_changes" data-scroll="a[name=availability]" rel="main" data-tab-link="">
					信息&amp;价格
					</a>
				</li>
				<li class="hp_nav_bar_item">
					<a href="#hp_facilities_box" data-component="core/sliding-panel-trigger" data-target="hp-facilities-sliding" data-toggle="1" class="hp_nav_facilities_link">
					设施
					</a>
				</li>
				<li class="hp_nav_bar_item">
					<a href="#hotelPoliciesInc" class="hp_nav_policies_link selected" data-ref="hp_policies_box" data-scroll="a[name=policies]" rel="main" data-tab-link="" data-et-click="BdTeQFQFaLEaKXONVVRIcZMO:1">
					条款规定
					</a>
				</li>
				<li class="hp_nav_bar_item">
					<a href="#hp_small_print" class="hp_nav_important_link selected" data-ref="hp_important_info_box" data-scroll="a[name=important_info]" rel="main" data-tab-link="">
					预订须知
					</a>
				</li> 
			</ul>
		</div> 
       </div>
       <!-- 酒店名称 -->
		<div class="room_3">
		    <div>
		       <c:forEach items="${gethotelAll}" var="holet">
		         <input type="hidden" id="hidden1" value="${holet.hoid}"/>
		         <h2>${holet.honame}
		          <c:if test="${holet.hid  == 1}">
		             <span style="font-size:13px;">豪华型</span>
					 <i class='bk-icon-wrapper bk-icon-stars star_track'>
					   <svg class='bk-icon -sprite-ratings_stars_4' height='10' width='43' viewBox='0 0 52 12'>
					   <path fill='#FEBA02' d='M13 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.1-.5-.1-.5 0l-1.5 4-4.6.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3h.3l3.7-2.6 3.7 2.6H10.5c.1-.1.1-.2.1-.3L9.4 7.3l3.5-2.5c.1 0 .1-.1.1-.2zM26 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H23.6c.1-.1.1-.2.1-.3l-1.2-4.3L26 4.9v-.3zM39 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H36.6c.1-.1.1-.2.1-.3l-1.2-4.3L39 4.9v-.3zM52 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H49.6c.1-.1.1-.2.1-.3l-1.2-4.3L52 4.9v-.3z'></path></svg>
				    </i>
		          </c:if>
		          <c:if test="${holet.hid  == 2}">
		             <span style="font-size:13px;">尊贵型</span>
					 <i class='bk-icon-wrapper bk-icon-stars star_track'>
					   <svg class='bk-icon -sprite-ratings_stars_4' height='10' width='43' viewBox='0 0 52 12'>
					   <path fill='#FEBA02' d='M13 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.1-.5-.1-.5 0l-1.5 4-4.6.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3h.3l3.7-2.6 3.7 2.6H10.5c.1-.1.1-.2.1-.3L9.4 7.3l3.5-2.5c.1 0 .1-.1.1-.2zM26 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H23.6c.1-.1.1-.2.1-.3l-1.2-4.3L26 4.9v-.3zM39 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H36.6c.1-.1.1-.2.1-.3l-1.2-4.3L39 4.9v-.3zM52'></path></svg>
				    </i>
		          </c:if>
		          <c:if test="${holet.hid  == 3}">
		             <span style="font-size:13px;">舒适型</span>
					 <i class='bk-icon-wrapper bk-icon-stars star_track'>
					   <svg class='bk-icon -sprite-ratings_stars_4' height='10' width='43' viewBox='0 0 52 12'>
					   <path fill='#FEBA02' d='M13 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.1-.5-.1-.5 0l-1.5 4-4.6.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3h.3l3.7-2.6 3.7 2.6H10.5c.1-.1.1-.2.1-.3L9.4 7.3l3.5-2.5c.1 0 .1-.1.1-.2zM26 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H23.6c.1-.1.1-.2.1-.3l-1.2-4.3L26 4.9v-.3zM39'></path></svg>
				    </i>
		          </c:if>
		          <c:if test="${holet.hid  == 4}">
		             <span style="font-size:13px;">经济型</span>
					 <i class='bk-icon-wrapper bk-icon-stars star_track'>
					   <svg class='bk-icon -sprite-ratings_stars_4' height='10' width='43' viewBox='0 0 52 12'>
					   <path fill='#FEBA02' d='M13 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.1-.5-.1-.5 0l-1.5 4-4.6.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3h.3l3.7-2.6 3.7 2.6H10.5c.1-.1.1-.2.1-.3L9.4 7.3l3.5-2.5c.1 0 .1-.1.1-.2zM26'></path></svg>
				    </i>
		          </c:if>
		           <svg class='bk-icon -iconset-thumbs_up_square pp-icon-valign--inherit' fill='#FEBB02' height='20' rel='300' width='20' viewBox='0 0 128 128'>
				   <path d='M112 8H16a8 8 0 0 0-8 8v96a8 8 0 0 0 8 8h96a8 8 0 0 0 8-8V16a8 8 0 0 0-8-8zM48 96H24V58h24zm56-25a8.7 8.7 0 0 1-2 6 8.9 8.9 0 0 1 1 4 6.9 6.9 0 0 1-5 7c-.5 4-4.8 8-9 8H56V58l10.3-23.3a5.4 5.4 0 0 1 10.1 2.7 10.3 10.3 0 0 1-.6 2.7L72 52h23c4.5 0 9 3.5 9 8a9.2 9.2 0 0 1-2 5.3 7.5 7.5 0 0 1 2 5.7z'></path>
				   </svg>
		         
		       </c:forEach>
		       <!--  推荐双人 -->
		       <span>
				<span class="">
					<span class="invisible_spoken">推荐双人入住. 位置和设施适合2人一起入住</span>
						<span aria-hidden="true" class="facility-badge__wrapper" data-et-mouseenter="  " data-et-view="  ">
						<span class="
						facility-badge__title
						facility-badge__icon-hp
						jq_tooltip
						facility-badge__with-vicon
						facility-badge__icon-hp--no-top-margin
						" id="b_tt_holder_11" >
						<span class="facility-badge__vicon-wrapper">
							<i class="facility-badge__vicon bicon-user-couple"></i>
						</span>
						<span class="facility-badge__tooltip-title">推荐双人入住</span>
						</span>	  
					</span>
				</span>
			   </span>
			   <!-- 机场 -->
			   <span>
					<span class="">
						<span class="invisible_spoken"></span>
						<span aria-hidden="true" class="facility-badge__wrapper" data-et-mouseenter="  " data-et-view="  ">
							<span class="
							facility-badge__title
							facility-badge__icon-hp
							jq_tooltip
							facility-badge__with-vicon
							" id="b_tt_holder_10" >
							<span class="facility-badge__vicon-wrapper">
							<i class="facility-badge__vicon bicon-shuttlesmall"></i>
							</span>
							<span class="facility-badge__tooltip-title">机场班车</span>
							</span>
						</span>
					</span>
				</span> 
				<!-- 收藏 --> 
		            <button class="collection" onclick="imgs()">
				        <img   src="../img/xx.png"/> 
				         <h5 id="collection1">收藏</h5>
				    </button> 
				   
				<!-- 右側预订 -->
				<form action="" method="post" id="top-book" class="wrap-hotelpage-top__book top-book-form form_wl_fix">
				   <a style="color: #fff; font-size: 0;"  href="#rooms_table">
					<button type="button" class="b-button b-buttons b-button_primary book_now_button_handler" style="text-shadow: black 5px 3px 3px;">
						<span class="b-button__text">
					     	现在就预订
						</span> 
						<span class="b-button__from-text book_now_rt_summary g-hidden"></span>
					</button>
				   </a>
					<h5 id="button_text1">查看空房情况和房价</h5>
					
					<div class="bpg_index" >
					<div id="rate_guarantee" class="">
					<i class="bpg_logos"></i>
					   <a style="font-size: 15px;" href="javascript:void(0);" data-bui-component="Popover" data-popover-content-id="bpg_desktop_badge" data-popover-position="bottom" data-popover-no-arrow="" tabindex="0" class=" 
						open-bpg-in-overlay-instead
						pp_bpg_tooltip_holder" aria-describedby="current-popover">价格更放心
						</a>
					</div>
	            </div>
				</form>
				
			  </h2> 
			  <!-- 酒店位置 -->
			  <div style="margin: 7px 0 auto auto;"> 
			        <img src="../img/wz1.png" style="width:25px; height:25px;">
				     <c:forEach items="${gethotelAll}" var="getall"> 
				         <span style="color: blue">
				            ${getall.hoaddress}
				         </span>
					 </c:forEach>  
			  </div>
		      </div>
		</div>
		
       <!-- 图片轮播-->
       <div class="room">
           <div class="ban" id="demo1">
			<div class="ban2" id="ban_pic1">
				<div class="prev1" id="prev1"><img src="../images/index_tab_l.png" width="28" height="51"  alt=""/></div>
				<div class="next1" id="next1"><img src="../images/index_tab_r.png" width="28" height="51"  alt=""/></div>
				<ul>
				   <c:forEach items="${getpictures}" var="pictures">
				      <li><a href="javascript:;"><img src="../upload/${pictures.pipicture}" width="500px" height="500px" alt=""/></a></li> 
				   </c:forEach> 
				</ul>
			</div>
			<div class="min_pic">
				<div class="prev_btn1" id="prev_btn1"><img src="../images/feel3.png" width="9" height="18"  alt=""/></div>
				<div class="num clearfix" id="ban_num1">
					<ul>
					    <c:forEach items="${getpictures}" var="pictures">
					      <li><a href="javascript:;"><img src="../upload/${pictures.pipicture}" width="80" height="80" alt=""/></a></li> 
					    </c:forEach> 
					</ul>
				</div>
				<div class="next_btn1" id="next_btn1"><img src="../images/feel4.png" width="9" height="18"  alt=""/></div>
			</div>
		</div> 
		<div class="mhc"></div> 
		<div class="pop_up" id="demo2">
			<div class="pop_up_xx"><img src="../images/chacha3.png" width="40" height="40"  alt=""/></div>
			<div class="pop_up2" id="ban_pic2">
				<div class="prev1" id="prev2"><img src="../images/index_tab_l.png" width="28" height="51"  alt=""/></div>
				<div class="next1" id="next2"><img src="../images/index_tab_r.png" width="28" height="51"  alt=""/></div>
				<ul>
					<c:forEach items="${getpictures}" var="pictures">
				      <li><a href="javascript:;"><img src="../upload/${pictures.pipicture}" width="500" height="500" alt=""/></a></li> 
				   </c:forEach> 
				</ul>
			</div>
		</div>
       </div>
       <!-- 酒店信息  -->
       <div class="room_information">
          <span class="hp-description--property-name-top-ranked dtri hp-description--property-name-top-ranked--contrast">
	          <img style="width:18px;height: 18px;" src="../img/zjx.png"/>
	       	     
	       	  <c:forEach items="${gethotelAll}" var="getall"> 
	       	         ${getall.cname}精选推荐之一
		         <p style="color: #000">
		            ${getall.hodescribe}
		         </p>
			 </c:forEach>     
       	  </span>
       	  <div class="bui-alert bui-alert--success bui-u-bleed@small bui-spacer--large" role="status">
			<span class="icon--hint bui-alert__icon" role="presentation">
			<svg class="bk-icon -iconset-credit_card_back" fill="#0AB21B" height="24" role="presentation" width="24" viewBox="0 0 128 128"><path d="M108 24H20A12 12 0 0 0 8 36v56a12 12 0 0 0 12 12h88a12 12 0 0 0 12-12V36a12 12 0 0 0-12-12zm-88 8h88a4 4 0 0 1 4 4v4H16v-4a4 4 0 0 1 4-4zm88 64H20a4 4 0 0 1-4-4V56h96v36a4 4 0 0 1-4 4zM24 72h48v8H24z"></path></svg>
			</span>
			<div class="bui-alert__description">
				<p class="bui-alert__text">
				<b>预订无需信用卡。</b>我们将向你发送订单确认邮件。
				</p>
		    </div>
		  </div>
		  <div class="bui-alert bui-alert--success bui-alert--large bui-u-bleed@small lock-price-banner lock-price-banner--no-button" role="status">
			<span class="icon--hint bui-alert__icon" role="presentation">
			<svg class="bk-icon -iconset-lock_open bui-banner__icon" fill="#0AB21B" height="32" width="32" viewBox="0 0 128 128"><path d="M104 48H44V36a20 20 0 0 1 36.7-11 4 4 0 1 0 6.6-4.5A28 28 0 0 0 36 36v12H24a8 8 0 0 0-8 8v56a8 8 0 0 0 8 8h80a8 8 0 0 0 8-8V56a8 8 0 0 0-8-8zM64 96a12 12 0 1 1 12-12 12 12 0 0 1-12 12z"></path></svg>
			</span>
			<div class="bui-alert__description">
				<span class="bui-alert__title">
				立即预订，享受优惠价格！
				</span>
				<p class="bui-alert__text">
				价格可能会上涨，立即担保您的预订
				</p>
			</div>
		</div>
		<div>
		   <h3>空房信息</h3>
		     <!-- 入住日期及退房日期  -->	
			<div class="sb-searchbox__row u-clearfix ">
				<label class="sb-searchbox__label -main" for="ss" > 入住日期： </label>
				<input type="text" name="ss" id="time" class="c-autocomplete__input sb-searchbox__input sb-destination__input" style="background:url('${pageContext.request.contextPath}/img/日历 (2).png')no-repeat scroll 0px  center transparent;background-size:35px; background-color:#fff"
				disabled="disabled" cursor="pointer" placeholder="入住日期  -  退房日期"  value="">
	
		  <!-- 搜索  --> 
	             <button   class="sb-searchbox__button  ">
					<span style="color: #fff">查看空房情况</span> 
				</button>
		 <!-- 日历控件 -->
				<div class="calendarios">
				    <%@ include file="calendario.jsp"%>
				</div>
			</div>
				 <div class="J_Limitss"> 
					  <button class="J_Count J_Limit" data-value="1" data-limit="90">
					 </button>
                 </div>
		</div>
		
		<!-- 房间信息 -->
	    <%@ include file="Room_Massage.jsp"%> 
	    
	    <!-- 3大理由 -->
	    <div id="usp-hotelpage-main-col" class="var-2 usp-hotelpage--chains ">
		<div class="containh2">
		<h3>
		一定要来住这里的3大理由
		</h3> 
		</div>
		<div class="content-wrapper clearfix">
		<div id="uspsbox" class="boxx readable-sub-paragraph usp-no-sub-headers">
		<!-- Heading read by screen reader --> 
		<div id="usp_rates" class="oneusp usp_tick2">
		<div class="hp-usp-icon usp-tick-icon" aria-hidden="true">
		<svg class="bk-icon -sprite-usp-tick-with-circle-in-main-col bui__icon_tick_with_circle" height="32" width="32" viewBox="0 0 32 32"><circle fill="#FFF" cx="16" cy="16" r="15.5"></circle><path fill="#3CB3E7" d="M16 32C7.2 32 0 24.8 0 16S7.2 0 16 0s16 7.2 16 16-7.2 16-16 16zm0-31C7.8 1 1 7.8 1 16s6.8 15 15 15 15-6.8 15-15S24.2 1 16 1z"></path><g><path fill="#3CB3E7" d="M21.3 15.9c-1.4 0-2.4-1.1-2.4-2.4s1.1-2.4 2.4-2.4c1.4 0 2.4 1.1 2.4 2.4s-1 2.4-2.4 2.4"></path><path fill="#003580" d="M18.2 14.4L13.4 19l-3.7-3.6-2.5 2.4 6.2 6 7.4-7.2c-1.2-.1-2.3-1.1-2.6-2.2"></path></g></svg>
		</div>
		<p class="usp_heading pp_bpg_tooltip_holder" data-component="tt-fancy" data-content="">价格优惠不容错过！</p>
		</div>
		<div id="usp_mypage" class="oneusp oneusp usp_tick2">
		<div class="hp-usp-icon usp-tick-icon" aria-hidden="true">
		<svg class="bk-icon -sprite-usp-tick-with-circle-in-main-col bui__icon_tick_with_circle" height="32" width="32" viewBox="0 0 32 32"><circle fill="#FFF" cx="16" cy="16" r="15.5"></circle><path fill="#3CB3E7" d="M16 32C7.2 32 0 24.8 0 16S7.2 0 16 0s16 7.2 16 16-7.2 16-16 16zm0-31C7.8 1 1 7.8 1 16s6.8 15 15 15 15-6.8 15-15S24.2 1 16 1z"></path><g><path fill="#3CB3E7" d="M21.3 15.9c-1.4 0-2.4-1.1-2.4-2.4s1.1-2.4 2.4-2.4c1.4 0 2.4 1.1 2.4 2.4s-1 2.4-2.4 2.4"></path><path fill="#003580" d="M18.2 14.4L13.4 19l-3.7-3.6-2.5 2.4 6.2 6 7.4-7.2c-1.2-.1-2.3-1.1-2.6-2.2"></path></g></svg>
		</div>
		<p class="usp_heading">
		你的订单你做主
		</p>
		</div>
		<div data-et-view="BUdeUbKCBZDYBSAYeDaRIKe:1"></div>
		<div id="usp_safe" class="oneusp usp_tick2">
		<div class="hp-usp-icon usp-tick-icon" aria-hidden="true">
		<svg class="bk-icon -sprite-usp-tick-with-circle-in-main-col bui__icon_tick_with_circle" height="32" width="32" viewBox="0 0 32 32"><circle fill="#FFF" cx="16" cy="16" r="15.5"></circle><path fill="#3CB3E7" d="M16 32C7.2 32 0 24.8 0 16S7.2 0 16 0s16 7.2 16 16-7.2 16-16 16zm0-31C7.8 1 1 7.8 1 16s6.8 15 15 15 15-6.8 15-15S24.2 1 16 1z"></path><g><path fill="#3CB3E7" d="M21.3 15.9c-1.4 0-2.4-1.1-2.4-2.4s1.1-2.4 2.4-2.4c1.4 0 2.4 1.1 2.4 2.4s-1 2.4-2.4 2.4"></path><path fill="#003580" d="M18.2 14.4L13.4 19l-3.7-3.6-2.5 2.4 6.2 6 7.4-7.2c-1.2-.1-2.3-1.1-2.6-2.2"></path></g></svg>
		</div>
		<p class="usp_heading">
		安全的预订
		</p>
		</div>
		</div>
		</div>
		</div>
		<hr/>
		<!-- 设施与服务 -->
		<h3 id="hp_facilities_box" name="hp_facilities_box">设施与服务</h3>
		  <div class="facilitiesChecklist" >
			<div class="facilitiesChecklistSection" data-section-id="5">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-bath hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><path d="M32 44a8 8 0 1 0-8-8 8 8 0 0 0 8 8zm80 41.9V94c0 7.7-5.3 14.4-12 17l2.7 2a4.2 4.2 0 0 1 .3 5.7 4 4 0 0 1-5.8.1L90 112H38l-7 6.7a4.2 4.2 0 0 1-5.7.3 4 4 0 0 1-.1-5.8L28 111c-6.8-2.6-12-9.3-12-17v-8.1A16.2 16.2 0 0 1 8 72a16 16 0 0 1 16-16h26a16.2 16.2 0 0 1 14-8 9.8 9.8 0 0 1 4 1 20 20 0 0 1 16-9 20 20 0 0 1 19.6 16c11.6 0 16.4 7.7 16.4 16 0 6.6-2.8 10.8-8 13.9zM32 52a16 16 0 1 1 16-16 16 16 0 0 1-16 16zm28-20a12 12 0 1 1 12-12 12 12 0 0 1-12 12zm0-8a4 4 0 1 0-4-4 4 4 0 0 0 4 4zm-5.3 40H24a8 8 0 1 0 0 16h80a8 8 0 0 0 0-16h-8s1-16-12-16a13.3 13.3 0 0 0-13 9 22 22 0 0 0-7-1c-7.8 0-9.3 8-9.3 8z"></path></svg>
			</span>
			浴室
			</h5>
			<ul>
			<li>
			<span data-name-en="Toilet paper" class="  ">
			卫生纸
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Towels" class="  ">
			毛巾
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Slippers" class="  ">
			拖鞋
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Bathroom" class="  ">
			私人浴室
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Toilet" class="  ">
			卫生间
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Free Toiletries" class="  ">
			免费洗浴用品
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Hair Dryer" class="  ">
			吹风机
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Shower" class="  ">
			淋浴
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			</ul>
			</div>
			<div class="facilitiesChecklistSection" data-section-id="12">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-oven hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><path d="M8 40v76a4 4 0 0 0 4 4h104a4 4 0 0 0 4-4V40zm96 56H24V72h80zm0-32H24v-8h80zm12-56H12a4 4 0 0 0-4 4v20h112V12a4 4 0 0 0-4-4zM92 26a6 6 0 1 1 6-6 6 6 0 0 1-6 6zm16 0a6 6 0 1 1 6-6 6 6 0 0 1-6 6z"></path></svg>
			</span>
			厨房
			</h5>
			<ul>
			<li>
			<span data-name-en="Electric Kettle" class="  ">
			电烧水壶
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			</ul>
			</div>
			<div class="facilitiesChecklistSection" data-section-id="-2">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-pawprint hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><path d="M61 34c0 9.9-6.3 18-14 18s-14-8.1-14-18 6.3-18 14-18 14 8.1 14 18zm20-18c-7.7 0-14 8.1-14 18s6.3 18 14 18 14-8.1 14-18-6.3-18-14-18zM16.5 47.4c-6.9 2.1-10.3 11-7.6 20S19.4 82.1 26.3 80c6.9-2.1 10.3-11 7.6-20S23.4 45.4 16.5 47.4zM94.2 60c-2.7 9 .7 18 7.6 20 6.9 2.1 14.6-3.6 17.3-12.5s-.7-18-7.6-20C104.6 45.4 96.9 51 94.2 60zM64 104c11.9 0 6.1 8 22 8 4.9-.2 10.9-5.3 11-16 .1-13.8-12.4-34-33-35-20.6 1-33.1 21.2-33 35 .1 10.7 6.1 15.8 11 16 15.9 0 10.1-8 22-8z"></path></svg>
			</span>
			宠物
			</h5>
			<ul>
			<li class="policy">
			<p>
			不允许携带宠物入住。
			</p>
			</li>
			</ul>
			</div>
			<div class="facilitiesChecklistSection" data-section-id="15">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-couch hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><path d="M120 44v44a8 8 0 0 1-8 8h-8v6a2 2 0 0 1-2 2H90a2 2 0 0 1-2-2v-6H40v6a2 2 0 0 1-2 2H26a2 2 0 0 1-2-2v-6h-8a8 8 0 0 1-8-8V44a4 4 0 0 1 8 0v28h96V44a4 4 0 0 1 8 0zm-60-4a8 8 0 0 0-8-8H32a8 8 0 0 0-8 8v24h36zm44 0a8 8 0 0 0-8-8H76a8 8 0 0 0-8 8v24h36z"></path></svg>
			</span>
			休息区
			</h5>
			<ul>
			<li>
			<span data-name-en="Seating area" class="  ">
			客厅角
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			</ul>
			</div>
			<div class="facilitiesChecklistSection" data-section-id="6">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-screen hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><path d="M116 24H12a4 4 0 0 0-4 4v64a4 4 0 0 0 4 4h36v4a4 4 0 0 0 4 4h24a4 4 0 0 0 4-4v-4h36a4 4 0 0 0 4-4V28a4 4 0 0 0-4-4zm-5 64H16V32h95z"></path></svg>
			</span>
			媒体/科技
			</h5>
			<ul>
			<li>
			<span data-name-en="Flat-screen TV" class="  ">
			平板电视
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Cable channels" class="  ">
			有线频道
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Telephone" class="  ">
			电话
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			</ul>
			</div>
			<div class="facilitiesChecklistSection" data-section-id="7">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-food hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><path d="M44.1 8.9L48 44a12 12 0 0 1-12 12h-3.6l3.4 59.8a4 4 0 0 1-4 4.2h-7.6a4 4 0 0 1-4-4.2L23.6 56H20A12 12 0 0 1 8 44l3.9-35.1a1 1 0 0 1 1-.9H15a1 1 0 0 1 1 1v19a4 4 0 0 0 4 4h4.8L26 9a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1l1.2 23H36a4 4 0 0 0 4-4V9a1 1 0 0 1 1-1h2.1a1 1 0 0 1 1 .9zM60 24v48h8l-3.8 43.8a4 4 0 0 0 4 4.2h7.6a4 4 0 0 0 4-4.2L80 8h-4a16 16 0 0 0-16 16zm60 8c0-13.3-7.2-24-16-24S88 18.8 88 32c0 11 5 20.2 11.6 23l-3.4 60.8a4 4 0 0 0 4 4.2h7.6a4 4 0 0 0 4-4.2L108.4 55c6.7-2.8 11.6-12 11.6-23z"></path></svg>
			</span>
			餐饮服务
			</h5>
			<ul>
			<li>
			<span data-name-en="bottle of water" class="  ">
			瓶装水
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			</ul>
			</div>
			<div class="facilitiesChecklistSection" data-section-id="11">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-wifi hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><circle cx="64" cy="100" r="12"></circle><path d="M118.3 32.7A94.9 94.9 0 0 0 64 16 94.9 94.9 0 0 0 9.7 32.7a4 4 0 1 0 4.6 6.6A87 87 0 0 1 64 24a87 87 0 0 1 49.7 15.3 4 4 0 1 0 4.6-6.6zM87.7 68.4a54.9 54.9 0 0 0-47.4 0 4 4 0 0 0 3.4 7.2 47 47 0 0 1 40.6 0 4 4 0 0 0 3.4-7.2z"></path><path d="M104 50.5a81.2 81.2 0 0 0-80 0 4 4 0 0 0 4 7 73.2 73.2 0 0 1 72 0 4 4 0 0 0 4-7z"></path></svg>
			</span>
			网络
			</h5>
			<ul>
			<li class="policy">
			<p>
			<span class="bui-badge bui_fill_constructive">免费！</span>
			住宿方于各处提供WiFi（免费）。
			</p>
			</li>
			</ul>
			</div>
			<div class="facilitiesChecklistSection" data-section-id="16">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-parking_sign hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><path d="M70.8 44H58v16h12.8a8 8 0 0 0 0-16z"></path><path d="M108 8H20A12 12 0 0 0 8 20v88a12 12 0 0 0 12 12h88a12 12 0 0 0 12-12V20a12 12 0 0 0-12-12zM70 76H58v24H42V28h28a24 24 0 0 1 0 48z"></path></svg>
			</span>
			停车场
			</h5>
			<ul>
			<li class="policy">
			<p>
			<span class="bui-badge bui_fill_constructive">免费！</span>
			无法提前预订：住宿场所可提供公共停车设施（免费）。 
			</p>
			</li>
			<li>
			<span data-name-en="secured parking" class="  ">
			停车场 - 带监控
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			</ul>
			</div>
			<div class="facilitiesChecklistSection" data-section-id="3">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-concierge hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><path d="M120 100a4 4 0 0 1-4 4H12a4 4 0 0 1 0-8h104a4 4 0 0 1 4 4zM56 32h16a4 4 0 0 0 0-8H56a4 4 0 0 0 0 8zm8 8a48 48 0 0 0-48 48h96a48 48 0 0 0-48-48z"></path></svg>
			</span>
			服务项目
			</h5>
			<ul>
			<li>
			<span data-name-en="Daily maid service" class="  ">
			每日清洁服务
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Luggage storage" class="  ">
			行李寄存
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Wake Up Service" class="  ">
			唤醒服务
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="24 hour Front Desk" class="  ">
			24小时前台
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			</ul>
			</div>
			<div class="facilitiesChecklistSection" data-section-id="1">
			<h5 data-et-view="">
			<span class="facilityGroupIcon">
			<svg class="bk-icon -iconset-info_sign hp__facility_group_icon" fill="#383838" height="20" width="20" viewBox="0 0 128 128"><path d="M49.4 85l4.2-17.2c.7-2.7.8-3.8 0-3.8a29 29 0 0 0-8.8 3.8l-1.8-3A48 48 0 0 1 66.7 53c3.7 0 4.3 4.3 2.5 11l-5 18c-.7 3.3-.3 4.3.5 4.3a19 19 0 0 0 8.2-4L75 85c-8.6 8.7-18.2 12-21.8 12s-6.4-2.3-3.8-12zM75 36a9.2 9.2 0 0 1-9.2 9c-4.4 0-7-2.7-6.8-7a9 9 0 0 1 9.1-9c4.6 0 6.9 3.2 6.9 7z"></path><path d="M62 16a48 48 0 1 1-48 48 48 48 0 0 1 48-48m0-8a56 56 0 1 0 56 56A56 56 0 0 0 62 8z"></path></svg>
			</span>
			综合设施
			</h5>
			<ul>
			<li>
			<span data-name-en="Heating" class="  ">
			暖气
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Safe deposit box" class="  ">
			保险箱
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Elevator" class="  ">
			电梯
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			<li>
			<span data-name-en="Airconditioning" class="  ">
			空调
			</span>
			<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:6"></span>
			</li>
			</ul>
			</div>
			<div style="clear:left;"></div>
			</div>
		 <hr/>
		 
		 <!-- 条款规定 -->
		 <h3 name="hotelPoliciesInc" id="hotelPoliciesInc">条款规定</h3>
		 
		 <div  class="
		descriptionsContainer
		clearfix
		hp-section
		hp-policies-block
		" style="font-size:14px; margin-top:10px; padding-top:0; padding-bottom:1.2em;" >
		<div class="description description_children-policy" id="children_policy">
		<p class="policy_name">
		<span class="policy_name_icon">
		<i class="bicon-user-family"></i>
		</span>
		<span><img src="../img/jt.png" style="width: 25px;height: 25px;"/>儿童和加床</span>
		</p>
		<p>
		允许客人携带儿童入住。
		</p>
		<p>
		<span class="bui-badge bui_fill_constructive">免费！</span>
		允许1名12岁以下的儿童，使用现有床铺免费。
		</p>
		<p>
		这间客房不可加床。
		</p>
		<div style="clear:both"></div>
		</div>
		<div class="description" id="age_restriction_policy">
		<p class="policy_name">
		<span class="policy_name_icon">
		<i class="bicon-occupancy"></i>
		</span>
		<span><img src="../img/nl.png" style="width: 20px;height: 20px;"/>
		无年龄限制
		</span>
		</p>
		<p>入住客人无年龄限制要求</p>
		</div>
		 
		<div class="description">
		<p class="policy_name">
		<span class="policy_name_icon">
		<i class="bicon-petfriendly"></i>
		</span>
		<span><img src="../img/cw.png" style="width: 20px;height: 20px;"/>宠物</span>
		</p>
		<p>
		不允许携带宠物入住。
		</p>
		<div style="clear:both"></div>
		</div>
		<span data-et-view="cCcCcCWZcbfdNDUMAPYNYKKUHAbCadTEIeBZSRT:1"></span>
		</div>
		<hr/>
		<!-- 须知 -->
		<h3 id="hp_small_print" name="hp_small_print">预订须知</h3>
			<div class="hp-section-container" >  
				<div class="descriptions">
				请注意，根据当地经营许可规定。客人须在入住时出示有效的中华人民共和国身份证。酒店对此造成的不便深表歉意。
				<p>住宿有权取消预留客房。预计于该时间点后到店的客人，请提前直接与住宿联系，联系方式请参见订单确认信。</p>
				</div> 
			</div> 
       </div>
        
        <!-- 左侧 -->
       <div class="room_left">
           <div class="hp-lists js-hp-wl-sidebar" >
				<div class="hp-lists-reserve">
					<form action="" method="post" id="top-book" class="wrap-hotelpage-top__book top-book-form form_wl_fix">
					  <a href="#rooms_table" style="color: #fff"  >
						<button type="button" class="b-button b-button_primary book_now_button_handler" style="text-shadow: black 5px 3px 3px;">
							<span class="b-button__text">
						     	现在就预订
							</span> 
							<span class="b-button__from-text book_now_rt_summary g-hidden"></span>
						</button>
					   </a>
						<h5 id="button_text">查看空房情况和房价</h5>
					 </form>
					 
	            </div> 
           </div>
           <div class="bpg_holder_light_block">
					<div id="rate_guarantee" class="">
					<i class=" bpg_logo "></i>
						<a href="javascript:void(0);" data-bui-component="Popover" data-popover-content-id="bpg_desktop_badge" data-popover-position="bottom" data-popover-no-arrow="" tabindex="0" class=" 
						open-bpg-in-overlay-instead
						pp_bpg_tooltip_holder" aria-describedby="current-popover">价格更放心
						</a> 
					</div>
	       </div>
	      <div class="hp-social_proof hp-social-proof-review_score reviews-snippet-sidebar" data-et-view="">
			<h3>
			看看住客最喜欢什么：
			</h3>
		  </div>
       </div>
   </div>
   <div class="BK_Tail" id="BK_Tail" style="bottom: 0; width: 100%; ">
			<%@ include file="BK_Tail.jsp"%>
   </div>
    
   <div class="col-md-2"></div>
</div>
  




<script src="http://yui.yahooapis.com/3.5.1/build/yui/yui-min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/pic_tab.js"></script>
<script type="text/javascript">
jq('#demo1').banqh({
	box:"#demo1",//总框架
	pic:"#ban_pic1",//大图框架
	pnum:"#ban_num1",//小图框架
	prev_btn:"#prev_btn1",//小图左箭头
	next_btn:"#next_btn1",//小图右箭头
	pop_prev:"#prev2",//弹出框左箭头
	pop_next:"#next2",//弹出框右箭头
	prev:"#prev1",//大图左箭头
	next:"#next1",//大图右箭头
	pop_div:"#demo2",//弹出框框架
	pop_pic:"#ban_pic2",//弹出框图片框架
	pop_xx:".pop_up_xx",//关闭弹出框按钮
	mhc:".mhc",//朦灰层
	autoplay:true,//是否自动播放
	interTime:5000,//图片自动切换间隔
	delayTime:400,//切换一张图片时间
	pop_delayTime:400,//弹出框切换一张图片时间
	order:0,//当前显示的图片（从0开始）
	picdire:true,//大图滚动方向（true为水平方向滚动）
	mindire:true,//小图滚动方向（true为水平方向滚动）
	min_picnum:5,//小图显示数量
	pop_up:true//大图是否有弹出框
})
$(function(){ 
	var time = '<%=session.getAttribute("timesession")%>'; 
    if(time != "null"){
    	 $("#time").val(time);
    } 
})


</script>
<!-- 代码end -->
</body>

</html>