/*===================Middle_top_ss==================*/
$(function(){ 
	 
	$(".Middle_top_ss").mouseenter(function(){
		$(".Middle_top_ss").css("background-color","#27408B");  
	});
	$(".Middle_top_ss").mouseleave(function(){
		$(this).css("background-color","#3A5FCD");
	});
	 
	
});
/*=====================加载市区两个=======================*/
/*$(function(){
	 var $city1 = $("#city1"); 
	 $.ajax({
		 type: "POST",
		 url:"/bk_city/getlistbk_city1",
		 data:{},
		 success: function (data){
			 console.log(data);
			 var cityhtml = "";
			 for(i=0;i<data.length;i++){
				 cityhtml += "<div class='promotion-postcard__large' style='background-image: url(/img/"+data[i].ciictures+")'>";
				 cityhtml += "<div>";
				 cityhtml += "<h3>"+data[i].ciname+"</h3>";
				 cityhtml += "<h5>1000家住宿</h5>";
				 cityhtml += "<span rel='300' title='不感兴趣' class='promotion-postcard__large_bg'>╳</span>";
				 cityhtml += "</div>";
				 cityhtml += "<div class='promotion-postcard__large_price'>";
				 cityhtml += "<div>均价</div><br/>";
				 cityhtml += "<p>125元</p>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";  
			 }
			 $city1.html(cityhtml);
			
		 },dataType: "json",error:function(){
			 alert("as");
		 }
	 });
});*/

/*=====================加载市区三个=======================*/
$(function(){
	 var $city = $("#city"); 
	 $.ajax({
		 type: "POST",
		 url:"/bk_city/getlistbk_city1",
		 data:{},
		 success: function (data){
			 console.log(data);
			 var cityhtml = "";
			 for(i=0;i<data.length;i++){
				 cityhtml += "<div id='"+(i+3)+"' class='promotion-postcard__small' style='background-image: url(/img/"+data[i].ciictures+")'>";
				 cityhtml += "<div>";
				 cityhtml += "<h3>"+data[i].ciname+"</h3>";
				 cityhtml += "<h5>900家住宿</h5>";
				 cityhtml += "<span rel='300' title='不感兴趣' class='promotion-postcard_bg'>╳</span>";
				 cityhtml += "</div>";
				 cityhtml += "<div class='promotion-postcard__small_price'>";
				 cityhtml += "<div>均价</div><br/>";
				 cityhtml += "<p>125元</p>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";  
			 }
			 $city.html(cityhtml);
			
		 },dataType: "json",error:function(){
			 alert("as");
		 }
	 });
});
/*===================不感兴趣=======================*/
$(document).on('click',".promotion-postcard_bg",function(){  //jquery在ajax新加入的元素后绑定事件click
	   /*$(".promotion-postcard_bg").click(function(){*/
		   var $city1 = $(this); 
			 $.ajax({
				 type: "POST",
				 url:"/bk_city/getlistbk_city2",
				 data:{},
				 success: function (data){
					 console.log(data);
					 var cityhtml = "";
					 for(i=0;i<data.length;i++) {
						 //先获取当前的div的id
						 var divimg= $city1.parent().parent().attr("id");
						 //var divimg = document.getElementById();
						 //alert(divimg);
						 //修改该id属性的值
						 document.getElementById(divimg).style.backgroundImage="url(/img/"+data[i].ciictures+")";
						  $($city1).prev().prev().text(data[i].ciname);
					 }  
				  
				 },dataType: "json",error:function(){ 
				 }
			 });
	  /* });*/ 
  });