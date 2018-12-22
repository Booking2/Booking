<!-- 出租我的住宿信息 页面  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min (2).css" type="text/css">
<title>我的住宿：基本信息</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/捕获.PNG"
	type="image/x-icon">
<link rel="stylesheet" href="../css/addRerent.css" type="text/css">

<script src="../js/jquery-3.3.1.js"></script>
<script src="../js/addRerent.js"></script>
<script src="../js/bootstrap.min (2).js"></script>
<style type="text/css">
.account {
	height: 65px;
	background-color: #001b42;
	margin-bottom: 10px;
}

.active {
	color: #fff;
	border-bottom: none;
}

.container {
	padding-left: 0px;
	margin-left: 0px;
}

.active {
	color: black;
}

.nav li {
	padding: 0px;
	margin: 0px;
}

.nav-steps li {
	padding-top: 15px;
	display: table-cell;
	white-space: normal;
	text-align: center;
	border-bottom: 4px solid #707070;
	height: 50px;
	width: 33.33%;
}

.main-nav>li>a {
	color: #707070;
	padding: 16px;
	border-bottom: 0;
	font-size: 13px;
	border-right: none;
	height: 100%;
}

#emnu{
	display: block;
}
a:hover {
	text-decoration: none;
}
.acti {
	color: #fff;
	background-color: #007bff;
	border-radius: .25rem;
	opacity: 0.7;
}

.col-xs-9 {
	float: left;
}

.col-xs-3 {
	float: left;
}
textarea{
	resize:none;
	height: 130px;
}
</style>
</head>
<body>
	<div class="account row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<div class="join-logo">
				<img alt="logo"
					src="../img/857e24d682e37e1643fb09b3d17c4af26c4caec0.png">
			</div>
			<ul class="account-menu_updated ">
				<li><a href=""> <i class="glyphicon off"></i> 我的住宿
				</a></li>
				<li><a href=""> <i class="glyphicon on"></i> 退出
				</a></li>
			</ul>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="nav-steps col-sm-10">
			<ul class="nav main-nav" role="tablist">
				<li class="acti"><a data-toggle="pill">个人信息</a></li>
				<li id="jd"><a data-toggle="pill">酒店信息</a></li>
				<li id="fjzp"><a data-toggle="pill">房间照片</a></li>
				<li id="sk"><a data-toggle="pill">收款</a></li>
			</ul>
			<div class="compact-about-form tab-content">
				<!-- 填写个人信息 -->
				<div id="emnugrxi" class="container tab-pane active">
					<div>
						<div class="alignment">
							<h1>资林键</h1>
							<span>请输入贵住宿名称、联系方式和地址。</span>
						</div>
					</div>
					<form id="add_property_details" action="/bk_rent/addrent"
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
										<input type="text" id="property_name" name="Rerentname" value=""
											class="form-control form-control property">
											<span
											class="input-length-counter__label"
											id="property_name_length_counter"></span>
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

									<label for="location_contact_name">联络人</label> <input
										type="text" id="location_contact_name" name="recontact"
										value="" class="form-control" placeholder="邮政信件的收件人"
										data-hj-masked=""> <span class="help-block"></span>

								</div>
							</div>
							<div class="row">
								<div class="col-md-6 form-group">
									<label for="location_contact_name">邮箱号</label> <input
										type="text" id="location_contact_name" name="Reemail" value=""
										class="form-control" placeholder="邮政信件" data-hj-masked="">
									<span class="help-block"></span>

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
												placeholder="详细地址" data-hj-masked=""> 
												<span class="help-block"></span>
										</div>
									</div>
								
									<div class="row address-row">
										<div class="col-lg-12 form-group">
											<label for="address">地址栏</label> 
											<input type="text" id="address" name="readdress" value="" class="form-control"
												placeholder="详细地址" data-hj-masked=""> 
												<span class="help-block"></span>
										</div>
									</div>
									<div class="form-group col-lg-6 adjust-address-input-structure">
										<label for="zipcode">邮政编码</label> <input type="text"
											id="zipcode" name="Recode" value="" class="form-control"
											data-hj-masked=""> 
											<span class="help-block"></span>
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
				</div>
				
				<!-- 填写酒店地址 -->
				<div id="menujd" class="container tab-pane fade">
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
										<input type="text" id="property_name1" name="honame"
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
											<input type="text" name="arid" id="areasid">
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
				</div>
				
				<!-- 上传酒店照片 -->
				<div id="menuzp" class="container tab-pane fade">
					6666
					<div class="nav" role="tablist">
						<a data-toggle="pill" href="#menu3">
						<input id="emnu3" type="submit" name="proceed" value="继续"
							class="btn btn-block btn-primary btn-lg save_and_proceed">
						</a>
					</div>
				</div>
				
				
				<div id="menu3" class="container tab-pane fade">
					<input type="submit" name="proceed" value="完成"
						class="btn btn-block btn-primary btn-lg save_and_proceed">
				</div>
			</div>
		</div>
	</div>
</body>
</html>