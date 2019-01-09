/*添加酒店表单验证*/
//提示框	
var Hotel1 = false;
var Hotel2 = false;
var Hotel3 = false;
var Hotel4 = false;

function Hprompt(content,blur,cls){
	$("#"+cls+" p").text(content);
	$("#"+cls+"").show();
	if(blur){
		$("#"+cls+"").hide();
	}
	if(Hotel1 && Hotel2 && Hotel3 && Hotel4){
		$("#emnu2").val("继续注册")
		$("#emnu2").removeAttr("disabled");
	}
}

$(function(){
	$(".jdform").hide();
	$("#emnu2").val("请完成注册")
	$("#emnu2").attr("disabled", "disabled");
	
	//初始化判断是否选择城市
	var options=$("#areas option:selected");//获取当前选择项的索引.
	var val = options.val();//获取当前选择项的值.
	if(isNaN(val)){
		blur = false;
		content = "请选择城市";
		cls = "jdform1";
		Hotel1 = false;
		Hprompt(content,blur,cls);
	}
	
	
	//区验证
	$("#areas").change(function(){
		var options2=$("#areas option:selected");//获取当前选择项的索引.
		var val2 = options2.val();//获取当前选择项的值.
		if(isNaN(val2)){
			blur = false;
			content = "请选择城市";
			cls = "jdform1";
			Hotel1 = false;
			Hprompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			cls = "jdform1";
			Hotel1 = true;
			Hprompt(content,blur,cls);
		}
		return Hotel1;
	})
	
	//地址验证
	$("#Hoaddress").blur(function(){
		var hoaddress = document.getElementById("Hoaddress").value;
		var hoadd = /^[\u2E80-\u9FFF]+$/;
		
		if(hoaddress.trim().length==0){
			content = "地址不能为空";
			blur = false;
			cls = "jdform2";
			Hotel2 = false;
			Hprompt(content,blur,cls);
		}else if(!(hoadd.test(hoaddress))){
			content = "请输入中文";
			blur = false;
			cls = "jdform2";
			Hotel2 = false;
			Hprompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			Hotel2 = true;
			cls = "jdform2";
			Hprompt(content,blur,cls);
		}
		return Hotel2;
	})
	
	//初始化判断是否选择酒店类型
	var options3 = $("#hoteltype option:selected");//获取当前选择项的索引.
	var val3 = options3.val();//获取当前选择项的值.
	var options4 = $("#Roomstype option:selected");//获取当前选择项的索引.
	var val4 = options3.val();//获取当前选择项的值.
	if(isNaN(val3)&&isNaN(val4)){
		blur = false;
		content = "请选择酒店类型";
		cls = "jdform3";
		Hotel3 = false;
		Hprompt(content,blur,cls);
	}
	if(isNaN(val4)){
		blur = false;
		content = "请选择酒店具体类型";
		cls = "jdform4";
		Hotel3 = false;
		Hprompt(content,blur,cls);
	}
	
	//酒店类型验证
	$("#hoteltype").change(function(){
		var options5=$("#hoteltype option:selected");//获取当前选择项的索引.
		var val5 = options5.val();//获取当前选择项的值.
		if(isNaN(val5)){
			blur = false;
			content = "请选择酒店类型";
			cls = "jdform3";
			Hotel3 = false;
			Hprompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			cls = "jdform3";
			Hotel3 = true;
			Hprompt(content,blur,cls);
		}
		return Hotel3;
	})
	
	//酒店类型验证2
	$("#Roomstype").change(function(){
		var options6 = $("#Roomstype option:selected");//获取当前选择项的索引.
		var val6 = options6.val();//获取当前选择项的值.
		if(isNaN(val6)){
			blur = false;
			content = "请选择酒店具体类型";
			cls = "jdform4";
			Hotel4 = false;
			Hprompt(content,blur,cls);
		}else{
			content = "";
			blur = true;
			cls = "jdform4";
			Hotel4 = true;
			Hprompt(content,blur,cls);
		}
		return Hotel4;
	})
})