$(function() {

	/* =====================图片轮播按钮 移入移出事件=================== */
	$("#button_left").mouseenter(function() {
		$("#button_left").css("background-color", "blue");
	});
	$("#button_left").mouseleave(function() {
		$("#button_left").css("background-color", "white");
	});

	$("#button_rigth").mouseenter(function() {
		$("#button_rigth").css("background-color", "blue");
	});
	$("#button_rigth").mouseleave(function() {
		$("#button_rigth").css("background-color", "white");
	});
});
/* =============================ajax刷新房间类型===================== */
$(function() {
	var $bui_carousel = $(".bui-carousel__inner");
	$
			.ajax({
				type : "POST",
				url : "/bk_city/getlistbk_city1",
				data : {},
				success : function(data) {
					console.log(data);
					var cityhtml = "";
					for (i = 0; i < data.length; i++) {
						cityhtml += "<li index='"+i+"'>";
						cityhtml += "<dd>"
						cityhtml += "<img onerror='onerror=null' src=/img/"+ data[i].ciictures + " width='210' height='377' />";
						cityhtml += "<a href='#' class='link'></a>";
						cityhtml += "<h1 class='bui-card__title bh-carousel--new__title'>";
						cityhtml += "<span>" + data[i].ciname + "</span>"; 
						cityhtml += "</dd>"
						cityhtml += "<dd>"
						cityhtml += "<img onerror='onerror=null' src=/img/"+ data[i].ciictures + " width='210' height='377' />";
						cityhtml += "<a href='#' class='link'></a>";
						cityhtml += "<h1 class='bui-card__title bh-carousel--new__title'>";
						cityhtml += "<span>" + data[i].ciname + "</span>";;
						cityhtml += "</dd>"
						cityhtml += "<dd>"
					    cityhtml += "<img onerror='onerror=null' src=/img/"+ data[i].ciictures + " width='210' height='377' />";
						cityhtml += "<a href='#' class='link'></a>";
						cityhtml += "<h1 class='bui-card__title bh-carousel--new__title'>";
						cityhtml += "<span>" + data[i].ciname + "</span>";
						cityhtml += "</dd>"
						cityhtml += "<dd>"
					    cityhtml += "<img onerror='onerror=null' src=/img/"+ data[i].ciictures + " width='210' height='377' />";
						cityhtml += "<a href='#' class='link'></a>";
						cityhtml += "<h1 class='bui-card__title bh-carousel--new__title'>";
						cityhtml += "<span>" + data[i].ciname + "</span>";
						cityhtml += "</dd>"
						cityhtml += "</li>";
					}
					$bui_carousel.html(cityhtml);

				},
				dataType : "json",
				error : function() {
					alert("as");
				}
			});
})