<title>房屋类型轮播</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/housing.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/text.css" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/housing.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<h1 class="bh-carousel--header ">更多独特住宿，让假期充满格调</h1>
<div class="scroll2">
	<div class="prev">
		<button type="button" id="button_left"
			class="bui-carousel__button bui-is-visible bui-is-clickable"
			data-bui-ref="carousel-prev" aria-label="">
			<svg class="bk-icon -iconset-navarrow_left bui-carousel__prev"
				height="128" width="128" viewBox="0 0 128 128">
				<path
					d="M73.7 96a4 4 0 0 1-2.9-1.2L40 64l30.8-30.8a4 4 0 0 1 5.7 5.6L51.3 64l25.2 25.2a4 4 0 0 1-2.8 6.8z"></path></svg>
		</button>
	</div>
	<div class="v_show">
		<div class="u_lanren">
			<ul>
				<li index="0" class="index1"> 
				</li>
				<li index="0" class="index2"> 
				</li>
			</ul>
		</div>
	</div>
	<div class="next" style="float: right; right: 20px;">
		<button type="button" id="button_rigth"
			class="bui-carousel__button  bui-is-visible bui-is-clickable"
			data-bui-ref="carousel-next" aria-label="">
			<svg class="bk-icon -iconset-navarrow_right bui-carousel__next"
				height="128" width="128" viewBox="0 0 128 128">
				<path
					d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg>
		</button>
	</div>
</div>
<script type="text/javascript">
	var animateEnd = 1;
	$(".next").on('click', function() {
		nextscroll()
	});
	function nextscroll() {
		var vcon = $(".u_lanren ");
		var offset = ($(".u_lanren li").width()) * -1;
		vcon.stop().animate({
			left : offset
		}, "slow", function() {
			var firstItem = $(".u_lanren ul li").first();
			vcon.find("ul").append(firstItem);
			$(this).css("left", "0px");
		})
	};
	$(".prev").on('click', function() {
		var vcon = $(".u_lanren ");
		var offset = ($(".u_lanren li").width() * -1);
		var lastItem = $(".u_lanren ul li").last();
		vcon.find("ul").prepend(lastItem);
		vcon.css("left", offset);
		vcon.animate({
			left : "0px"
		}, "slow")
	});
</script>
