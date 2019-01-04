<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息保存</title>
<style type="text/css">
.geform{
	margin-top:3px;
	margin-bottom:3px;
	background-color: #f08080;
	color: #fff;
	border-radius: 4px;
	padding: 4px;
}
</style>
</head>
<body>
  <form id="add_property_details" action="/bk_rent/addrent"
	method="POST" autocomplete=off class="js-main-form" onsubmit="check()">
	<fieldset>
		<div class="row">
			<div class="col-md-12">
				<legend> 住宿名称 </legend>
			</div>
		</div>
	
		<div class="row">
			<div class="form-group col-xs-12 col-sm-6">
	
	
				<div class="input-length-counter">
					<input type="text" id="property_name" name="Rerentname" value=""
						class="form-control form-control property">
				</div>
				<div class="geform" id="geform1">
					<p></p>
				</div>
				<span class="join_property_name_text"> 客人搜索住宿时将看到该名称。 </span>
			</div>
		</div>
	</fieldset>
	
	<fieldset class="hide-tw-flag">
		<div class="row">
			<div class="col-md-12">
				<legend> 个人联系信息 </legend>
			</div>
		</div>
	
		<div class="row">
			<div class="col-md-6 form-group">
	
				<label for="location_contact_name">联络人</label>
				<input type="text" id="location_contact_name" name="recontact"
					value="" class="form-control" placeholder="邮政信件的收件人">
				<div class="geform" id="geform2">
					<p></p>
				</div>
			</div>
			
		</div>
		<div class="row">
			<div class="col-md-6 form-group">
				<label for="location_contact_name">邮箱号</label> 
				<input type="text" id="location_contact_email" name="Reemail" value=""
					class="form-control" placeholder="邮政信件">
			<div class="geform" id="geform3">
				<p></p>
			</div>
			</div>
			
		</div>
	</fieldset>
	
	<fieldset class="address-information">
		<div class="row">
			<div class="col-md-12">
				<legend>居住地址 </legend>
			</div>
		</div>
		<div class="row address-row">
			<div class="col-xs-12 col-sm-6 col-md-6 form-group address-form-block">
				<div class="row address-row">
					<div class="col-lg-12 form-group">
						<label for="address">城市</label> 
						<input type="text" id="address" name="readdress" value="" class="form-control"
							placeholder="城市"> 
					<div class="geform" id="geform4">
						<p></p>
					</div>
					</div>
				</div>
			
				<div class="row address-row">
					<div class="col-lg-12 form-group">
						<label for="address">地址栏</label> 
						<input type="text" id="address" name="readdress" value="" class="form-control" placeholder="详细地址"> 
					</div>
				</div>
				<div class="form-group col-lg-6 adjust-address-input-structure">
					<label for="zipcode">邮政编码</label>
					<input type="text" id="zipcode" name="Recode" value="" class="form-control"> 
				</div>
				<div class="geform" id="geform5">
					<p></p>
				</div>
			</div>
	
			<div class="col-xs-12 col-sm-6 col-md-6 information-block">
				<div
					class="adjust-address-image-container  row js-about-adjust-address-image-container snailmail_smaller_block">
					<div class="col-xs-3">
						<img
							src="https://q.bstatic.com/static/img/join/letter-verification-icon.png">
					</div>
					<div class="col-xs-9">
						<legend>请正确填写您的详细地址</legend>
						<p style="margin-bottom: 1px;">
							请填写贵住宿完整的地址信息，包括贵住宿所在大楼名称、门牌号等。</p>
						<p>根据您所提供的信息，我们可能会发送一封邮政信件来验证地址。</p>
					</div>
				</div>
			</div>
		</div>
	
		<input type="hidden" name="latitude" id="latitude" value="">
		<input type="hidden" name="longitude" id="longitude" value="">
		<input type="hidden" name="coordinates_api" id="coordinates_api"
			value="0">
	</fieldset>
	<div class="nav" role="tablist">
		<!-- 判断是否提交过 -->
	   <input type="hidden" id="hidden2" value="${session}"/>
	       <a id= "aid" data-toggle="pill" href="#menujd"></a>
		   <input id="emnu1" type="submit" name="proceed" value="继续"
				class="btn btn-block btn-primary btn-lg save_and_proceed" >
				
		</div>
	</form>
</body>
</html>