<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
 .J_Counts{
      height: 58px;
      width: 20%;
      float: right;
      position: absolute;
      right: 420px;
      top:270px;
 }
 .J_Counts button{
      width: 100%;
      height: 56px;
      background-color: #fff; 
      opacity: 0.1;
  }
 .calendarios{
    top:-500px;
 }
 .confirm-btn{
    text-align: center;
 }
 .cancel-btn{
    text-align: center;
 }
</style>
<script src="http://yui.yahooapis.com/3.5.1/build/yui/yui-min.js"></script>
<script>
var config = {
	modules: {
		'price-calendar': {
			fullpath: '../js/price-calendar.js',
			type    : 'js',
			requires: ['price-calendar-css']
		},
		'price-calendar-css': {
			fullpath: '../css/price-calendar.css',
			type    : 'css'
		}
	}
};
YUI(config).use('price-calendar', 'jsonp', function(Y) {
	 $("#Middle_top_time").val();
    var sub  = Y.Lang.sub;
    var url = 'http://fgm.cc/learn/calendar/price-calendar/getData.asp?minDate={mindate}&maxDate={maxdate}&callback={callback}';
    
    //价格日历实例    
    var oCal = new Y.PriceCalendar();
    
        //点击确定按钮
        oCal.on('confirm', function() { 
            $("#Middle_top_time").val(this.get('depDate') + "  ——   " + this.get('endDate'));
            $(".price-calendar-bounding-box").css("display","none");
        });
        
        //点击取消按钮
        oCal.on('cancel', function() {
            this.set('depDate', '').set('endDate', '').render();
        });
    
    Y.one('#J_Example').delegate('click', function(e) { 
    	$(".price-calendar-bounding-box").css("display","block");
        var that    = this,
            oTarget = e.currentTarget;
        switch(true) {
            //设置日历显示个数
            case oTarget.hasClass('J_Count'):
                this.set('count', oTarget.getAttribute('data-value')).render(); 
            //时间范围限定
            case oTarget.hasClass('J_Limit'):
                this.set('data', null)
                    .set('depDate', '')
                    .set('endDate', '')
                    .set('minDate', '')
                    .set('afterDays', oTarget.getAttribute('data-limit'));
                if(!oTarget.hasAttribute('data-date')) {
                    this.set('date', new Date())
                }
                else {
                    var oDate = oTarget.getAttribute('data-date');
                    this.set('minDate', oDate);
                    this.set('date', oDate);
                }
                oTarget.ancestor().one('.J_RoomStatus') ?
                    oTarget.ancestor().one('.J_RoomStatus').setContent('\u663e\u793a\u623f\u6001').removeClass('J_Show') :
                    oTarget.ancestor().append('<button class="J_RoomStatus">\u663e\u793a\u623f\u6001</button>');
                break; 
        }
    }, 'button', oCal);
});
</script> 

<title>Booking.com缤客:提供湖南省酒店网上预定，现在就查询预定酒店</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/捕获.PNG"
	type="image/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css">
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
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
				name="ss" id="Middle_top_destination" autocomplete="off" placeholder="目的地？" value="">
			<div id="J_Example" class="example"> 
 
			
				 <input
					style="background:url('${pageContext.request.contextPath}/img/日历 (2).png')no-repeat scroll 16px  center transparent;background-size:35px; background-color:#fff"
					disabled="disabled" name="time" id="Middle_top_time"
					placeholder="入住   -  退房" value="" />
			  <div class="J_Counts"> 
				  <button class="J_Count J_Limit" data-value="1" data-limit="90">
				 </button>
			 </div>
			 <!-- 日历控件 -->
			 <div class="calendarios">
			    <%@ include file="calendario.jsp"%>
			 </div>
			  </div>
			 <div class="Middle_top_ss">搜索</div>
			 <div id="bot_box">
					<ul id="oul" style="overflow:auto; height: 143px;"></ul>
			 </div> 
		</div>
		<div class="col-md-2"></div>
		<div class="promotion-postcards-list col-md-8">
			<!-- /=======================前面两个框=============/ -->
			<div class="promotion-postcards_row" id="city1">
				<c:forEach items="${getlistcity}" var="city" varStatus="status">
					<!--attr-id="promotion-postcard__large_1"  -->
					<div  id="${status.index}" class="promotion-postcard__large"
						style="background-image: url('${pageContext.request.contextPath}/img/${city.ciictures}')">
					         <div> 
					            <input class="cid" type="hidden" value="${city.ciid}"/>
								<h3 id="promotion-postcard__large_1_">${city.ciname}</h3>
								<h5 id="promotion-postcard__large_1_1">1,000家住宿</h5> 
								<span rel="300" title="不感兴趣" class="promotion-postcard_bg" >╳</span>							
							 </div>
							<div class="promotion-postcard__large_price">
								<div id="promotion-postcard__large_1_1_">均价</div>
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
