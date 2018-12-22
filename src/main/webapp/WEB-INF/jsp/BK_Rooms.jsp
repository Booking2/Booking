
<!-- 首页酒店轮播 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/text.css" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/rooms.js"></script>


<h1 class="bh-carousel--header ">不仅有酒店...还有更多度假屋和公寓等你体验这份舒适</h1>
<div id="bui-carousel" role="region"
	aria-label="不仅有酒店...还有更多度假屋和公寓等你体验这份舒适"
	class="bui-carousel bui-carousel--medium u-bleed@small"
	data-bui-component="Carousel">
	<ul class="bui-carousel__inner" data-bui-ref="carousel-container"
		style="padding: 0px; overflow: hidden; transition: all 0.5s; position: inherit;">

	</ul>
	<div class="bui-carousel__nav bh-promotion-carousel-nav">
		<button type="button" id="button_left"
			class="bui-carousel__button bui-is-visible bui-is-clickable"
			data-bui-ref="carousel-prev" aria-label="">
			<svg class="bk-icon -iconset-navarrow_left bui-carousel__prev"
				height="128" width="128" viewBox="0 0 128 128">
				<path
					d="M73.7 96a4 4 0 0 1-2.9-1.2L40 64l30.8-30.8a4 4 0 0 1 5.7 5.6L51.3 64l25.2 25.2a4 4 0 0 1-2.8 6.8z"></path></svg>
		</button>
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
