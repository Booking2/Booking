$(function(){
	var sumholet = $(".holetdetails");
	$.ajax({
		url: "/bk_city/gethotelByArid",
		type:"POST",
		data:{},
		 success: function (data){
			 console.log(data);
			 alert(data);
			 var cityhtml = "";
			 for(i=0;i<data.length;i++){ 
				 cityhtml += "<div class='sr_item sr_item_new sr_item_default sr_property_block sr_item_bs sr_flex_layout sr_item_no_dates'>";         
				 cityhtml += "<!-- 酒店图片 -->";
				 cityhtml += "<div class='sr_item_photo' id='hotel_55070'>";
			     cityhtml += "<a class='sr_item_photo_link sr_hotel_preview_track'";
			     cityhtml += "href='#'> <img class='hotel_image' src='../img/双人床.png'";
			     cityhtml += "alt='湾景国际'  width='200'";
			     cityhtml += "height='200'> "; 
			     cityhtml += "</a>";
			     cityhtml += "</div>";
				 cityhtml += "<div class='sr_item_content sr_item_content_slider_wrapper'>"; 
				 cityhtml += "<div class='sr_property_block_main_row'>";
				 cityhtml += "<div class='sr_item_main_block'>";
				 cityhtml += "<h3 class='sr-hotel__title'>";
				 cityhtml += "<a class='hotel_name_link url' href='#' target='_blank' rel='noopener'> <span class='sr-hotel__name'>"+data[i].honame+"</span> ";
				 cityhtml += "</a>";
				 cityhtml += "</h3>";
				 cityhtml += "<i class='bk-icon-wrapper bk-icon-stars star_track'>";
				 cityhtml += "<svg class='bk-icon -sprite-ratings_stars_4' height='10' width='43' viewBox='0 0 52 12'>";
				 cityhtml += "<path fill='#FEBA02' d='M13 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.1-.5-.1-.5 0l-1.5 4-4.6.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3h.3l3.7-2.6 3.7 2.6H10.5c.1-.1.1-.2.1-.3L9.4 7.3l3.5-2.5c.1 0 .1-.1.1-.2zM26 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H23.6c.1-.1.1-.2.1-.3l-1.2-4.3L26 4.9v-.3zM39 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H36.6c.1-.1.1-.2.1-.3l-1.2-4.3L39 4.9v-.3zM52 4.6c0-.1-.1-.2-.2-.2l-4.5-.3-1.5-4c-.1-.2-.4-.2-.5 0l-1.5 4-4.5.3c-.1 0-.2.1-.2.2s0 .2.1.3l3.5 2.5-1.2 4.3c0 .1 0 .2.1.3.1.1.2.1.3 0l3.7-2.6 3.7 2.6H49.6c.1-.1.1-.2.1-.3l-1.2-4.3L52 4.9v-.3z'></path></svg>";
				 cityhtml += "</i>";
				 cityhtml += "<svg class='bk-icon -iconset-thumbs_up_square pp-icon-valign--inherit' fill='#FEBB02' height='20' rel='300' width='20' viewBox='0 0 128 128'>";
				 cityhtml += "<path d='M112 8H16a8 8 0 0 0-8 8v96a8 8 0 0 0 8 8h96a8 8 0 0 0 8-8V16a8 8 0 0 0-8-8zM48 96H24V58h24zm56-25a8.7 8.7 0 0 1-2 6 8.9 8.9 0 0 1 1 4 6.9 6.9 0 0 1-5 7c-.5 4-4.8 8-9 8H56V58l10.3-23.3a5.4 5.4 0 0 1 10.1 2.7 10.3 10.3 0 0 1-.6 2.7L72 52h23c4.5 0 9 3.5 9 8a9.2 9.2 0 0 1-2 5.3 7.5 7.5 0 0 1 2 5.7z'></path>";
				 cityhtml += "</svg>";
				 cityhtml += "<!--  描述区  -->";
				 cityhtml += "<div class='hotel_desc'>";
				 cityhtml += ""+data[i].hodescribe+"";
			     cityhtml += "</div>";
			     cityhtml += "</div>";
				 cityhtml += "<!--  评分区  -->";
				 cityhtml += "<div class='sr_item_review_block'>";
				 cityhtml += "<div class='reviewFloater reviewFloaterBadge__container'>";
				 cityhtml += "<div class='sr-review-score review-breakdown-tooltip-link'>";
				 cityhtml += "<div class='bui-review-score c-score bui-review-score--end'>";
				 cityhtml += "<div class='bui-review-score__badge'>7.7</div>";
				 cityhtml += "<div class='bui-review-score__content'>";
				 cityhtml += "<div class='bui-review-score__title' aria-label='好'>好</div>";
				 cityhtml += "<div class='bui-review-score__text'>5,859条住客点评</div>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "<!--  点击显示该酒店下的房间  -->";
				 cityhtml += "<div class='sr-cta-button-row sr-cta-button-bottom-spacing sr-cta-button-top-spacing'>";
				 cityhtml += "<div data-et-click='customGoal:UBKeJOLQLDHKdfXJeZCMVSHT:1'>";
				 cityhtml += "<a class='b-button b-button_primary sr_cta_button no_dates_click jq_tooltip'>";
				 cityhtml += "<span class='b-button__text'> 显示价格 </span>";
				 cityhtml += "</a>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "<div class='sr_rooms_table_block clearfix'> ";
				 cityhtml += "<div class='loc_sr_review better_contrast_review'>";
				 cityhtml += "<a class='good_review_text' > “位置很好，服务很不錯！ ” </a>";
				 cityhtml += "<div class='loc_sr_reviewer'>";
				 cityhtml += "<i class='bicon-LoginIcon'></i><strong>Piglet🐷</strong><span>，zw</span>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "</div>";
				 cityhtml += "<div class='clearfix'></div>";
				 cityhtml += "</div>"; 
			 }
			 sumholet.html(cityhtml);
		 },dataType: "json",error:function(){ 
			 
		 }
	}) 
})