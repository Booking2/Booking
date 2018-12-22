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
/*查询前四条数据*/
$(function() {
	var $index1 = $(".index1");
	   $.ajax({
				type : "POST",
				url : "/rooms_type/getlistroomstype",
				data : {},
				success : function(data) {
					console.log(data);
					var cityhtml = "";
					for (i = 0; i < data.length; i++) { 
						cityhtml += "<dd>"
						cityhtml += "<a href='#' class='link'><img src=/img/"+ data[i].rpictures + " /></a>";
						cityhtml += "<span class='info'>"+ data[i].rttypename +"</span>";  
						cityhtml += "</dd>" 
					}
					$index1.html(cityhtml);

				},
				dataType : "json",
				error : function() { 
				}
			});
})

/*查询前四条数据*/
$(function() {
	var $index2 = $(".index2");
	   $.ajax({
				type : "POST",
				url : "/rooms_type/getlistroomstype1",
				data : {},
				success : function(data) {
					console.log(data);
					var cityhtml = "";
					for (i = 0; i < data.length; i++) { 
						cityhtml += "<dd>"
						cityhtml += "<a href='#' class='link'><img src=/img/"+ data[i].rpictures + " /></a>";
						cityhtml += "<span class='info'>"+ data[i].rttypename +"</span>";  
						cityhtml += "</dd>" 
					}
					$index2.html(cityhtml);

				},
				dataType : "json",
				error : function() { 
				}
			});
})