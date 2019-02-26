var length;

function Taillength(){
	 $(".BK_Tail").css("margin-top","0px");
	  length = document.body.scrollHeight; //网页正文全文高 
	  $(".BK_Tail").css("margin-top",(length-100)+"px");
 }
 

$(".sb-searchbox__button").click(function(){
	 var time = $("#time").val();  
	 if(time == "" || time == null){
    	 toastr.warning('请选择入住日期！'); 
	 }else{   
		 var roomslength = document.getElementById("available_rooms").scrollHeight; 
		 $("tbody").remove();
		 var times = time.split("——"); 
			 var Rstaydate = times[0];
			 var Rcheckdate = times[1]; 
			 $.ajax({
				 url: "/bk_pictures/getroomsbytime?Rstaydate="+Rstaydate+"&Rcheckdate="+Rcheckdate,
					type:"POST",
					data:{},  
					 success: function (data){  
						console.log(data);
						var roomshtml = "";
						for (i = 0; i < data.length; i++) {
							roomshtml +="<tbody>";
							roomshtml +="<input  type='hidden' value='"+data[i].rid+"'/>";
							roomshtml +="<tr data-block-id='264702701_110159171_0_0_0' class='hprt-table-cheapest-block hprt-table-cheapest-block-fix js-hprt-table-cheapest-block hprt-table-last-row' data-et-view=''>";
							roomshtml +="<td class='hprt-table-cell hprt-table-cell-roomtype droom_seperator'>";
							roomshtml +="<div class='hprt-block' data-et-view=''>";
							roomshtml +="<div class='hprt-roomtype-block hprt-roomtype-name' data-et-mouseenter='goal:hp_rt_hovering_room_name'>";
							roomshtml +="<span class='hprt-roomtype-icon-link' style='color: blue;font-weight: bold;'>";
							roomshtml +=""+data[i].rname+"";
							roomshtml +="</span>";
							roomshtml +="</div>";
							roomshtml +="<span>";
			              var rbedtype= data[i].rbedtype.split(",");
			              for(var k =0; k < rbedtype.length; k++){
			            	  roomshtml +="<p style='color:red; font-size: 13px; margin-left:10px; margin-bottom: 5px;'>"+data[i].rnumber+"张"+rbedtype[i]+"</p>";
			              }
			              roomshtml +="<i class='bicon bicon-singles'></i>";
			              roomshtml +="</span>";
			              roomshtml +="<div class='hprt-roomtype-block'>";
			              roomshtml +="<div class='hprt-facilities-block' data-component='hotel/new-rooms-table/highlighted-facilities'>";
			              roomshtml +="<ul class='hprt-facilities-others'>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Shower'>";
			              roomshtml +="• 淋浴";
			              roomshtml +="</span>";
			              roomshtml +="</li>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Telephone'>";
			              roomshtml +="• 电话";
			              roomshtml +="</span>";
			              roomshtml +="</li>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Hair Dryer'>";
			              roomshtml +="• 吹风机";
			              roomshtml +="</span>";
			              roomshtml +="</li>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Free Toiletries'>";
			              roomshtml +="• 免费洗浴用品";
			              roomshtml +="</span>";
			              roomshtml +="</li>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Shower'>";
			              roomshtml +="• 卫生间";
			              roomshtml +="</span>";
			              roomshtml +="</li>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Telephone'>";
			              roomshtml +="• 暖气";
			              roomshtml +="</span>";
			              roomshtml +="</li>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Hair Dryer'>";
			              roomshtml +="• 拖鞋";
			              roomshtml +="</span>";
			              roomshtml +="</li>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Free Toiletries'>";
			              roomshtml +="• 电烧水壶";
			              roomshtml +="</span>";
			              roomshtml +="</li>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Telephone'>";
			              roomshtml +="• 毛巾";
			              roomshtml +="</span>";
			              roomshtml +="</li>";
			              roomshtml +="<li>";
			              roomshtml +="<span class='hprt-facilities-facility' data-name-en='Hair Dryer'>";
			              roomshtml +="• 卫生纸";
			              roomshtml +="</span>";
			              roomshtml +="</li>"; 
			              roomshtml +="</ul>";
			              roomshtml +="</div>";
			              roomshtml +="</div>";
			              roomshtml +="<div class='hprt-roomtype-block'>";
			              roomshtml +="<div class='hptr-taxinfo-block'>";
			              roomshtml +="<div class='hptr-taxinfo-title'>";
			              roomshtml +=""+data[i].rdescribe+"";
			              roomshtml +="</div>";
			              roomshtml +="<div class='hptr-taxinfo-details'>";
			              roomshtml +="<span class='hptr-taxinfo-label'>房价包括:15%住宿方服务费</span> ";
			              roomshtml +="</div>";
			              roomshtml +="</div>";
			              roomshtml +="</div>";
			              roomshtml +="</div>";
			              roomshtml +="</td>";
			              roomshtml +="<td class='hprt-table-cell hprt-table-cell-occupancy'>";
			              roomshtml +="<div class='hprt-block'>";
			              roomshtml +="<div class='hprt-occupancy-occupancy-info jq_tooltip'  id='b_tt_holder_2'>";
			              for(var l=0;l<data[i].rcheckin;l++){
			            	  roomshtml +="<i class='bicon bicon-occupancy'><img src='../img/rw2.png'></i>";
			              }
			              roomshtml +="</div>";
			              roomshtml +="</div>";
			              roomshtml +="</td>";
			              roomshtml +="<td class='hprt-table-cell hprt-table-cell-price'>";
			              roomshtml +="<div class='hprt-price-block '>";
			              roomshtml +="<div class='hprt-price-deal-badge'>";
			              roomshtml +="</div>";
			              roomshtml +="<div class='hprt-price-price' data-et-mouseenter='goal:hp_rt_hovering_price'>";
			              roomshtml +="<span class='hprt-price-price-standard' title=''>";
			              roomshtml +=""+data[i].rprice+"元";
			              roomshtml +="</span>";
			              roomshtml +="</div>";
			              roomshtml +="<div class='prd-taxes-and-fees-under-price on-hpage blockuid-264702701_110159171_0_0_0' data-cur-stage='1'> 含税费及其他费用 </div> ";
			              roomshtml +="</div>";
			              roomshtml +="</td>";
			              roomshtml +="<td class='hprt-table-cell hprt-table-cell-conditions hprt-block-reposition-tooltip--container'>";
			              roomshtml +="<div class='only_x_left_redesign'>";
			              roomshtml +="<span class='only_x_left urgency_message_red'>";
			              roomshtml +=""+ data[i].rinstructions+"！";
			              roomshtml +="</span>";
			              roomshtml +="</div>";
			              roomshtml +="</td>";
			              roomshtml +="<td class='hprt-table-cell hprt-table-room-select'>";
			              roomshtml +="<div class='hprt-block'>";
			              roomshtml +="<label> <span class='invisible_spoken'>选择客房</span>";
			              roomshtml += "<input type='hidden' value="+data[i].rcheckin+" id='rcheckin'/>";
			              roomshtml +="<select id='hprt-nos-select' class='hprt-nos-select' name='nr_rooms_264702701_110159171_0_0_0' data-component='hotel/new-rooms-table/select-rooms' data-room-id='264702701' data-block-id='264702701_110159171_0_0_0' data-is-fflex-selected='0'>";
			              roomshtml +="<option value='0'>";
			              roomshtml +="0";
			              roomshtml +="</option>";
			              for(var o=1; o<=data[i].rrnumber;o++){
			            	  roomshtml +="<option value="+o+" id="+data[i].rid+">";
			            	  roomshtml +=""+o+"&nbsp;&nbsp;&nbsp;";
			            	  var sum = o * data[i].rprice;
			            	  roomshtml +="("+sum +"元)";
			              }
			              
			              roomshtml +="</option> ";
			              roomshtml +="</select>";
			              if(data[i].rrnumber <= 3){
			            	  roomshtml +="<div class='room_sum'>只剩下"+data[i].rrnumber+"间客房了</div>";
			              }
			              
			              roomshtml +="</label>";
			              roomshtml +="</div>";
			              roomshtml +="</td>";
			              if(i == 0){
			            	  roomshtml +="<td class='hprt-table-cell -last droom_seperator' rowspan='400' >";
			            	  roomshtml +="<div class='hprt-block reserve-block-js' style='width: 169px; top: 30px; z-index: auto;'>";
			            	  roomshtml +="<div class='hprt-reservation-cta'>";
			            	  roomshtml +="<div class='b-button b-button_primary hp_rt_input'>";
			            	  roomshtml +="<span class='b-button__text'>现在就预订</span>";
			            	  roomshtml +="</div>";
			            	  roomshtml +="</div>";
			            	  roomshtml +="<div class='hprt-no-cc-needed'>";
			            	  roomshtml +="<strong>无需信用卡！</strong>";
			            	  roomshtml +="</div>";
			            	  roomshtml +="</div>";
			            	  roomshtml +="</td>";
			              }else{
			            	  roomshtml +="<td class='hprt-table-cell -last droom_seperator' rowspan='400' data-component='hotel/new-rooms-table/summary/fade'></td>"; 
			            	  
			              } 
			              roomshtml +="</tbody>";
			              
					    }
						$("thead").after(roomshtml);
						
						/**
						 * 绑定单击按钮预订
						 */
						$(".hprt-reservation-cta").delegate('.hp_rt_input','click',function(){ 
							 var time = $("#time").val();  
							 var uid = $("#hidden").val();  //用户id
						     var hoid = $("#hidden1").val(); //酒店id 
						     var time1 = $("#time").val();  
							 var times1 = time1.split("——"); 
							 var Rstaydate1 = times1[0];
							 var Rcheckdate1 = times1[1];
							 if(uid == null || uid == ""){
								 toastr.warning('请先注册或登录账号'); 
							 }else{
							    //首先获得下拉框的节点对象；
						        var select = document.getElementsByClassName("hprt-nos-select");  
						        //1.如何获得当前选中的值？：
						        var index = 0;
						        var index1 = 0;
						        var uid = $("#hidden").val();  //用户id
						        var hoid = $("#hidden1").val(); //酒店id
						         if(time == "" || time == null){
						        	 toastr.warning('请选择入住日期！');
						        	  /*toastr.success('提交数据成功');*/
									 /*toastr.error('Error');*/
									 
									 /*toastr.info('info');*/
								 }else{  
									 var ridlist = new Array();
									 var valuelist= new Array();
									 var sumrcheckinlist = new Array();
									 var value;  //几件房间
									 var rid; //获取选择的下拉框id
									 var sumrcheckin; //总可住人数
							        for(var i =0; i<select.length; i++ ){ 
							           value = select[i].value;  
							             if(value != 0){ 
							        		  rid = $($("select option:checked").get(i)).attr("id");  
							        		  var rcheckin = $($("select option:checked").get(i)).parent().prev("#rcheckin").val();  //可住人数
							        		  sumrcheckin = value * rcheckin; 
							        		  alert(value + "as" + rcheckin + "\tnb" +sumrcheckin );
							        		  sumrcheckinlist[i] = sumrcheckin;
							        		  ridlist[i] = rid;
							        		  valuelist[i] = value;
							        		  
							        		  index += value;
							        	   } else {
							        		   index += value;
							        		   index1 += value;
							        	   }  
							        } 
							       
							        if(index == index1){
							        	toastr.error('请选择一间客房！');
							        	$(".hprt-table-room-select").css("background-color","#ff8080");
							        	 
							             setTimeout(function(){
							        		$(".hprt-table-room-select").css("background-color","#FFF");
							        		$(".hprt-table-room-select").css("transition","all 0.9s");
							        	},3300); 
							        }else{
							        	 window.location.href = "/bk_pictures/bkmyinformation?rid="+ ridlist+"&value="+valuelist+"&uid="+uid +"&hoid="+ hoid+"&Rstaydate1="+ Rstaydate1+"&Rcheckdate1="+ Rcheckdate1+"&sumrcheckin="+ sumrcheckinlist;
							        }
							  }
							}
						 }); 
						
						/**
						 * 绑定預定跟着鼠标
						 */
						$(".b-button").mouseenter(function(){
							$("#button_text").css("visibility","visible");
							//获取box1
					        var box1 = document.getElementById("button_text");
					        //绑定鼠标移动事件
					        document.onmousemove = function asd(event){ 
					            //解决兼容问题
					            event = event || window.event; 
					            //获取滚动条滚动的距离 
					            var st = document.body.scrollTop || document.documentElement.scrollTop;
					            var sl = document.body.scrollLeft || document.documentElement.scrollLeft;
					            //var st = document.documentElement.scrollTop;
					            //获取到鼠标的坐标
					            /*
					             * clientX和clientY
					             *  用于获取鼠标在当前的可见窗口的坐标
					             * div的偏移量，是相对于整个页面的
					             * 
					             * pageX和pageY可以获取鼠标相对于当前页面的坐标 
					             */
					            var left = event.clientX -310;
					            var top = event.clientY - 100;
					            
					            //设置div的偏移量
					            box1.style.left = left + sl + "px";
					            box1.style.top = top + st + "px";
					            
					        };  
						}) 
						 $(".b-button").mouseleave(function(){  //鼠标移出
							 $("#button_text").css("visibility","hidden"); 
							 document.onmousemove = null;
					      });
						  /**
						   * 不重要，因为我tm的都不知道为什么要这样写  头大
						   */
						 $(".BK_Tail").css("margin-top","0px");
						 var roomslength1 = document.getElementById("available_rooms").scrollHeight;
					     if(length == 3229){
							 var lengths =  length-roomslength+roomslength1-100;
							 length = lengths;
							 $(".BK_Tail").css("margin-top",length+"px");
						 }else{
							 var lengths =  length-roomslength+roomslength1;
							 length = lengths;
							 $(".BK_Tail").css("margin-top",length+"px");
						 }
						
					 } 
					
			});
			
	 }
 });

/**
 * 单击预订
 * @returns
 */
$(".hprt-reservation-cta").delegate('.hp_rt_input','click',function(){
		 var time = $("#time").val();  
		 var uid = $("#hidden").val();  //用户id
	     var hoid = $("#hidden1").val(); //酒店id
	     var time1 = $("#time").val();  
		 var times1 = time1.split("——"); 
		 var Rstaydate1 = times1[0];
		 var Rcheckdate1 = times1[1];
		 if(uid == null || uid == ""){
			 toastr.warning('请先注册或登录账号'); 
		 }else{
		    //首先获得下拉框的节点对象；
	        var select = document.getElementsByClassName("hprt-nos-select");  
	        //1.如何获得当前选中的值？：
	        var index = 0;
	        var index1 = 0;
	        var uid = $("#hidden").val();  //用户id
	        var hoid = $("#hidden1").val(); //酒店id
	       
	         if(time == "" || time == null){
	        	 toastr.warning('请选择入住日期！');
	        	  /*toastr.success('提交数据成功');*/
				 /*toastr.error('Error');*/
				 
				 /*toastr.info('info');*/
			 }else{  
				 var ridlist = new Array();
				 var valuelist= new Array();
				 var sumrcheckinlist = new Array();
				 var value;  //几件房间
				 var rid; //获取选择的下拉框id
				 var sumrcheckin; //总可住人数
		        for(var i =0; i<select.length; i++ ){ 
		           value = select[i].value;  
		             if(value != 0){ 
		            	
		        		  rid = $($("select option:checked").get(i)).attr("id");  
		        		  var rcheckin = $($("select option:checked").get(i)).parent().prev("#rcheckin").val();  //可住人数
		        		  sumrcheckin = value * rcheckin; 
		        		  alert(value + "as" + rcheckin + "\tnb" +sumrcheckin );
		        		  sumrcheckinlist[i] = sumrcheckin;
		        		  ridlist[i] = rid;
		        		  valuelist[i] = value;
		        		  
		        		  index += value;
		        	   } else {
		        		   index += value;
		        		   index1 += value;
		        	   }  
		        } 
		       
		        if(index == index1){
		        	toastr.error('请选择一间客房！');
		        	$(".hprt-table-room-select").css("background-color","#ff8080");
		        	 
		             setTimeout(function(){
		        		$(".hprt-table-room-select").css("background-color","#FFF");
		        		$(".hprt-table-room-select").css("transition","all 0.9s");
		        	},3300); 
		        }else{
		        	 window.location.href = "/bk_pictures/bkmyinformation?rid="+ ridlist+"&value="+valuelist+"&uid="+uid +"&hoid="+ hoid+"&Rstaydate1="+ Rstaydate1+"&Rcheckdate1="+ Rcheckdate1+"&sumrcheckin="+ sumrcheckinlist;
		        }
		  }
		}
	 });  

/**
 *   首页搜索栏的酒店名称
 */
$(function(){
	/*available_rooms*/ 
	var name = $("#honame").text(); 
	 $.ajax({
		 url: "/getname?name="+name,
			type:"POST",
			data:{},  
			 success: function (data){    
	              
			 } 
	});  
})

var config = {
	modules: {
		'price-calendar': {
			fullpath: '../js/price-calendar.js',
			type    : 'js',
			requires: ['price-calendar-css']
		},
		'price-calendar-css': {
			fullpath: '../css/price-calendar2.css',
			type    : 'css'
		}
	}
};
YUI(config).use('price-calendar', 'jsonp', function(Y) { 
	
	var sub  = Y.Lang.sub;
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
 			              $("#time").val(data);
 					 } 
         	}) 
            $(".price-calendar-bounding-box").css("display","none");
        });
        
        //点击取消按钮
        oCal.on('cancel', function() {
            this.set('depDate', '').set('endDate', '').render();
            $(".price-calendar-bounding-box").css("display","none");
        });
    
    Y.one('.J_Limitss').delegate('click', function(e) {
	      var roomssumlg = -1725;
	  	  var roomslength = document.getElementById("available_rooms").scrollHeight;
	  	  $(".price-calendar-bounding-box").css("top",roomssumlg-roomslength+"px");
  	  
  	  
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



var jq = $.noConflict();
//ban_qh
jq.fn.banqh = function(can){
	can = jq.extend({
					box:null,//总框架
					pic:null,//大图框架
					pnum:null,//小图框架
					prev_btn:null,//小图左箭头
					next_btn:null,//小图右箭头
					prev:null,//大图左箭头
					next:null,//大图右箭头
					pop_prev:null,//弹出框左箭头
					pop_next:null,//弹出框右箭头
					autoplay:false,//是否自动播放
					interTime:5000,//图片自动切换间隔
					delayTime:800,//切换一张图片时间
					pop_delayTime:800,//弹出框切换一张图片时间
					order:0,//当前显示的图片（从0开始）
					picdire:true,//大图滚动方向（true水平方向滚动）
					mindire:true,//小图滚动方向（true水平方向滚动）
					min_picnum:null,//小图显示数量
					pop_up:false,//大图是否有弹出框
					pop_div:null,//弹出框框架
					pop_pic:null,//弹出框图片框架
					pop_xx:null,//关闭弹出框按钮
					mhc:null//朦灰层
				}, can || {});
	var picnum = jq(can.pic).find('ul li').length;
	var picw = jq(can.pic).find('ul li').outerWidth(true);
	var pich = jq(can.pic).find('ul li').outerHeight(true);
	var poppicw = jq(can.pop_pic).find('ul li').outerWidth(true);
	var picminnum = jq(can.pnum).find('ul li').length;
	var picpopnum = jq(can.pop_pic).find('ul li').length;
	var picminw = jq(can.pnum).find('ul li').outerWidth(true);
	var picminh = jq(can.pnum).find('ul li').outerHeight(true);
	var pictime;
	var tpqhnum=0;
	var xtqhnum=0;
	var popnum=0;
	jq(can.pic).find('ul').width(picnum*picw).height(picnum*pich);
	jq(can.pnum).find('ul').width(picminnum*picminw).height(picminnum*picminh);
	jq(can.pop_pic).find('ul').width(picpopnum*poppicw);
	
//点击小图切换大图
	    jq(can.pnum).find('li').click(function () {
        tpqhnum = xtqhnum = jq(can.pnum).find('li').index(this);
        show(tpqhnum);
		minshow(xtqhnum);
    }).eq(can.order).trigger("click");
//大图弹出框
if(can.pop_up==true){
	jq(can.pic).find('ul li').click(function(){
		jq(can.mhc).height(jq(document).height()).show();
		jq(can.pop_div).show();
		popnum = jq(this).index();
		var gdjl_w=-popnum*poppicw;
		jq(can.pop_pic).find('ul').css('left',gdjl_w);
		popshow(popnum);
		})
	jq(can.pop_xx).click(function(){
		jq(can.mhc).hide();
		jq(can.pop_div).hide();
	})
}

	if(can.autoplay==true){
//自动播放
		pictime = setInterval(function(){
			show(tpqhnum);
			minshow(tpqhnum)
			tpqhnum++;
			xtqhnum++;
			if(tpqhnum==picnum){tpqhnum=0};	
			if(xtqhnum==picminnum){xtqhnum=0};
					
		},can.interTime);	
		
//鼠标经过停止播放
		jq(can.box).hover(function(){
			clearInterval(pictime);
		},function(){
			pictime = setInterval(function(){
				show(tpqhnum);
				minshow(tpqhnum)
				tpqhnum++;
				xtqhnum++;
				if(tpqhnum==picnum){tpqhnum=0};	
				if(xtqhnum==picminnum){xtqhnum=0};		
				},can.interTime);			
			});
	}
//小图左右切换			
	jq(can.prev_btn).click(function(){
		if(tpqhnum==0){tpqhnum=picnum};
		if(xtqhnum==0){xtqhnum=picnum};
		xtqhnum--;
		tpqhnum--;
		show(tpqhnum);
		minshow(xtqhnum);	
		})
	jq(can.next_btn).click(function(){
		if(tpqhnum==picnum-1){tpqhnum=-1};
		if(xtqhnum==picminnum-1){xtqhnum=-1};
		xtqhnum++;
		minshow(xtqhnum)
		tpqhnum++;
		show(tpqhnum);
		})	
//大图左右切换	
	jq(can.prev).click(function(){
		if(tpqhnum==0){tpqhnum=picnum};
		if(xtqhnum==0){xtqhnum=picnum};
		xtqhnum--;
		tpqhnum--;
		show(tpqhnum);
		minshow(xtqhnum);	
		})
	jq(can.next).click(function(){
		if(tpqhnum==picnum-1){tpqhnum=-1};
		if(xtqhnum==picminnum-1){xtqhnum=-1};
		xtqhnum++;
		minshow(xtqhnum)
		tpqhnum++;
		show(tpqhnum);
		})
//弹出框图片左右切换	
	jq(can.pop_prev).click(function(){
		if(popnum==0){popnum=picnum};
		popnum--;
		popshow(popnum);
		})
	jq(can.pop_next).click(function(){
		if(popnum==picnum-1){popnum=-1};
		popnum++;
		popshow(popnum);
		})			
//小图切换过程
	function minshow(xtqhnum){
		var mingdjl_num =xtqhnum-can.min_picnum+2
		var mingdjl_w=-mingdjl_num*picminw;
		var mingdjl_h=-mingdjl_num*picminh;
		
		if(can.mindire==true){
			jq(can.pnum).find('ul li').css('float','left');
			if(picminnum>can.min_picnum){
				if(xtqhnum<3){mingdjl_w=0;}
				if(xtqhnum==picminnum-1){mingdjl_w=-(mingdjl_num-1)*picminw;}
				jq(can.pnum).find('ul').stop().animate({'left':mingdjl_w},can.delayTime);
				}
				
		}else{
			jq(can.pnum).find('ul li').css('float','none');
			if(picminnum>can.min_picnum){
				if(xtqhnum<3){mingdjl_h=0;}
				if(xtqhnum==picminnum-1){mingdjl_h=-(mingdjl_num-1)*picminh;}
				jq(can.pnum).find('ul').stop().animate({'top':mingdjl_h},can.delayTime);
				}
			}
		
	}
//大图切换过程
		function show(tpqhnum){
			var gdjl_w=-tpqhnum*picw;
			var gdjl_h=-tpqhnum*pich;
			if(can.picdire==true){
				jq(can.pic).find('ul li').css('float','left');
				jq(can.pic).find('ul').stop().animate({'left':gdjl_w},can.delayTime);
				}else{
			jq(can.pic).find('ul').stop().animate({'top':gdjl_h},can.delayTime);
			}//滚动
			//jq(can.pic).find('ul li').eq(tpqhnum).fadeIn(can.delayTime).siblings('li').fadeOut(can.delayTime);//淡入淡出
			jq(can.pnum).find('li').eq(tpqhnum).addClass("on").siblings(this).removeClass("on");
		};
//弹出框图片切换过程
		function popshow(popnum){
			var gdjl_w=-popnum*poppicw;
				jq(can.pop_pic).find('ul').stop().animate({'left':gdjl_w},can.pop_delayTime);
			//jq(can.pop_pic).find('ul li').eq(tpqhnum).fadeIn(can.pop_delayTime).siblings('li').fadeOut(can.pop_delayTime);//淡入淡出
		};					
				
}
 /*预订*/
$(function(){
	$(".b-button").mouseenter(function(){
		$("#button_text").css("visibility","visible");
		//获取box1
        var box1 = document.getElementById("button_text");
        //绑定鼠标移动事件
        document.onmousemove = function asd(event){ 
            //解决兼容问题
            event = event || window.event; 
            //获取滚动条滚动的距离 
            var st = document.body.scrollTop || document.documentElement.scrollTop;
            var sl = document.body.scrollLeft || document.documentElement.scrollLeft;
            //var st = document.documentElement.scrollTop;
            //获取到鼠标的坐标
            /*
             * clientX和clientY
             *  用于获取鼠标在当前的可见窗口的坐标
             * div的偏移量，是相对于整个页面的
             * 
             * pageX和pageY可以获取鼠标相对于当前页面的坐标 
             */
            var left = event.clientX -310;
            var top = event.clientY - 100;
            
            //设置div的偏移量
            box1.style.left = left + sl + "px";
            box1.style.top = top + st + "px";
            
        };  
	}) 
	 $(".b-button").mouseleave(function(){  //鼠标移出
		 $("#button_text").css("visibility","hidden"); 
		 document.onmousemove = null;
      });
 });

/* 收藏 */ 
 function imgs(){                  
		 var hoid = $("#hidden1").val(); 
		 var uid = $("#hidden").val();
		 if(uid == null || uid == ""){
			toastr.warning('请先注册或登录账号'); 
			 /*toastr.success('提交数据成功');*/
			 /*toastr.error('Error');*/
			 
			 /*toastr.info('info');*/
		 }else{ 
			    var img = $(".collection img").attr('src') 
				if(img == "../img/hxx.png"){
					toastr.info('该住宿已在心愿单');
				}else{
					 $(".collection img").remove(); 
					 $("#collection1").text("该住宿已被保存至心愿单");
					 $("#collection1").css("width","175px");
					 $(".collection").append("<img src='../img/hxx.png'/>"); 
					 $.ajax({
						    url: "/bk_conllection/AllConection?hoid="+hoid+"&uid="+uid,
							type:"POST",
							data:{},  
							 success: function (data){
								 console.log(data);    
									
							 } 
					 });
					 toastr.success('收藏成功!'); 
				}
		 }
 }
 


 
 /*收藏随着鼠标移动*/
 $(function(){
	 /*获取页面的总长度*/ 
	 Taillength();
 	$(".collection").mouseenter(function(){
 		$("#collection1").css("visibility","visible");
 		//获取box1
         var box1 = document.getElementById("collection1");
         //绑定鼠标移动事件
         document.onmousemove = function asd(event){ 
             //解决兼容问题
             event = event || window.event; 
             //获取滚动条滚动的距离 
             var st = document.body.scrollTop || document.documentElement.scrollTop;
             var sl = document.body.scrollLeft || document.documentElement.scrollLeft;
             //var st = document.documentElement.scrollTop;
             //获取到鼠标的坐标
             /*
              * clientX和clientY
              *  用于获取鼠标在当前的可见窗口的坐标
              * div的偏移量，是相对于整个页面的
              * 
              * pageX和pageY可以获取鼠标相对于当前页面的坐标 
              */
             var left = event.clientX -1130;
             var top = event.clientY - 230;
             
             //设置div的偏移量
             box1.style.left = left + sl + "px";
             box1.style.top = top + st + "px";
             
         };  
 	}) 
 	 $(".collection").mouseleave(function(){  //鼠标移出
 		 $("#collection1").css("visibility","hidden"); 
 		 document.onmousemove = null;
       });
  });

/*判断是否已经被收藏  数据库*/
 $(function(){
	 var hoid = $("#hidden1").val(); 
	 var uid = $("#hidden").val();
	 $.ajax({
		 url: "/bk_conllection/gethoidByhoid?hoid="+hoid+"&uid="+uid,
			type:"POST",
			data:{},  
			 success: function (data){
				 console.log(data);  
				 if(data != "" || data !=null){
					 $(".collection img").remove();
					 $("#collection1").text("该住宿已被保存至心愿单");
					 $("#collection1").css("width","175px");
					 $(".collection").append("<img src='../img/hxx.png'/>");
				 }
			 } 
	 })
 })
