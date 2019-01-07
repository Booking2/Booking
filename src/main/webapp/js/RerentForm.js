/*个人信息表单验证*/

//提示框	
var blur;
var content;
var cls;
var panduan1 = false;
var panduan2 = false;
var panduan3 = false;
var panduan4 = false;
var panduan5 = false;

function prompt(content,blur,cls){
	$("#"+cls+" p").text(content);
	$("#"+cls+"").show();
	if(blur){
		$("#"+cls+"").hide();
	}
	if(panduan1 && panduan2 && panduan3 && panduan4 && panduan5){
		$("#emnu1").val("继续注册")
		$("#emnu1").removeAttr("disabled");
	}
}

$(function(){
	$(".geform").hide();
	$("#emnu1").val("请完成注册")
	$("#emnu1").attr("disabled", "disabled");
	$("#emnu2").val("请完成注册")
	$("#emnu2").attr("disabled", "disabled");
	//住宿名称验证
	$("#property_name").blur(function(){
		var Rerentname = document.getElementById("property_name").value;
		var uPattern = /^[\u4E00-\u9FA5A-Za-z\s0-9]+(·[\u4E00-\u9FA5A-Za-z0-9]+)*$/;
		
		if(Rerentname.trim().length==0){
			content = "住宿名称不能为空";
			blur = false;
			cls = "geform1";
			prompt(content,blur,cls);
		}else if(!(uPattern.test(Rerentname))){
			content = "请认真填写住宿名称,住宿名称不可更改!";
			blur = false;
			cls = "geform1";
			prompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			panduan1 = true;
			cls = "geform1";
			prompt(content,blur,cls);
		}
		return panduan1;
	})
	
	//姓名验证
	$("#location_contact_name").blur(function(){
		var recontact = document.getElementById("location_contact_name").value;
		var namereg = /^[\u4E00-\u9FA5]+(·[\u4E00-\u9FA5]+)*$/;
		
		if(recontact.trim().length==0){
			content = "姓名不能为空";
			blur = false;
			cls = "geform2";
			prompt(content,blur,cls);
		}else if(!(namereg.test(recontact))){
			content = "请输入真实姓名";
			blur = false;
			cls = "geform2";
			prompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			panduan2 = true;
			cls = "geform2";
			prompt(content,blur,cls);
		}
		return panduan2;
	})
	
	//邮箱号验证
	$("#location_contact_email").blur(function(){
		var Reemail = document.getElementById("location_contact_email").value;
		var ePattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		
		if(Reemail.trim().length==0){
			content = "邮箱不能为空";
			blur = false;
			cls = "geform3";
			prompt(content,blur,cls);
		}else if(!(ePattern.test(Reemail))){
			content = "请输入正确邮箱号";
			blur = false;
			cls = "geform3";
			prompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			panduan3 = true;
			cls = "geform3";
			prompt(content,blur,cls);
		}
		return panduan3;
	})
	
	//城市验证
	$("#address").blur(function(){
		var readdress = document.getElementById("address").value;
		var aPattern = /^[\u2E80-\u9FFF]+$/;
		
		if(readdress.trim().length==0){
			content = "城市不能为空";
			blur = false;
			cls = "geform4";
			prompt(content,blur,cls);
		}else if(!(aPattern.test(readdress))){
			content = "请输入中文";
			blur = false;
			cls = "geform4";
			prompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			panduan4 = true;
			cls = "geform4";
			prompt(content,blur,cls);
		}
		return panduan4;
	})
	
	
	//邮政编码验证
	$("#zipcode").blur(function(){
		var Recode = document.getElementById("zipcode").value;
		var rPattern = /^[0-9]{6}$/;
		
		if(Recode.trim().length==0){
			content = "邮政编码不能为空";
			blur = false;
			cls = "geform5";
			prompt(content,blur,cls);
		}else if(!(rPattern.test(Recode))){
			content = "请输入正确的邮政编码";
			blur = false;
			cls = "geform5";
			prompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			panduan5 = true;
			cls = "geform5";
			prompt(content,blur,cls);
		}
		return panduan5;
	})
})