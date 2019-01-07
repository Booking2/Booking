<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>填写酒店地址</title>
</head>
<body>
<form role="form" id="add_property_details" action="/bk_hotel/addHotel"
	method="POST" autocomplete=off class="js-main-form">
	<fieldset>
		<div class="row">
			<div class="col-md-12">
				<legend> 住宿名称 </legend>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-xs-12 col-sm-6">
				<div class="input-length-counter">
					<input type="hidden" name="reid" value="${Reid }">
					<input type="text" id="property_name1" name="honame" readonly="readonly"
					value="${honame }" class="form-control form-control property-">
				</div>
				<span class="join_property_name_text"> 客人搜索住宿时将看到该名称。 </span>
			</div>
		</div>
	</fieldset>
	
	<fieldset class="address-information">
		<div class="row">
			<div class="col-md-12">
				<legend>酒店地址 </legend>
			</div>
		</div>
		<div class="row address-row">
			<div class="col-xs-12 col-sm-6 col-md-6 form-group address-form-block">
				<div class="row address-row">
					<div class="col-lg-12 form-group">
						<input type="hidden" name="arid" id="areasid">
						<label for="address">省-市-县</label><br>
						<select>
							<option>湖南</option>
						</select>
						<select id="citys" onchange="getarea()">
							<option>==请选择==</option>
						</select>
						<select id="areas" onchange="func()">
							<option>==请选择==</option>
						</select><br><br>
						<label for="address">地址栏</label> <input type="text"
							id="address" name="hoaddress" value="" class="form-control"
							placeholder="详细地址" data-hj-masked=""> <span
							class="help-block"></span>
					</div>
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
							请填写贵住宿完整的地址信息，包括贵住宿所在大楼名称、门牌号等。
						</p>
					</div>
				</div>
			</div>
		</div>
	</fieldset>
	
	<fieldset class="hide-tw-flag">
		<div class="row">
			<div class="col-md-12">
				<legend> 酒店描述 </legend>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 form-group">
				<input type="text" name="hid" id="hoteltypeid" hidden>
				<label for="location_contact_name">类型选择</label>
				<select id="hoteltype" onchange="hotelType()">
					<option>--请选择--</option>
				</select><br><br>
				<label for="location_contact_name">详细描述</label>
				<textarea id="location_contact_name" name="hodescribe" class="form-control"></textarea>
			</div>
		</div>
	</fieldset>
	
	<div class="nav" role="tablist">
		<input type="hidden" id="hidden3" value="${session2}"/>
		<a id="aid2" data-toggle="pill" href="#menuzp"></a>
		<input id="menu2" type="submit" name="proceed" value="继续"
			class="btn btn-block btn-primary btn-lg save_and_proceed">
		
	</div>
</form>
</body>
</html>