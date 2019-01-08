/*===================Middle_top_ss==================*/
$(function() {
 
	$(".Middle_top_ss").mouseenter(function() {
		$(".Middle_top_ss").css("background-color", "#27408B");
	});
	$(".Middle_top_ss").mouseleave(function() {
		$(this).css("background-color", "#3A5FCD");
	});

});
/* =====================加载市区两个======================= */
/*
 * $(function(){ var $city1 = $("#city1"); $.ajax({ type: "POST",
 * url:"/bk_city/getlistbk_city1", data:{}, success: function (data){
 * console.log(data); var cityhtml = ""; for(i=0;i<data.length;i++){ cityhtml += "<div
 * class='promotion-postcard__large' style='background-image:
 * url(/img/"+data[i].ciictures+")'>"; cityhtml += "<div>"; cityhtml += "<h3>"+data[i].ciname+"</h3>";
 * cityhtml += "<h5>1000家住宿</h5>"; cityhtml += "<span rel='300'
 * title='不感兴趣' class='promotion-postcard__large_bg'>╳</span>"; cityhtml += "</div>";
 * cityhtml += "<div class='promotion-postcard__large_price'>"; cityhtml += "<div>均价</div><br/>";
 * cityhtml += "<p>125元</p>"; cityhtml += "</div>"; cityhtml += "</div>"; }
 * $city1.html(cityhtml);
 * 
 * },dataType: "json",error:function(){ alert("as"); } }); });
 */

/* =====================加载市区三个======================= */
$(function() {
	var $city = $("#city");
     	$.ajax({
				type : "POST",
				url : "/bk_city/getlistbk_city1",
				data : {},
				success : function(data) {
					console.log(data);
					var cityhtml = "";
					for (i = 0; i < data.length; i++) {
						cityhtml += "<div id='"
								+ (i + 3)
								+ "' class='promotion-postcard__small' style='background-image: url(/img/"
								+ data[i].ciictures + ")'>";
						cityhtml += "<div>";
						cityhtml += "<input class='cid' type='hidden' value='"
								+ data[i].ciid + "'/>";
						cityhtml += "<h3>" + data[i].ciname + "</h3>";
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

				},
				dataType : "json",
				error : function() {

				}
			});
});

/* ===================单击前面两个市区跳转======================= */
$(".promotion-postcard__large")
		.on(
				'click',
				function(event) {
					event.preventDefault();
					var ciid = $(this).children().children(".cid").val();

					if ($(event.target).is(".promotion-postcard_bg")) {
						/* ===================不感兴趣======================= */

						// 清除ajax之前的绑定事件
						$(".promotion-postcard_bg").unbind();
						$(".promotion-postcard_bg").click(function() {
											var num = Math.ceil(Math.random() * 1000000000 % 13);
											num = parseInt(num, 10);
											$(".cid").each(function() { // 获取多个相同的class的val值
													if (num == $(this).val()) {
															num = Math.ceil(Math.random() * 1000000000 % 13);
															num = parseInt(num,10);
																}
															});
											var $city1 = $(this);
											$.ajax({
														type : "POST",
														url : "/bk_city/getlistbk_city2?ciid="+ num,
														data : {},
														success : function(data) {
															console.log(data);
															var cityhtml = "";
															for (i = 0; i < data.length; i++) {
																// 先获取当前的div的id
																var divimg = $city1.parent().parent().attr("id");
																// 修改该id属性的值
																document.getElementById(divimg).style.backgroundImage = "url(/img/"+ data[i].ciictures+ ")";
																$($city1).prev().prev().text(data[i].ciname);
																$($city1).prev().prev().prev().attr("value",data[i].ciid);
															}
														},
														dataType : "json",
														error : function() {
														}
													});
										})
					} else {
						window.location.href = "/bk_city/citybycityid?ciid="
								+ ciid;
					}
				})
/* ===================单击后面三个市区跳转======================= */
$(document)
		.on(
				'click',
				".promotion-postcard__small",
				function(event) {
					event.preventDefault();
					var ciid = $(this).children().children(".cid").val();
					if ($(event.target).is(".promotion-postcard_bg")) {
						/* ===================不感兴趣======================= */
						// 清除ajax之前的绑定事件
						$(".promotion-postcard_bg").unbind();
						$(".promotion-postcard_bg") .on( 'click',
										function() {
											var num = Math
													.ceil(Math.random() * 1000000000 % 13);
											num = parseInt(num, 10);
											$(".cid").each(
												function() { // 获取多个相同的class的val值
													if (num == $(this).val()) {
														num = Math.ceil(Math.random() * 1000000000 % 13);
														num = parseInt(num,10);
													}
												});
											var $city1 = $(this);
											$ .ajax({
												type : "POST",
												url : "/bk_city/getlistbk_city2?ciid="+ num,
												data : {},
												success : function(data) {
													console.log(data);
													var cityhtml = "";
													for (i = 0; i < data.length; i++) {
														var divimg = $city1.parent().parent().attr("id");
														document.getElementById(divimg).style.backgroundImage = "url(/img/"+ data[i].ciictures+ ")";
														$($city1).prev().prev().text(data[i].ciname);
														$($city1).prev().prev().prev().attr("value",data[i].ciid);
													}
												},
												dataType : "json",
												error : function() {
												}
									 });
							  })
					} else {
						window.location.href = "/bk_city/citybycityid?ciid="
								+ ciid;
					}
				})

// 搜索框联想词 实现
$(function() {
	var search = $("#Middle_top_destination");

	var source = new Array();// [{"name":"zhangkun"},{"name":"dashen"}]//["aab","aac","bbd","bbn"];
/*
	search.autocomplete({
		source : source,
		messages : { // message设置不出现匹配关键字的结果
			noResults : '',
			results : function() {
			}
		}
	});*/

	search.keyup(function() {  
		var ouls = $("#oul");
		if($("#Middle_top_destination").val() == null || $("#Middle_top_destination").val() == ""){
			$("#bot_box").css("display","none");
		}else{
			$("#bot_box").css("display","block");
			$.ajax({
				type : "POST",
				url : "/bk_city/gethoname?honame="+$("#Middle_top_destination").val(),
				data : {},
				success : function(data) {
					var obj = eval(data); // 将json转换为对象的方法
					var oul = "";
					for (var i = 0; i < obj.length; i++) {
						oul += "<a target='_blank' rel='noopener' href='/bk_pictures/getpicturesByHoid?hoid="+obj[i].hoid+"'><li style='list-style:none'>"+obj[i].honame+"</li></a>"
					}
					ouls.html(oul);
				}
			});
		}
	});
});
