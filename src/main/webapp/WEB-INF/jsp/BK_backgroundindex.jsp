<!-- 出租个人住宿注册账号页面 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在Booking.com上注册您的公寓，酒店</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/捕获.PNG"
	type="image/x-icon">
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/vue.js"></script>
<script type="text/javascript" src="../js/background.js"></script>
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
.join-hero-container__form2{
	position: absolute;
	margin-left: 687px;
	margin-top: 35px;
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
.bdyz{
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
	<div class="container-fluid">
		<div class="row">
			<div class="join-section join-section-color">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					<div class="join-section--header-blue">
						<img src="../img/857e24d682e37e1643fb09b3d17c4af26c4caec0.png">
					</div>
					<div class="join-content-layout">
						<div class="join-h1-subtitle join-h1-new-from">
							<p>来Booking.com注册</p>
							<p>住宿</p>
							<p>吧!</p>
						</div>
						<h3>注册只需15分钟-快来注册吧</h3>
					</div>
					<div id="show" class="join-hero-container__form">
						<div class="new-from">
							<form class="from-add" action="tz" method="post">
								<h4>注册新账号</h4>
								<div class="panel-default">
									<p>手机号</p>
									<input type="text" id="rephone" name="rephone" class="form-control">
									<div class="bdyz" id="bdyz">
										<p></p>
									</div>
									<div class=""></div>
									<p>密码</p>
									<input type="password" id="repassword" name="repassword" class="form-control">
									<div class="bdyz" id="bdyz2">
										<p></p>
									</div>
									<button type="submit" name="save" id="reg" class="join-but">开始注册</button>
								</div>
							</form>
						</div>
						<div class="form-tabs-inline">
							<a id="login" href="javascript:void(0);">已有账号？立即登录</a>
						</div>
					</div>
					<div id="hide" class="join-hero-container__form2">
						<div class="new-from">
							<form class="from-add" action="login" method="post">
								<h4>登录账号</h4>
								<div class="panel-default">
									<p>手机号</p>
									<input type="text" id="rephone" name="rephone" class="form-control">
									<div class="bdyz" id="bdyz">
										<p></p>
									</div>
									<div class=""></div>
									<p>密码</p>
									<input type="password" id="repassword" name="repassword"  class="form-control">
									<div class="bdyz" id="bdyz2">
										<p></p>
									</div>
									<button type="submit" name="save" class="join-but">登录</button>
								</div>
							</form>
						</div>
						<div class="form-tabs-inline">
							<a id="registered" href="javascript:void(0);">没有账号？立即注册</a>
						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
			<div class="join-section-border">
			<div>
				<img alt="" src="../img/background-1.PNG">
			</div>
			</div>
			<div class="join-section-border join-border">
				<div>
					<img alt="" src="../img/background-2.PNG">
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
<script >
	$(function(){
		document.getElementById("hide").style.display="none";
		$("#login").click(function(){
			document.getElementById("hide").style.display="";
			$(".bdyz").hide();
		})
		$("#registered").click(function(){
			document.getElementById("hide").style.display="none";
		})
	})
</script>
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