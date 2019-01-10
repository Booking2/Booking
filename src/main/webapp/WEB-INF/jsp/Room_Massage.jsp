<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预定酒店房间</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/room_massage.css"
	type="text/css">
<script type="text/javascript" src="../js/massage.js"></script>

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
										<th class="hprt-table-header-cell -first" style="width: 380.2px;">
										客房类型
										</th>
										<th class="hprt-table-header-cell" style="width:60.2px;">可住</th>
										<th class="hprt-table-header-cell hprt-table-header-price" style="width:130.2px;">
										今日价格
										</th>
										<th class="hprt-table-header-cell hprt-table-header-policies" style="width: 110.2px;">预订须知</th>
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
			                <c:forEach items="${getroomall}" var="room" varStatus="status">
								<tbody>
								 <input  type="hidden" value="${room.rid}"/>
								  <tr data-block-id="264702701_110159171_0_0_0" class="hprt-table-cheapest-block hprt-table-cheapest-block-fix js-hprt-table-cheapest-block hprt-table-last-row" data-et-view="">
									<td class="hprt-table-cell hprt-table-cell-roomtype droom_seperator">
									<div class="hprt-block" data-et-view="">
									<div class="hprt-roomtype-block hprt-roomtype-name" data-et-mouseenter="goal:hp_rt_hovering_room_name">
									<span class="hprt-roomtype-icon-link" style="color: blue;font-weight: bold;">
									  ${room.rname}
									</span> 
									</div> 
										<span> 
										<c:set value="${fn:split(room.rbedtype, ',')}" var="rbedtype"></c:set>  <!--jsp分割字符串 -->
										<c:forEach items="${rbedtype}" var="rb">
										   <p style="color:red; font-size: 13px; margin-left:10px; margin-bottom: 5px;">${room.rnumber}张${rb}  </p>
										</c:forEach>
										<i class="bicon bicon-singles"></i>
										</span> 
									<div class="hprt-roomtype-block">
									<div class="hprt-facilities-block" data-component="hotel/new-rooms-table/highlighted-facilities">
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
									${room.rdescribe}
									</div>
									<div class="hptr-taxinfo-details">
									<span class="hptr-taxinfo-label">房价包括:15%住宿方服务费</span> 
									</div>
									</div>
									</div>
									</div>
									</td>
									<td class="hprt-table-cell hprt-table-cell-occupancy">
									<div class="hprt-block">
									<div class="hprt-occupancy-occupancy-info jq_tooltip"  id="b_tt_holder_2">
									 <c:forEach var="x" begin="1" end="${room.rcheckin}">
									   <i class="bicon bicon-occupancy"><img src="../img/rw2.png"></i>
									 </c:forEach>
									</div>
									</div>
									</td>
									<td class="hprt-table-cell hprt-table-cell-price">
									<div class="hprt-price-block ">
									<div class="hprt-price-deal-badge">
									</div>
									<div class="hprt-price-price " data-et-mouseenter="goal:hp_rt_hovering_price">
									<span class="hprt-price-price-standard " title="">
									${room.rprice}元
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
											     ${room.rinstructions}！
											</span>
										</div>
									</td>
									<td class="hprt-table-cell hprt-table-room-select  ">
									<div class="hprt-block">
									<label> <span class="invisible_spoken">选择客房</span>
									<select id="hprt-nos-select" class="hprt-nos-select" name="nr_rooms_264702701_110159171_0_0_0" data-component="hotel/new-rooms-table/select-rooms" data-room-id="264702701" data-block-id="264702701_110159171_0_0_0" data-is-fflex-selected="0">
									<option value="0">
									0 
									</option>
										<c:forEach var="x" begin="1" end="${room.sum}"> 
											 <option value="${x}" id="${room.rid}">
											${x}
											&nbsp;&nbsp;&nbsp;
											  <c:set var="sum" value="${x * room.rprice}"></c:set>(${sum} 元)
											</option> 
											
										</c:forEach>  
									</select>
									<c:if test="${room.sum <= 3}">
									  <div class="room_sum">只剩下${room.sum}间客房了</div>
									</c:if>
									</label>
									</div>
									</td> 
									<c:if test="${status.index == 0}">
										<td class="hprt-table-cell -last droom_seperator" rowspan="400" >
										<div class="hprt-block reserve-block-js" style="width: 169px; top: 30px; z-index: auto;">
										<div class="hprt-reservation-cta" >
										<div class="b-button b-button_primary hp_rt_input">
										<span class="b-button__text">现在就预订</span>
										</div>
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