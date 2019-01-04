<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery带删除功能多图片上传预览插件</title>

<link href="../../css/common.css" type="text/css" rel="stylesheet">
<link href="../../css/index.css" type="text/css" rel="stylesheet">

</head>
	<div class="img-box full">
		<section class=" img-section">
			<p class="up-p">作品图片：<span class="up-span">最多可以上传20张图片，马上上传</span></p>
			<div class="z_photo upimg-div clear" >
				   <!--<section class="up-section fl">
						<span class="up-span"></span>
						<img src="../img/a7.png" class="close-upimg">
						<img src="img/buyerCenter/3c.png" class="type-upimg" alt="添加标签">
						<img src="img/test2.jpg" class="up-img">
						<p class="img-namep"></p>
						<input id="taglocation" name="taglocation" value="" type="hidden">
						<input id="tags" name="tags" value="" type="hidden">
					</section>-->
					 <section class="z_file fl">
						<img src="../img/a11.png" class="add-img">
						<input type="file" name="imgs" id="file" class="file" value="" accept="image/jpg,image/jpeg,image/png,image/PNG,image/bmp" multiple />
					 </section>
			 </div>
		 </section>
	</div>
	<aside class="mask works-mask">
		<div class="mask-content">
			<p class="del-p ">您确定要删除图片吗？</p>
			<p class="check-p"><span class="del-com wsdel-ok">确定</span><span class="wsdel-no">取消</span></p>
		</div>
	</aside>
	<div class="nav" role="tablist">
		<input type="hidden" name="hoid" value="${hoid }"/>
		<input type="hidden" id="hidden4" value="${session3}"/>
	 	<a id="aid3" data-toggle="pill" href="#menu3" class="btn btn-block btn-primary btn-lg save_and_proceed">
			<input id="emnu3" type="submit" name="proceed" value="继续"
				class="btn btn-block btn-primary btn-lg save_and_proceed">
		</a>
	</div>
<script src="../../js/jquery-1.8.3.min.js"></script>
<script src="../../js/imgUp.js"></script>

</body>
</html>
