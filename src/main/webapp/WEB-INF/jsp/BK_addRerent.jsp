<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/addRerent.css" type="text/css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

</head>
<body>
	<div class="account">
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
		<div class="col-sm-1"></div>
	</div>
	<div>
		<div class="col-sm-1"></div>
		<div class="nav-steps col-sm-10">
			<ul class="nav main-nav"  role="tablist">
				<li class="active">
					<a data-toggle="pill" href="#home">基本信息</a>
				</li>
				<li>
					<a class="" data-toggle="pill" href="#menu1">酒店信息</a>
				</li>
				<li>
					<a class="" data-toggle="pill" href="#menu2">房间照片</a>
				</li>
				<li>
					<a class="" data-toggle="pill" href="#menu3">收款</a>
				</li>
			</ul>
			<div>
				<div class="alignment">
					<h1>资林键</h1>
					<span>请输入贵住宿名称、联系方式和地址。</span>
				</div>
			</div>
			<div class="col-md-9 compact-about-form">
					<form role="form" id="add_property_details"
						action="addrent"
						method="POST" autocomplete="disabled" class="js-main-form">
						<fieldset class="active">
							<div class="row">
								<div class="col-md-12">
									<legend> 住宿名称 </legend>
								</div>
							</div>


							<div class="row">
								<div class="form-group col-xs-12 col-sm-6">


									<div class="input-length-counter">
										<input type="text" id="property_name" name="Rerentname"
											value="" class="form-control form-control property-"
											placeholder="" data-hj-masked=""><span
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
									<legend> 住宿联系信息 </legend>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 form-group">

									<label for="location_contact_name">联络人</label> <input
										type="text" id="location_contact_name"
										name="recontact" value="" class="form-control"
										placeholder="邮政信件的收件人" data-hj-masked=""> <span
										class="help-block"></span>

								</div>
							</div>
							<div class="row">
								<div class="col-md-6 form-group">
									<label for="location_contact_name">邮箱号</label> <input
										type="text" id="location_contact_name"
										name="Reemail" value="" class="form-control"
										placeholder="邮政信件" data-hj-masked=""> <span
										class="help-block"></span>

								</div>
							</div>
						</fieldset>

						<fieldset class="address-information">
							<div class="row">
								<div class="col-md-12">
									<legend>住宿地址 </legend>
								</div>
							</div>
							<div class="row address-row">
								<div class="col-xs-12 col-sm-6 col-md-6 form-group address-form-block">
									<div class="row address-row">
										<div class="col-lg-12 form-group">

											<label for="address">地址栏</label> <input type="text"
												id="address" name="readdress" value="" class="form-control"
												placeholder="详细地址" data-hj-masked=""> <span
												class="help-block"></span>

										</div>
									</div>
									<div class="form-group col-lg-6 adjust-address-input-structure">
										<label for="zipcode">邮政编码</label> <input type="text"
											id="zipcode" name="Recode" value="" class="form-control"
											data-hj-masked=""> <span class="help-block"></span>
									</div>
								</div>

								<div class="col-xs-12 col-sm-6 col-md-6 information-block">
									<div class="adjust-address-image-container  row js-about-adjust-address-image-container snailmail_smaller_block
                        ">
										<div class="col-xs-3">
											<img
												src="https://q.bstatic.com/static/img/join/letter-verification-icon.png">
										</div>
										<div class="col-xs-9">
											<legend>请正确填写您的详细地址</legend>
											<p>
												请填写贵住宿完整的地址信息，包括贵住宿所在大楼名称、门牌号等。根据您所提供的信息，我们可能会发送一封邮政信件来验证地址。
											</p>
										</div>
									</div>
								</div>
							</div>

							<input type="hidden" name="latitude" id="latitude" value="">
							<input type="hidden" name="longitude" id="longitude" value="">
							<input type="hidden" name="coordinates_api" id="coordinates_api"
								value="0">
						</fieldset>

						<input type="submit" name="proceed" value="继续"
							class="btn btn-block btn-primary btn-lg save_and_proceed">
					</form>
				</div>
		</div>
		<div class="col-sm-1"></div>
	</div>
</body>
</html>