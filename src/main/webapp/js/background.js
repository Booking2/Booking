/*表单验证*/
/*个人信息表单验证*/

//提示框	
var panduan1 = false;
var panduan2 = false;
var blur;
var content;
var cls;
function prompt(content,blur,cls){
	$("#"+cls+" p").text(content);
	$("#"+cls+"").show();
	if(blur){
		$("#"+cls+"").hide();
	}
	if(panduan1 && panduan1){
		$("#reg").text("注册")
		$("#reg").removeAttr("disabled");
	}

}

$(function(){
	$(".bdyz").hide();
	$("#reg").text("请完成注册")
	$("#reg").attr("disabled", "disabled");
	//手机号码
	$("#rephone").blur(function(){
		var rephone = document.getElementById("rephone").value;
		var mPattern = /^1[34578]\d{9}$/;//手机号码正则
		
		if(rephone.trim().length==0){
			content = "手机号码不能为空";
			blur = false;
			cls = "bdyz";
			prompt(content,blur,cls);
		}else if(!(mPattern.test(rephone))){
			content = "请输入正确的手机号码";
			blur = false;
			cls = "bdyz";
			prompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			panduan1 = true;
			cls = "bdyz";
			prompt(content,blur,cls);
		}
		$.ajax({
			type:"post",
			url:"/bk_rent/Phone",
			data:{Phone:rephone},
			success:function(data){
				console.log(rephone);
				console.log(data);
				if(data>0){
					content = "手机号码已被注册";
					blur = false;
					cls = "bdyz";
					prompt(content,blur,cls);
				}
			}
		})
		
		return panduan1;
	})
	
	//密码验证
	$("#repassword").blur(function(){
		var repassword = document.getElementById("repassword").value;
		var password = /^[a-z0-9_-]{6,18}$/;//密码正则
		
		if(repassword.trim().length==0){
			content = "密码不能为空";
			blur = false;
			cls = "bdyz2";
			prompt(content,blur,cls);
		}else if(!(password.test(repassword))){
			content = "请输入以字母开头字符大于6小于18位的密码";
			blur = false;
			cls = "bdyz2";
			prompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			panduan2 = true;
			cls = "bdyz2";
			prompt(content,blur,cls);
		}
		return panduan2;
	})
})
