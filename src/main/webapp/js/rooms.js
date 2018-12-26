
$(function(){  
/*========================图片左切换====================*/	
	 $("#button_left").click(function(){   
		$(".bui-carousel__item").css("position","inherit");
		var scroll = document.getElementById("bui-carousel__item").getAttribute("target");   //获取属性名
		if(scroll!=0){                 //判断属性值是否等于0
			 var scroll1 = -247;      //设置默认值
			 var number = 12;
			 var scroll2 = Number(scroll) - Number(scroll1);   //var值类型操作  
			 if(scroll2 == -259){
				 var scroll3 =  Number(scroll2) + Number(number); 
				 $(".bui-carousel__item").css("left",scroll3+"px");
				 document.getElementById("bui-carousel__item").setAttribute("target",scroll3)
			 }else{ 
				 $(".bui-carousel__item").css("left",scroll2+"px");
				 document.getElementById("bui-carousel__item").setAttribute("target",scroll2)
			 }
		 }else{
			 $(".bui-carousel__item").css("left","0px");
			 document.getElementById("bui-carousel__item").setAttribute("target","0");
		 }
	}); 
/*========================图片右切换====================*/	
	 $("#button_rigth").click(function(){   
		var scroll = document.getElementById("bui-carousel__item").getAttribute("target");   //获取属性名
		 if(scroll!=0){  
			 var scroll2 = (-259 + -247);  
			 $(".bui-carousel__item").css("left",scroll2+"px");
			 document.getElementById("bui-carousel__item").setAttribute("target",scroll2)
		 }else{
			 document.getElementById("bui-carousel__item").setAttribute("target","-259");
			 $(".bui-carousel__item").css("transition","all 0.5s");
			 $(".bui-carousel__item").css("left","-259px"); 
		 }
				
	}); 
	  
/*=====================图片轮播按钮 移入移出事件===================*/
	 $("#button_left").mouseenter(function(){ 
			$("#button_left").css("background-color","blue");
	 }); 
	 $("#button_left").mouseleave(function(){ 
			$("#button_left").css("background-color","white");
	 });
	 
	 $("#button_rigth").mouseenter(function(){ 
			$("#button_rigth").css("background-color","blue");
	 }); 
	 $("#button_rigth").mouseleave(function(){ 
			$("#button_rigth").css("background-color","white");
	 }); 
});
/*=============================ajax刷新房间类型=====================*/
$(function (){
	var $bui_carousel = $(".bui-carousel__inner"); 
	 $.ajax({
		 type: "POST",
		 url:"/bk_city/getlistbk_city1",
		 data:{},
		 success: function (data){
			 console.log(data);
			 var cityhtml = "";
			 for(i=0;i<data.length;i++){
				 cityhtml += "<li id='bui-carousel__item' class='bui-carousel__item' data-bui-ref='carousel-item' target='0'><a href='/bk_city/getlistbk_city' target='_blank' class='bui-card bui-card--media bui-card--transparent'>";
				 cityhtml += "<div class='bui-card__image-container bh-carousel--new__photo' style='background-image: url(/img/"+data[i].ciictures+")'></div>";
				 cityhtml += "<div class='bui-card__content bh-carousel--new__content'>";
				 cityhtml += "<h1 class='bui-card__title bh-carousel--new__title'>";
				 cityhtml += "<span>"+data[i].ciname+"</span>";
				 cityhtml += "</h1>";
				 cityhtml += "<h2 class='bui-card__subtitle'>"+data[i].ciname+"</h2>";
				 cityhtml += "<p class='bh-carousel--new__price'>460元起</p>";
				 
				 cityhtml += "<div style='position: absolute; width: 1px; height: 1px; opacity: 0;' data-et-view='NAFLJPIFfFdHMVXfZEBSfdQaSdFaLbFC:1'></div>";
				 cityhtml += "<div style='position: absolute; width: 1px; height: 1px; opacity: 0;' data-et-view='adUTWALOLOLOMAPPZTZWKNYT:1'></div>";
				 cityhtml += "<div style='position: absolute; width: 1px; height: 1px; opacity: 0;' data-et-view='adUTWALOLOLOMAPPZTZWKNYT:7'></div>"; 
				 cityhtml += "<div style='margin-top: 4px'>";
				 cityhtml += "<div class='bui-review-score c-score bui-review-score--inline bui-review-score--small'>";
				 cityhtml += "<div class='bui-review-score__badge' role='link' aria-label='9.6'>9.6</div>";
				 cityhtml += "<div class='bui-review-score__content'>";
				 cityhtml += "<div class='bui-review-score__title' aria-label='优异的'>优异的</div>";
				 cityhtml += "<div class='bui-review-score__text'>579条住客点评</div>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "</div>"; 
				 cityhtml += "</a></li>";
			 }
			 $bui_carousel.html(cityhtml);
			
		 },dataType: "json",error:function(){ 
		 }
	 });
})