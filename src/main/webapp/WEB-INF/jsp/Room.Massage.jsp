<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预定酒店房间</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/room_massage.css"
	type="text/css">
</head>
<body>
  
	<div class="description urt" id="rooms_table" name="rooms_table" style="margin-top: 15px">
		<div style="height:1px; overflow:hidden;"></div>
			<div id="errorNoRoomSelected" style="display:none;">
				<span class="exclamation">&nbsp;!&nbsp;</span>
				<p class="error">
				请选择想要预订的数量
				</p>
		    </div>
				<div id="available_rooms">
					<div class="roomArea" id="maxotelRoomArea">
						<form id="hprt-form" autocomplete="off" action="" method="">
						     <table class="hprt-table  hprt-table-cjk " data-et-view="goal:rt_onview">
								<caption class="invisible_spoken">
								选择预订房型和客房数量
								</caption>
								<thead style="width: 813px; top: 0px; z-index: auto;" class="">
									<tr class="hprt-table-header">
										<th class="hprt-table-header-cell -first" style="width: 270.2px;">
										客房类型
										</th>
										<th class="hprt-table-header-cell" style="width: 38.2px;">可住</th>
										<th class="hprt-table-header-cell hprt-table-header-price" style="width:90.2px;">
										今日价格
										</th>
										<th class="hprt-table-header-cell hprt-table-header-policies" style="width: 120.2px;">预订须知</th>
										<th class="hprt-table-header-cell hprt-table-header-rooms-number" style="width: 60.2px;">
										<div class="gently_select_rooms_container hp_info_tt">
										<div class="gently_select_rooms_reminder shadow"> 
										<span></span>
										</div>
										</div>
										选择客房
										</th>
										<th class="hprt-table-header-cell -last droom_seperator" id="" style="width: 165px;"></th>
									</tr>
								</thead>
			                <c:forEach items="${getpictures}" var="pictures" varStatus="status">
								<tbody>
								  <tr data-block-id="264702701_110159171_0_0_0" class="hprt-table-cheapest-block hprt-table-cheapest-block-fix js-hprt-table-cheapest-block hprt-table-last-row" data-et-view="">
									<td class="hprt-table-cell hprt-table-cell-roomtype droom_seperator">
									<div class="hprt-block" data-et-view="">
									<div class="hprt-roomtype-block hprt-roomtype-name" data-et-mouseenter="goal:hp_rt_hovering_room_name">
									<span class="hprt-roomtype-icon-link" style="color: blue;font-weight: bold;">
									    中宾 - 标准三人房
									</span> 
									</div> 
										<span>
										3张单人床
										<i class="bicon bicon-singles"></i>
										</span>
									 
									<div class="hprt-roomtype-block">
									<div class="hprt-facilities-block" data-component="hotel/new-rooms-table/highlighted-facilities">
									<span class="hprt-facilities-facility" data-name-en="Airconditioning">
									<i class="hprt-facilities-icon bicon-airconditioning"></i>
									<span>
									空调
									</span>
									</span>
									<span class="hprt-facilities-facility" data-name-en="Bathroom">
									<i class="hprt-facilities-icon bicon-private-shower"></i>
									<span>
									私人浴室
									</span>
									</span>
									<span class="hprt-facilities-facility" data-name-en="Flat-screen TV">
									<i class="hprt-facilities-icon bicon-flattv"></i>
									<span>
									平板电视
									</span>
									</span>
									<span class="hprt-facilities-facility" data-name-en="">
									<i class="hprt-facilities-icon bicon-wifi"></i>
									<span>
									免费WiFi
									</span>
									</span>
									<ul class="hprt-facilities-others">
									<li>
									<span class="hprt-facilities-facility" data-name-en="Shower">
									• 淋浴
									</span>
									</li>
									<li>
									<span class="hprt-facilities-facility" data-name-en="Telephone">
									• 电话
									</span>
									</li>
									<li>
									<span class="hprt-facilities-facility" data-name-en="Hair Dryer">
									• 吹风机
									</span>
									</li>
									<li>
									<span class="hprt-facilities-facility" data-name-en="Free Toiletries">
									• 免费洗浴用品
									</span>
									</li>
									<li>
									<span class="hprt-facilities-facility" data-name-en="Toilet">
									• 卫生间
									</span>
									</li>
									<li>
									<span class="hprt-facilities-facility" data-name-en="Heating">
									• 暖气
									</span>
									</li>
									<li>
									<span class="hprt-facilities-facility" data-name-en="Slippers">
									• 拖鞋
									</span>
									</li>
									<li>
									<span class="hprt-facilities-facility" data-name-en="Electric Kettle">
									• 电烧水壶
									</span>
									</li>
									<li>
									<span class="hprt-facilities-facility" data-name-en="Towels">
									• 毛巾
									</span>
									</li>
									<li>
									<span class="hprt-facilities-facility" data-name-en="Toilet paper">
									• 卫生纸
									</span>
									</li>
									</ul>
									</div>
									</div>
									<div class="hprt-roomtype-block">
									<div class="hptr-taxinfo-block">
									<div class="hptr-taxinfo-title">
									价格是按每间客房计算的
									</div>
									<div class="hptr-taxinfo-details">
									<span class="hptr-taxinfo-label">房价包括:</span>
									15%住宿方服务费
									</div>
									</div>
									</div>
									</div>
									</td>
									<td class="hprt-table-cell hprt-table-cell-occupancy    
									">
									<div class="hprt-block">
									<div class="hprt-occupancy-occupancy-info jq_tooltip 
									" data-et-mouseenter=" goal:hp_rt_hovering_occupancy " data-title="
									最多人数: 3
									" id="b_tt_holder_2">
									<i class="bicon bicon-occupancy"></i><i class="bicon bicon-occupancy"></i><i class="bicon bicon-occupancy"></i>
									</div>
									<span class="invisible_spoken">
									最多人数: 3
									</span>
									</div>
									</td>
									<td class="hprt-table-cell hprt-table-cell-price">
									<div class="hprt-price-block ">
									<div class="hprt-price-deal-badge">
									</div>
									<div class="hprt-price-price " data-et-mouseenter="goal:hp_rt_hovering_price">
									<span class="hprt-price-price-standard " title="">
									155元
									</span>
									</div>
									<div class="prd-taxes-and-fees-under-price on-hpage blockuid-264702701_110159171_0_0_0" data-cur-stage="1"> 含税费及其他费用 </div> 
									</div>
									</td>
									<td class="hprt-table-cell hprt-table-cell-conditions   
									hprt-block-reposition-tooltip--container
									">
										<div class="only_x_left_redesign">
											<span class="only_x_left urgency_message_red">
											     不可退款！
											</span>
										</div>
									</td>
									<td class="hprt-table-cell hprt-table-room-select  ">
									<div class="hprt-block">
									<label> <span class="invisible_spoken">选择客房</span>
									<select class="hprt-nos-select" name="nr_rooms_264702701_110159171_0_0_0" data-component="hotel/new-rooms-table/select-rooms" data-room-id="264702701" data-block-id="264702701_110159171_0_0_0" data-is-fflex-selected="0">
									<option value="0">
									0
									</option>
									<option value="1">
									1
									&nbsp;&nbsp;&nbsp;
									(155元)
									</option>
									<option value="2">
									2
									&nbsp;&nbsp;&nbsp;
									(310元)
									</option>
									<option value="3">
									3
									&nbsp;&nbsp;&nbsp;
									(465元)
									</option>
									<option value="4">
									4
									&nbsp;&nbsp;&nbsp;
									(620元)
									</option>
									</select>
									</label>
									</div>
									</td> 
									<c:if test="${status.index == 0}">
										<td class="hprt-table-cell -last droom_seperator" rowspan="400" data-component="hotel/new-rooms-table/summary/fade">
										<div class="hprt-block reserve-block-js" style="width: 169px; top: 30px; z-index: auto;">
										<span class="hprt-table-cell__badge">
										<svg class="bk-icon -genius-genius-logo" height="24" width="60" viewBox="0 0 120 48">
										  <path fill="#FEBA02" d="M0 7.976v31.91c0 4.404 3.58 7.975 7.996 7.975h95.954l16-15.954V7.977c0-4.405-3.58-7.977-8-7.977H8C3.58 0 0 3.572 0 7.977z"></path>
										  <path fill="#0896FF" d="M103.97 39.915c0-4.407 3.58-7.979 8-7.979h8l-16 15.957v-7.978z"></path>
										  <path fill="#fff" d="M9.183 29.818c0-.77.241-1.419.722-1.947.482-.528 1.14-.792 1.972-.792.767 0 1.391.264 1.873.792.483.528.723 1.177.723 1.947 0 .726-.24 1.353-.723 1.881-.482.526-1.106.791-1.873.791-.832 0-1.49-.265-1.972-.791a2.699 2.699 0 0 1-.722-1.881zm31.932-14.199c-4.794 0-8.144 3.442-8.144 8.368 0 4.847 3.619 8.366 8.602 8.366 3.927 0 6.322-2.315 6.423-2.413l.145-.143-.115-.19-.546-.866c-.482-.739-1.062-1.394-2.056-1.202a2.765 2.765 0 0 0-.673.227l-.003.001c-.743.401-1.755.79-2.901.79-2.31 0-3.993-1.421-4.361-3.644H48.14l.023-.235c.003-.04.09-.989.09-1.452 0-4.55-2.868-7.607-7.14-7.607zm-3.471 6.105c.478-1.665 1.729-2.612 3.47-2.612 1.41 0 2.489 1.083 2.648 2.612h-6.118zm21.965-6.11c-2.34 0-3.832 1.037-4.667 1.912l-.28.284-.098-.384c-.244-.94-1.074-1.456-2.321-1.456h-2.005l.012 15.983h4.247v-7.367c0-.72.093-1.345.284-1.915.507-1.727 1.659-2.798 3.432-2.798 1.424 0 2.248.75 2.248 2.689v6.96c0 1.656 1.033 2.431 2.693 2.431h1.565V21.884c0-4.039-1.373-6.27-5.11-6.27zm24.82 14.761l.279-.283.099.383c.244.937 1.07 1.451 2.315 1.451h1.999l-.012-15.938h-4.236v7.347c0 .718-.093 1.34-.284 1.91-.505 1.721-1.654 2.79-3.42 2.79-1.422 0-2.242-.748-2.242-2.681v-6.942c0-1.65-1.032-2.424-2.686-2.424h-1.563v10.041c0 4.029 1.37 6.253 5.098 6.253 2.332 0 3.82-1.035 4.654-1.907zM29.4 15.94c-.88 0-1.558.349-1.897.989l-.13.249-.215-.186c-.748-.648-2.09-1.414-4.27-1.414-4.336 0-7.256 3.25-7.256 8.086 0 4.83 3.02 8.205 7.344 8.205 1.475 0 2.643-.342 3.567-1.044l.359-.266v.452c0 2.166-1.404 3.364-3.953 3.364-1.241 0-2.365-.304-3.12-.574-.985-.297-1.561-.053-1.958.932l-.37.912-.52 1.326.323.17c1.63.863 3.752 1.378 5.672 1.378 3.95 0 8.213-2.017 8.213-7.694l.016-14.885H29.4zm-5.6 11.877c-2.537 0-3.438-2.208-3.438-4.274 0-.913.229-3.881 3.194-3.881 1.473 0 3.436.421 3.436 4.033 0 3.407-1.738 4.122-3.192 4.122zm71.667-7.846c0-.879.85-1.374 2.115-1.437 1.045.008 2.27.388 2.519 1.217l.02.1c.26.836.98.902 1.2.902l2.08.003v-1.75c0-1.405-1.51-3.481-5.638-3.55v-.003l-.111.001-.1-.001v.003c-3.243.061-6.015 1.539-6.015 4.672 0 5.176 8.459 5.144 8.459 7.403 0 1.067-.943 1.569-2.17 1.569-2.737 0-4.781-2.353-4.781-2.353l-1.886 2.605s2.264 2.854 6.667 2.854c3.495 0 6.165-1.882 6.165-4.895 0-5.333-8.524-4.83-8.524-7.34zm-28.35-7.995c0-.745.234-1.372.7-1.883.467-.51 1.102-.766 1.909-.766.74 0 1.345.256 1.812.766.466.511.7 1.138.7 1.883 0 .703-.234 1.309-.7 1.821-.467.51-1.071.766-1.812.766-.807 0-1.442-.256-1.91-.766a2.613 2.613 0 0 1-.698-1.821zm.417 4.023v15.96h4.544V18.488c0-.787-.192-1.399-.576-1.836-.384-.435-.981-.653-1.792-.653h-2.176z"></path>
										</svg>
										</span> 
										<div class="hprt-pob-message_wrap" data-component="hotel/new-rooms-table/reservation-column/pob-message">
										</div>
										<div class="hprt-reservation-cta" data-component="hotel/new-rooms-table/reservation-cta">
										<button class="b-button b-button_primary 
										hp_rt_input js-reservation-button
										" type="submit" data-title="请先选择房间" id="b_tt_holder_3">
										<span class="b-button__text">现在就预订</span>
										</button>
										</div>
											<div class="hprt-no-cc-needed">
											<strong>无需信用卡！</strong>
											</div>
										
										</div>
										</td> 
									   </c:if>
									   <c:if test="${status.index != 0}">
									     <td class="hprt-table-cell -last droom_seperator" rowspan="400" data-component="hotel/new-rooms-table/summary/fade"></td>
									   </c:if>
									</tr>
								</tbody>
						</c:forEach>
						 </table>
					</form>
			    </div>
			</div>
    </div> 
  



   
</body>
</html>