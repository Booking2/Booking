<title>左侧搜索栏</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/holet.css"
	type="text/css">
<script src="http://yui.yahooapis.com/3.5.1/build/yui/yui-min.js"></script>
<script>
/*通过session实现多页面共享数据[酒店名称]*/
$(function(){ 
	var name = '<%=session.getAttribute("namesession")%>'; 
    if(name != "null"){
   	 $("#ss").val(name);
   } 
})

var config = {
		modules : {
			'price-calendar' : {
				fullpath : '../js/price-calendar.js',
				type : 'js',
				requires : [ 'price-calendar-css' ]
			},
			'price-calendar-css' : {
				fullpath : '../css/price-calendar1.css',
				type : 'css'
			}
		}
	};
	YUI(config).use('price-calendar','jsonp',function(Y) {
                        var sub = Y.Lang.sub;
						var url = 'http://fgm.cc/learn/calendar/price-calendar/getData.asp?minDate={mindate}&maxDate={maxdate}&callback={callback}';

						//价格日历实例    
						var oCal = new Y.PriceCalendar();

						//点击确定按钮
						oCal.on('confirm', function() {  
							var rstaydate = this.get('depDate');
					           var rcheckdate = this.get('endDate');
					        	$.ajax({
					        		 url: "/getcookie?rstaydate="+rstaydate+"&rcheckdate="+rcheckdate,
										type:"POST",
										data:{},  
										 success: function (data){   
											 var time = '<%=session.getAttribute("timesession")%>';
								              $("#time").val(data);
										 } 
					        	}) 
							$(".price-calendar-bounding-box").css("display","none");
						});

						//点击取消按钮
						oCal.on('cancel',
								function() {
									this.set('depDate', '').set('endDate', '').render();
									$(".price-calendar-bounding-box").css(
											"display", "none");
								});

						Y.one('.J_Limits')
								.delegate(
										'click',
										function(e) {
											$(".price-calendar-bounding-box")
													.css("display", "block");
											var that = this, oTarget = e.currentTarget;
											switch (true) {
											//设置日历显示个数
											case oTarget.hasClass('J_Count'):
												this
														.set(
																'count',
																oTarget
																		.getAttribute('data-value'))
														.render();
												//时间范围限定
											case oTarget.hasClass('J_Limit'):
												this
														.set('data', null)
														.set('depDate', '')
														.set('endDate', '')
														.set('minDate', '')
														.set(
																'afterDays',
																oTarget
																		.getAttribute('data-limit'));
												if (!oTarget
														.hasAttribute('data-date')) {
													this
															.set('date',
																	new Date())
												} else {
													var oDate = oTarget
															.getAttribute('data-date');
													this.set('minDate', oDate);
													this.set('date', oDate);
												}
												oTarget.ancestor().one(
														'.J_RoomStatus') ? oTarget
														.ancestor()
														.one('.J_RoomStatus')
														.setContent(
																'\u663e\u793a\u623f\u6001')
														.removeClass('J_Show')
														: oTarget
																.ancestor()
																.append(
																		'<button class="J_RoomStatus">\u663e\u793a\u623f\u6001</button>');
												break;
											}
										}, 'button', oCal);
					});
	$(function() {
		var time = '<%=session.getAttribute("timesession")%>'; 
	    if(time != "null"){
	    	 $("#time").val(time);
	    } 
	})
</script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<div class="sb-searchbox__outer sb-searchbox-universal">
	<form id="frm" method="get"  class="sb-searchbox sb-searchbox--painted -small -cjk js--sb-searchbox" >
		<!-- 标题 -->
		<div class="sb-searchbox__row u-clearfix -title">
			<h2 class="sb-searchbox__title">
				<span class="sb-searchbox__title-text">境内外特价搜不停</span>
			</h2>
		</div>
		<!-- 目的地搜索 -->
		<div class="sb-searchbox__row u-clearfix ">
			<label class="sb-searchbox__label -main" for="ss"> 目的地/住宿名称：
			</label>
			<input type="text" name="ss" id="ss" class="c-autocomplete__input sb-searchbox__input sb-destination__input" placeholder="目的地？" value="" >
		</div>
		<!-- 入住日期及退房日期  -->	
		<div class="sb-searchbox__row u-clearfix ">
			<label class="sb-searchbox__label -main" for="ss" > 入住日期：
			</label>
		  <div id="J_Example" class="example"> 
			<input type="text" name="ss" id="time" class="c-autocomplete__input sb-searchbox__input sb-destination__input" style="background:url('${pageContext.request.contextPath}/img/日历 (2).png')no-repeat scroll 0px  center transparent;background-size:35px; background-color:#fff"
			disabled="disabled" cursor="pointer" placeholder="入住日期  -  退房日期"  value="">
		     <!-- 日历控件 -->
			 <div class="calendarios">
			    <%@ include file="calendario.jsp"%>
			 </div>
		  </div>
		</div>
		<!-- 搜索  -->
		<div class="sb-searchbox-submit-col -submit-button ">
             <button type="submit" class="sb-searchbox__button  ">
				<span>搜特价</span>
				<span class="sb-submit-helper"></span>
			</button>
        </div>
	 </form>
	 <div class="J_Limits"> 
				  <button class="J_Count J_Limit" data-value="1" data-limit="90">
				 </button>
     </div>
</div> 


