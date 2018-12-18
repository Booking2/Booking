<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在Booking.com上注册您的公寓，酒店</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/vue.js"></script>
<style type="text/css">
.join-section--header-blue {
	background: #001b42;
}

.join-section--header-blue img {
	height: 35px;
	padding-top: 10px;
}

.join-section-color {
	background: #001b42;
}

.join-section {
	height: 600px;
}
.join-section-border{
	height: 540px;
}

.join-content-layout {
	height: 305px;
	width: 677px;
	color: #cce1ff;
	float: left;
}

.join-h11-subtitle {
	
}

.join-h1-new-from {
	font-size: 50px;
	margin-top: 100px;
	color: #e9f0fa;
}

.join-hero-container__form {
	margin-left: 10px;
	margin-top: 35px;
	float: left;
	width: 416px;
}

.new-from {
	height: 100%;
}

.from-add {
	padding: 22px 24px;
	background: #fff;
	height: 100%;
}
hr{
	margin: 0px;
}

p {
	margin-top: 5px;
	margin-bottom: 0px;
}

h3 {
	margin-top: 0px;
}

.panel-default {
	width: 368px;
}

.form-control {
	width: 100%;
	padding: 6px 12px;
	font-size: 14px;
}

.join-but {
	width: 100%;
	padding: 12px 16px;
	font-size: 16px;
	background: #07c;
	border: none;
	color: #fff;
	margin-top: 20px;
}

.form-tabs-inline {
	background: #fff;
	border-radius: 0 0 3px 3px;
	margin: 0;
	padding: 0;
	left: 0;
	right: 0;
	text-align: center;
	position: relative;
	max-width: 750px;
	border: none;
	height: 60px;
}

.join-trust__content {
	width: 677px;
	margin-top: 200px;
	float: left;
	margin-top: 200px;
}

.join-trust__content h3 {
	margin-top: 40px;
}

.join-trust__content ul {
	margin: 30px;
}

.join-trust__item {
	margin-top: 10px;
}

.join-trust__icon {
	margin-left: 80px;
	margin-top: 200px;
	float: left;
	margin-top: 200px;
}
.join-border{
	border-color: #dedede
}
.join-section-border img{
	width: 100%;
}
.join-section-left{
	float:left;
	width:40%;
	margin-top: 120px;
	margin-left: 190px;
	font-size: 17px;
}
.join-section-left h2{
	margin-bottom: 30px;
}
.join-section-left-z{
	margin-bottom: 30px;
}
.join-comission-benefits{
	list-style: none;
	margin-left: -39px;
}
.join-section-rigth{
	float:left;
	margin-top: 120px;
	background: #f7f7f7;
    padding: 24px 24px 8px;
    width: 570px;
}
.join-medium{
	font-size: 20px;
}
.join-commission-table{
	width: 100%;
    margin-top: 16px;
}

.join-commission-table td{
	padding: 16px 0;
}
.join-commission-table tr{
	border-top: 1px solid #dedede;
}
tr:last-child {
    border-top: 1px solid #707070;
}
.join-commission-block__num-field{
	text-align: right;
}
.form-control-1{
	display: inline-block;
	border-radius: 4px;
	width: 100px;
	text-align: right;
	padding: 6px 12px;
	border: 1px solid #ccc;
}
.form-control-2{
	display: inline-block;
	border-radius: 4px;
	width: 100px;
	text-align: right;
	padding: 6px 12px;
	border: none;
	outline:none;
	background: #f7f7f7;
}
table{
	border-collapse: collapse;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="join-section join-section-color">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					<div class="join-section--header-blue">
						<img src="img/857e24d682e37e1643fb09b3d17c4af26c4caec0.png">
					</div>
					<div class="join-content-layout">
						<div class="join-h1-subtitle join-h1-new-from">
							<p>来Booking.com注册</p>
							<p>住宿</p>
							<p>吧!</p>
						</div>
						<h3>注册只需15分钟-快来注册吧</h3>
					</div>
					<div class="join-hero-container__form">
						<div class="new-from">
							<form class="from-add" action="addrent" method="post">
								<h4>注册新账号</h4>
								<div class="panel-default">
									<p>手机号</p>
									<input type="text" name="rephone" class="form-control">
									<p>密码</p>
									<input type="text" name="repassword" class="form-control">
									<button type="submit" name="save" class="join-but">开始注册</button>
								</div>
							</form>
						</div>
						<div class="form-tabs-inline">
							<a href="#">已有账号？立即登录</a>
						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
			<div class="join-section-border">
			<div>
				<img alt="" src="../../../img/background-1.PNG">
			</div>
				<!-- <div class="col-sm-1"></div>
				<div class="join-trust__content col-sm-10">
					<h2 class="bui_font_display_three" id="trust-and-safety">您的安心是我们的首要任务</h2>
					<h3>以下几招祝您自信迎客：</h3>
					<ul class="join-trust__list">
						<li class="join-trust__item"><svg width="16" height="12"
								class="join-trust__tick"> <path
								d="M3.814 7.1L.969 4.303 0 5.248 3.814 9 12 .946 11.038 0z"
								fill="#0AB21A" fill-rule="nonzero"></path></svg> 您的住宿您做主 -
							设置您偏好的价格、政策和规定</li>
						<li class="join-trust__item"><svg width="16" height="12"
								class="join-trust__tick"> <path
								d="M3.814 7.1L.969 4.303 0 5.248 3.814 9 12 .946 11.038 0z"
								fill="#0AB21A" fill-rule="nonzero"></path></svg> 我们为您保驾护航 -
							24小时全天候客服在您身边，为您提供客人不当行为报告</li>
						<li class="join-trust__item"><svg width="16" height="12"
								class="join-trust__tick"> <path
								d="M3.814 7.1L.969 4.303 0 5.248 3.814 9 12 .946 11.038 0z"
								fill="#0AB21A" fill-rule="nonzero"></path></svg> 找寻您的理想客人 -
							设置客人必须遵守的要求和规则</li>
					</ul>
				</div>
				<div class="join-trust__icon">
					<svg viewBox="0 0 217 217" width="100%"> <g fill="none">
					<circle cx="108.5" cy="108.5" r="108.5" fill="#F7F7F7"></circle> <rect
						width="108" height="159" x="59" y="33" fill="#6A6A6A"
						fill-opacity=".195" rx="1"></rect> <rect width="108" height="159"
						x="55" y="29" fill="#537BB4" fill-opacity=".769" rx="1"></rect> <rect
						width="94" height="147" x="62" y="36" fill="#FEFEFE" rx="1"></rect>
					<rect width="48" height="4" x="98" y="55" fill="#BDBDBD" rx="1"></rect>
					<rect width="28" height="4" x="98" y="67" fill="#BDBDBD" rx="1"></rect>
					<path fill="#52B1B1"
						d="M80.4959035,63.7576173 L78.1929748,61.651918 C77.5467673,61.0645588 76.503118,61.0645588 75.8569105,61.651918 L74.4817805,62.9092781 C73.8394065,63.5001425 73.8394065,64.4544107 74.4817805,65.0452752 L80.5124713,70.5594806 C81.1586788,71.1468398 82.2023282,71.1468398 82.8485357,70.5594806 L85.3999818,68.2265475 L93.5182195,60.8338766 C94.1605935,60.2430121 94.1605935,59.2887439 93.5182195,58.6978794 L92.1430895,57.4405194 C91.496882,56.8531602 90.4532327,56.8531602 89.8070252,57.4405194 L82.8485357,63.8030641 C82.5308678,64.0839277 82.1036539,64.2371194 81.6618626,64.2285851 C81.2200714,64.2200509 80.8003147,64.0504979 80.4959035,63.7576173 Z"></path>
					<rect width="48" height="4" x="98" y="87" fill="#EDEDED" rx="1"></rect>
					<rect width="28" height="4" x="98" y="98" fill="#EDEDED" rx="1"></rect>
					<path fill="#52B1B1" fill-opacity=".315"
						d="M80.4959035,94.7576173 L78.1929748,92.651918 C77.5467673,92.0645588 76.503118,92.0645588 75.8569105,92.651918 L74.4817805,93.9092781 C73.8394065,94.5001425 73.8394065,95.4544107 74.4817805,96.0452752 L80.5124713,101.559481 C81.1586788,102.14684 82.2023282,102.14684 82.8485357,101.559481 L85.3999818,99.2265475 L93.5182195,91.8338766 C94.1605935,91.2430121 94.1605935,90.2887439 93.5182195,89.6978794 L92.1430895,88.4405194 C91.496882,87.8531602 90.4532327,87.8531602 89.8070252,88.4405194 L82.8485357,94.8030641 C82.5308678,95.0839277 82.1036539,95.2371194 81.6618626,95.2285851 C81.2200714,95.2200509 80.8003147,95.0504979 80.4959035,94.7576173 Z"></path>
					<rect width="48" height="4" x="98" y="118" fill="#EDEDED" rx="1"></rect>
					<rect width="28" height="4" x="98" y="129" fill="#EDEDED" rx="1"></rect>
					<path fill="#52B1B1" fill-opacity=".315"
						d="M80.4959035,124.757617 L78.1929748,122.651918 C77.5467673,122.064559 76.503118,122.064559 75.8569105,122.651918 L74.4817805,123.909278 C73.8394065,124.500143 73.8394065,125.454411 74.4817805,126.045275 L80.5124713,131.559481 C81.1586788,132.14684 82.2023282,132.14684 82.8485357,131.559481 L85.3999818,129.226548 L93.5182195,121.833877 C94.1605935,121.243012 94.1605935,120.288744 93.5182195,119.697879 L92.1430895,118.440519 C91.496882,117.85316 90.4532327,117.85316 89.8070252,118.440519 L82.8485357,124.803064 C82.5308678,125.083928 82.1036539,125.237119 81.6618626,125.228585 C81.2200714,125.220051 80.8003147,125.050498 80.4959035,124.757617 Z"></path>
					<rect width="48" height="4" x="98" y="149" fill="#EDEDED" rx="1"></rect>
					<rect width="28" height="4" x="98" y="161" fill="#EDEDED" rx="1"></rect>
					<path fill="#52B1B1" fill-opacity=".315"
						d="M80.4959035,156.757617 L78.1929748,154.651918 C77.5467673,154.064559 76.503118,154.064559 75.8569105,154.651918 L74.4817805,155.909278 C73.8394065,156.500143 73.8394065,157.454411 74.4817805,158.045275 L80.5124713,163.559481 C81.1586788,164.14684 82.2023282,164.14684 82.8485357,163.559481 L85.3999818,161.226548 L93.5182195,153.833877 C94.1605935,153.243012 94.1605935,152.288744 93.5182195,151.697879 L92.1430895,150.440519 C91.496882,149.85316 90.4532327,149.85316 89.8070252,150.440519 L82.8485357,156.803064 C82.5308678,157.083928 82.1036539,157.237119 81.6618626,157.228585 C81.2200714,157.220051 80.8003147,157.050498 80.4959035,156.757617 Z"></path>
					<rect width="49" height="7" x="86" y="34" fill="#525354"
						fill-opacity=".555" rx="1"></rect> <rect width="49" height="7"
						x="85" y="32" fill="#D7DADB" rx="1"></rect></g> </svg>
				</div>
				<div class="col-sm-1"></div> -->
			</div>
			<div class="join-section-border join-border">
				<div>
					<img alt="" src="../../../img/background-2.PNG">
				</div>
			</div>
			<div class="join-section">
				<div class="join-section-left">
					<h2>价格与佣金</h2>
					<div class="join-section-left-z">
						<p>我们的定价构成是根据您所设即客人所付的理念而设计。我们不额外添加任何</p>
						<p>费用，这样贵住宿可提供更有优势的价格，从而吸引更多客人。</p>
					</div>
					<div class="join-section-left-btm">
						<h3>Huangxing住宿佣金：15%</h3>
						<ul class="join-comission-benefits">
							<li>
								<span class="join-comission-benefits--icon">
									<svg width="18" height="19" viewBox="0 0 18 19"><g transform="rotate(45 9.5 9)" fill="none" fill-rule="evenodd"><circle fill="#00B400" cx="9.661" cy="9.868" r="9"></circle><path fill="#FFF" d="M10 4h2v10h-2z"></path><path fill="#FFF" d="M7 12h5v2H7z"></path></g></svg>
								</span>7 x 24小时真人客服电话邮件提供支持
							</li>
							<li>
								<span class="join-comission-benefits--icon">
									<svg width="18" height="19" viewBox="0 0 18 19"><g transform="rotate(45 9.5 9)" fill="none" fill-rule="evenodd"><circle fill="#00B400" cx="9.661" cy="9.868" r="9"></circle><path fill="#FFF" d="M10 4h2v10h-2z"></path><path fill="#FFF" d="M7 12h5v2H7z"></path></g></svg>
								</span>强大的搜索引擎排名，获取更多订单</li>
							<li>
								<span class="join-comission-benefits--icon">
									<svg width="18" height="19" viewBox="0 0 18 19"><g transform="rotate(45 9.5 9)" fill="none" fill-rule="evenodd"><circle fill="#00B400" cx="9.661" cy="9.868" r="9"></circle><path fill="#FFF" d="M10 4h2v10h-2z"></path><path fill="#FFF" d="M7 12h5v2H7z"></path></g></svg>
								</span>为提升住宿业绩提供分析与建议
							</li>
						</ul>
					</div>
				</div>
				<div class="join-section-rigth" id="app">
					<p class="join-medium">看看贵住宿可赚取的利润</p>
					<table class="join-commission-table">
						<tbody>
							<tr>
								<td>贵宿每晚定价</td>
								<td class="join-commission-block__num-field">
									<span>CNY</span>
									<input type="text" class="form-control-1" data-placement="rigth" v-model="firstname" style="border-top: 1px solid #dedede;"/>
								</td>
							</tr>
							<tr>
								<td>客人每晚需付房价</td>
								<td class="join-commission-block__num-field">
									<input type="text" v-model="Dayfirstname" class="form-control-2">
								</td>
							</tr>
							<tr>
								<td>客人所付房费已包含佣金</td>
								<td class="join-commission-block__num-field">
									<input type="text" v-model="lastname" hidden>
									<input type="text" v-model="fullname" class="form-control-2">
								</td>
							</tr>
							<tr>
								<td>每晚收益</td>
								<td class="join-commission-block__num-field">
									<input type="text" v-model="DayMoney" class="form-control-2">
								</td>
							</tr>
							<tr>
								<td><strong>每月预期收益</strong></td>
								<td class="join-commission-block__num-field">
									<input type="text" v-model="Money" class="form-control-2">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
    // 创建 Vue 实例，得到 ViewModel
    var vm = new Vue({
      el: '#app',
      data: {
          firstname: '',
		  Dayfirstname:'',
          lastname: 1*0.15,
          fullname: '',
		  DayMoney:'',
		  Money:''
      },
      methods: {},
	  watch: {
          'firstname': function(newVal){
			  this.Dayfirstname = newVal
			  this.fullname = newVal * 0.15
              this.DayMoney = newVal - this.lastname
          },
          'DayMoney': function(newVal){
              this.DayMoney = this.firstname - this.fullname
			  this.Money = newVal * 30
          }
      }
    });
 </script>
</html>