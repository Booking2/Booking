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
	$("#time").val(window.name); 
    var sub  = Y.Lang.sub;
    var url = 'http://fgm.cc/learn/calendar/price-calendar/getData.asp?minDate={mindate}&maxDate={maxdate}&callback={callback}';
    
    //价格日历实例    
    var oCal = new Y.PriceCalendar();
    
        //点击确定按钮
        oCal.on('confirm', function() { 
        	/*sessionStorage.clear();
            sessionStorage.setItem('time',this.get('depDate') + "  ——   " + this.get('endDate'));//数据存入session
*/           
        	window.name=this.get('depDate') + "  ——   " + this.get('endDate');
        	$("#time").val(window.name);   
            $(".price-calendar-bounding-box").css("display","none");
        });
        
        //点击取消按钮
        oCal.on('cancel', function() {
            this.set('depDate', '').set('endDate', '').render();
            $(".price-calendar-bounding-box").css("display","none");
        });
    
    Y.one('.J_Limitss').delegate('click', function(e) { 
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
	 var length = document.body.scrollHeight; //网页正文全文高
	  $(".BK_Tail").css("margin-top",(length-100)+"px");
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