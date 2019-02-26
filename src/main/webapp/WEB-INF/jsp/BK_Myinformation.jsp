<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking.com 个人信息</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/捕获.PNG"
	type="image/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/myinformation.css"
	type="text/css">
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/myinformation.js"></script>
<script type="text/javascript">
  $(function(){
	  var myName='<%=session.getAttribute("list")%>'; 
	  var ridlist = '<%=session.getAttribute("ridlist")%>';   
	   
	  var rid = myName.split(",");  
	  document.getElementById("links").href="/bk_pictures/getpicturesByHoid?hoid="+rid[3];
      $(".bp_total_guests_copy_with_number").text("("+rid[2]+"位住客)");
	  
      var myName='<%=session.getAttribute("date")%>'; 
	  var rid = myName.split("-"); 
      rid[5] - rid[2]; 
      $("#bp_sidebar_content_block__li_content").text(rid[5] - rid[2]+"晚");
      $(".ruzhu").text(rid[0]+"年"+rid[1]+"月"+rid[2]+"日");
      $(".tufang").text(rid[3]+"年"+rid[4]+"月"+rid[5]+"日");
      /* var rid2 = rid1.split(",");
      alert(rid2[1]); */
  })
</script>
</head>
<body> 
		<%@ include file="BK_Head.jsp"%> 
		<div class="col-md-2"> </div>
		<div class="promotion-postcards-list col-md-8">
		   <!-- 顶部导航 -->
		   <input type="hidden" value="" id="rid"/>
		   <input type="hidden" value="" id="hoid"/>
		   <input type="hidden" value="" id="uid"/>
		   <input type="hidden" value="" id="value"/>
			<div class="progress_bar_area progress_bar_margin progress_bar_area--bui-nav-progress">
				<ol class="bui-nav-progress bui-nav-progress--horizontal">
					<li class="bui-nav-progress__item"><span
						class="bui-nav-progress__indicator"> <svg
								class="bui-nav-progress__icon" xmlns="http://www.w3.org/2000/svg"
								width="41" height="32" viewBox="0 0 41 32"> <path
								class="bui_fill_white"
								d="M34.7 0l5.9 5.8L14.3 32 0 17.8 5.9 12l8.4 8.3L34.7 0z"></path>
							</svg>
					</span> <strong class="bui-nav-progress__title">选择您的客房</strong> <span
						class="bui-nav-progress__step">第1步（共3步）</span></li>
					<li role="presentation" class="bui-nav-progress__divider"></li>
					<li
						class="bui-nav-progress__item
					 bui-nav-progress__item--active
					">
						<span class="bui-nav-progress__indicator"> <span
							class="invisible_spoken">当前步骤</span> 2
					</span> <strong class="bui-nav-progress__title">填写您的信息</strong> <span
						class="bui-nav-progress__step">第2步（共3步）</span>
					</li>
					<li role="presentation" class="bui-nav-progress__divider"></li>
					<li
						class="bui-nav-progress__item
					 bui-nav-progress__item--disabled
					">
						<span class="bui-nav-progress__indicator"> 3 </span> <strong
						class="bui-nav-progress__title">最终信息</strong> <span
						class="bui-nav-progress__step">第3步（共3步）</span>
					</li>
				</ol>
			</div>
			<div class="col-sm-4">
			     <!-- 左侧栏  -->
				 <div class="bp_pricedetails_holder
					bp_pricedetails_legibility
					bp_pricedetails_legibility_pricedetails_hidden
					" data-hotel-currency-code="CNY" data-user-currency-code="CNY" data-is-us-breakdown="false" data-component="bp/price-details" role="complementary">
				    <!-- 订单详情 -->
				    <div class="bp_sidebar_content_block bp_sidebar_content_block--bookingdetails_summary">
					<div class="bp_sidebar_content_block__header">
					<div class="bp_sidebar_content_block__header_title">
					订单详情
					</div>
					</div>
					<div class="bp_sidebar_content_block__section">
					<ul class="bp_sidebar_content_block__ul">
					<li class="bp_sidebar_content_block__li">
					<div class="bp_sidebar_content_block__li_title">入住时间:</div>
					<div class="bp_sidebar_content_block__li_content ruzhu">
					<strong>2019年1月24日星期四</strong>
					</div>
					</li>
					<li class="bp_sidebar_content_block__li">
					<div class="bp_sidebar_content_block__li_title">退房时间:</div>
					<div class="bp_sidebar_content_block__li_content tufang">
					<strong>2019年1月25日星期五</strong>
					</div>
					</li>
					<li class="bp_sidebar_content_block__li bp_sidebar_content_block__li--last">
					<div class="bp_sidebar_content_block__li_title">入住总天数：</div>
					<div class="bp_sidebar_content_block__li_content" id="bp_sidebar_content_block__li_content"></div>
					</li>
					</ul><!-- .bp_sidebar_content_block__ul -->
					
					</div><!-- .bp_sidebar_content_block__section -->
					<div class="bp_sidebar_content_block__section">
					<ul class="bp_sidebar_content_block__ul">
					<li class="
					bp_sidebar_content_block__li
					bp_sidebar_content_block__li--rooms
					bp_sidebar_content_block__li--last
					">
					<div class="bp_sidebar_content_block__li_title">
					已选择：
					</div>
					<div class="bp_sidebar_content_block__li_content" style="color: red;font-size: 15px">
					洲际高级房
					</div>
					</li>
					</ul><!-- .bp_sidebar_content_block__ul -->
					<div class="bp_sidebar_content_block__link_container bp_sidebar_content_block__link_container--change_selection">
					<a href="" id="links" class="bp_modify_selection__link
					bp_modify_selection__link--from_hotel
					">
					重新选择
					</a>
					</div>
					</div><!-- .bp_sidebar_content_block__section -->
					</div>
				 </div>
				 
				 <div class="bp_pricedetails_box">
					<ul class="bp_pricedetails_breakdown" b_addons_cost="" totalprice_equal_roomprice="1" b_hide_the_price_breakdown="" bp_us_price_breakdown_ready="0" style="display:none;">
					<li class="bp_pricedetails_room">
					<span class="bp_pricedetails_room_name">
					客房
					</span>
					<span class="bp_pricedetails_room_price">
					787元
					</span>
					</li>
					</ul>
					<div class="bp_pricedetails_total">
					<table class="topDisplayedCurrency">
					<tbody><tr colspan="2">
					<td>
					<span class="bp_pricedetails_total_name">
					价格
					<br>
					</span>
					</td>
					<td class="topCurrencyClar">
					<span class="bp_pricedetails_total_rack_rate">
					</span>
					<span class="jq-tooltip bp_pricedetails_total_value" data-price="787.00" data-currency-code="CNY" data-pd-total-usercurrency="">
					<span data-component="core/animate-price" class="" data-value="787.00" data-currency="CNY" data-precision="" data-animate-price-group-name="bp_user_total_price" data-animation-speed="0.7" style="display: inline-block;">
					787元
					</span>
					</span>
					</td>
					</tr>
					</tbody></table>
					<span class="pricing_clarify_total bp_pricedetails_total_pricing_clarify">
					<ins class="bp_total_guests_copy_with_number" data-copy="bp_for_x_guests"></ins>
					</span>
					<div class="china-loyalty-dp-traval-cash bui-f-font-caption">
					</div>
					</div>
					<div class="prd-taxes-and-fees-under-price bp-special-wrapper">
					<div class="bp_pricedetails_excluded_fees_legibility bs_left_excluded_charges_block">
					<div class="pricedetails_box_title">
					额外费用
					</div>
					<ul>
					<li>
					<span>
					增值税
					</span>
					<span class="excluded_fees_price">
					51.94元
					</span>
					</li>
					<li>
					<span>
					住宿方服务费
					</span>
					<span class="excluded_fees_price">
					78.70元
					</span>
					</li>
					</ul>
					</div>
					</div>
					</div>
				 
				 
			</div>
			<div class="col-sm-8"></div> 
			
	</div> 
		<div class="col-sm-2"></div> 
</body>
</html>