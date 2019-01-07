<title>左侧搜索栏</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/holet.css"
	type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<div class="sb-searchbox__outer sb-searchbox-universal">
	<form id="frm" method="get"  class="sb-searchbox sb-searchbox--painted -small -cjk js--sb-searchbox" >
		<!-- 标题 -->
		<div class="sb-searchbox__row u-clearfix -title">
			<h2 class="sb-searchbox__title">
				<span class="sb-searchbox__title-text">境内外特价搜不停</span>
			</h2>
		</div>
		<!-- 目的地搜索 -->
		<div class="sb-searchbox__row u-clearfix ">
			<label class="sb-searchbox__label -main" for="ss"> 目的地/住宿名称：
			</label>
			<input type="text" name="ss" id="ss" class="c-autocomplete__input sb-searchbox__input sb-destination__input" placeholder="目的地？" value="" >
		</div>
		<!-- 入住日期及退房日期  -->	
		<div class="sb-searchbox__row u-clearfix ">
			<label class="sb-searchbox__label -main" for="ss" > 入住日期：
			</label>
			<input type="text" name="ss" id="time" class="c-autocomplete__input sb-searchbox__input sb-destination__input" style="background:url('${pageContext.request.contextPath}/img/日历 (2).png')no-repeat scroll 0px  center transparent;background-size:35px; background-color:#fff"
			disabled="disabled" cursor="pointer" placeholder="入住日期  -  退房日期"  value="">
		</div>
		<!-- 搜索  -->
		<div class="sb-searchbox-submit-col -submit-button ">
             <button type="submit" class="sb-searchbox__button  ">
				<span>搜特价</span>
				<span class="sb-submit-helper"></span>
			</button>
        </div>
	 </form>
</div> 


