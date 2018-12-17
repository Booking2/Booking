<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>登录注册</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<link rel="stylesheet" href="css/style.css">

<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<style type="text/css">
	.cotn_principal{
		height: 71%;
	}
	.cont_centrar{
		background-color:#000080;
	}
</style>
</head>
<body>
<div style="text-align:center;margin:10px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
<div class="cotn_principal">
  <div class="cont_centrar">
    <div class="cont_login"><!-- eee -->
      <div class="cont_info_log_sign_up">
        <div class="col_md_login">
          <div class="cont_ba_opcitiy">
            <h2>登陆</h2>
            <button class="btn_login" id = "btn_logines" onClick="cambiar_login()">登陆</button>
          </div>
        </div>
        <div class="col_md_sign_up">
          <div class="cont_ba_opcitiy">
            <h2>注册</h2>
            <button class="btn_sign_up" id = "btn_sign_up" onClick="cambiar_sign_up()">注册</button>
          </div>
        </div>
      </div>
      <div class="cont_back_info">
        <div class="cont_img_back_grey"> <img src="po.jpg" alt="" /> </div>
      </div>
      <div class="cont_forms" >
        <div class="cont_img_back_"> <img src="po.jpg" alt="" /> </div>
        <div class="cont_form_login" > <a href="#" onClick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
	          <h2 class = "dlzc">登陆</h2>
	          <input type="text" name="uphone" id = "lguphone"placeholder="Uphone"/><br>
	          <span class = "lguphone"></span>
	          <input type="password" name="password"  name="upassword" id ="lgpassword" placeholder="Password"/><br>
	          <span class = "lgpassword"><font color="red" id = "lgpassword2"></font></span>
	          <button class="btn_login" id = "btn_login" onClick="cambiar_login()">登陆</button>
        </div>
        <div class="cont_form_sign_up"> <a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
	          <h2>注册</h2>
	          <input type="text" name="uname" id = "uname" placeholder="Name"/><br>
	          <span class ="zcuname"></span>
	          <input type="text" name="uphone" id = "zcuphone" placeholder="Uphone"/><br>
	          <span class ="zcuphone"></span><span class="zcuphone2"></span>
	          <input type="password" name="upassword" id ="zcpassword" placeholder="Password"/><br>
	          <span class ="zcpassword"></span>
	          <input type="password" name = "password2" id ="zcpassword2" placeholder="Repeatpassword"/><br>
	          <span class ="zcpassword2"></span>
	          <button class="btn_sign_up" id="btn_sign_up_id" onclick="cont_form_sign_up()" >注册</button>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="js/index.js"></script>
<script type="text/javascript">
	$(function(){
		var panduan1 = false;
		var panduan2 = false;
		var panduan3 = false;
		var panduan4 = false;
		var panduan5 = false;
		
		var face = "${iface}";
		console.log(face);
		if(face == "reg"){
			cambiar_sign_up();
		}else if(face == "login") {
			cambiar_login();
		}
		
		var uploadPicError = "${uploadPicError}";
		if(uploadPicError != null){
			$("#lgpassword2").html(uploadPicError);
			setTimeout(function(){  //使用  setTimeout（）方法设定定时2000毫秒
				$("#lgpassword2").html("");
			},2000);
		}
		$("#zcuphone").blur(function(){
			var uphone = $("#zcuphone").val();
			$.ajax({
				url:"uphone",
				type:"post",
				data:{
					"uphone":uphone
				},
				success:function(data){
					
					if(data > 0){
						$(".zcuphone2").html("该手机号码已经注册");
						$(".zcuphone2").attr("style","color:red;");
						panduan1 = false;
					}else{
						$(".zcuphone2").html(" ");
						panduan1 = true;
					}
				}
			});
		});
		
		$("#btn_sign_up_id").click(function(){ 
			 //判断用户名
			 var uname = $("#uname").val();
			 if(uname.length == 0){
					$(".zcuname").html("请输入用户名");
					$(".zcuname").attr("style","color:red;");
					panduan2 = false;
				}else{
					$(".zcuname").html(" ");
					panduan2 = true;
				}
			 //验证是否是手机号码
			 var uphone = $("#zcuphone").val();
			 if(!(/^1(3|4|5|7|8)\d{9}$/.test(uphone)) || uphone == null){ 
			        $(".zcuphone").html("手机号码有误，请重填");
			        $(".zcuphone").attr("style","color:red;");
			        panduan3 = false;
			    } else{
			    	$(".zcuphone").html(" ");
			    	panduan3 = true;
			    }
			    	
			 //判断密码的位数
			 var upassword = $("#zcpassword").val();
			 var zcpassword = $("#zcpassword").val().length;
			 if((zcpassword <6) || (zcpassword >=16)){
					$(".zcpassword").html("密码有误，请重新输入");
			        $(".zcpassword").attr("style","color:red;");
			        panduan4 = false;
				}else{
					$(".zcpassword").html(" ");
					panduan4 = true;
				}
			 //判断密码是否相同
			 var zcpassword2= $("#zcpassword2").val();
			if(zcpassword2 != upassword){
				$(".zcpassword2").html("密码有误，请重新输入");
		        $(".zcpassword2").attr("style","color:red;");
		        panduan5 = false;
			}else{
				$(".zcpassword2").html(" ");
				panduan5 = true;
			}
			if( panduan1 == true && panduan2 == true && panduan3 == true && panduan4 == true && panduan5 == true){
				window.location.href="regon?uname="+uname+"&uphone="+uphone+"&upassword="+upassword;
			}else{
				var heigt=0;
				if(panduan1 == false){
					heigt = heigt+1;
				}
				if(panduan2 == false){
					heigt = heigt+1;
				}
				if(panduan3 == false){
					heigt = heigt+1;
				}
				if(panduan4 == false){
					heigt = heigt+1;
				}
				if(panduan5 == false){
					heigt = heigt+1;
				}
				if(heigt >= 3){
					$(".cont_forms_active_sign_up").height(490);
				}else{
					$(".cont_forms_active_sign_up").height(420);
				}
			}
		});
		$(".material-icons").click(function(){
			$(".cont_forms").height(280);
		})
		
		$("#btn_logines").click(function(){
			
			$(".cont_forms_active_login").height(420);
		}) 
		$("#btn_sign_up").click(function(){
			
			$("#zcuname").val("");
			$("#zcpassword2").val("");
			$("#zcuphone").val("");
			$("#zcpassword").val("");
			$(".zcuname").html("");
			$(".zcpassword2").html("");
			$(".zcuphone").html("");
			$(".zcuphone2").html("");
			$(".zcpassword").html("");
			$(".cont_forms_active_sign_up").height(420);
		})
		//登录
		$("#btn_login").click(function(){
			var lguphone = $("#lguphone").val();
			var lgpassword = $("#lgpassword").val();
			window.location.href="login?uphone="+lguphone+"&upassword="+lgpassword;
		});
	})
</script>
</body>
</html>

