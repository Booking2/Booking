$(function(){
	//插入城市
	$.ajax({
		type:"post",
		url: "/bk_city/getCityAll",
		data:{},
		success:function(data){
			console.log(data);
			for ( var op in data) {
				$("#citys").append("<option value=" + data[op].ciid + ">" + data[op].ciname + "</option>");
			}
			
		},dataType:"json",error:function(){
			
		}
	})
})

function getarea(){
	var options=$("#citys option:selected");
	var cityval = options.val(); //拿到选中项的值
	
	//插入区
	$("#areas").empty();
	document.getElementById("areas").innerHTML = "<option>==请选择==</option>";
	$.ajax({
		type:"post",
		url:"/bk_city/getAreaAll?Ciid="+cityval,
		data:{},
		success:function(data){
			console.log(data);
			for ( var op in data) {
				$("#areas").append("<option value=" + data[op].arid + ">" + data[op].arname + "</option>");
			}
		},dataType:"json",error:function(){
			
		}
	})
	
}

$(function(){
	//下拉框插入酒店类型
	$.ajax({
		type:"post",
		url: "/bk_city/getHoteltypeAll",
		data:{},
		success:function(data){
			console.log(data);
			for ( var op in data) {
				$("#hoteltype").append("<option value=" + data[op].hid + ">" + data[op].htypename + "</option>");
			}
			
		},dataType:"json",error:function(){
			
		}
	})
})

/*加载事件*/
$(function(){
	var session_value2 = $("#hidden2").val();
	var session_value3 = $("#hidden3").val();
	if(session_value3 == 3){
		document.getElementById("aid2").click();//标签点击事件
		document.getElementById("fjzp").classList.add("acti");//改变导航栏样式
		var session_value = $("#hidden3").val("");
	}else if(session_value2 == 2){
		document.getElementById("aid").click();//标签点击事件
		document.getElementById("jd").classList.add("acti");//改变导航栏样式	 
		var session_value = $("#hidden2").val("");
	}
})


//获取区下拉框的值
function func(){
	var options=$("#areas option:selected");//获取当前选择项的索引.
	var val = options.val();//获取当前选择项的值.
	$("#areasid").val(val);
	
}

//获取酒店类型下拉框的值
function hotelType(){
	var options=$("#hoteltype option:selected");//获取当前选择项的索引.
	var val = options.val();//获取当前选择项的值.
	$("#hoteltypeid").val(val);
}


$(function(){
	$("#emnu2").click(function(){
		
	})
	$("#emnu3").click(function(){
		document.getElementById("sk").classList.add("acti");
	})
})

/*$(document).ready(function() {
    if(location.hash) {
        $('a[href=' + location.hash + ']').tab('show');
    }
    $(document.body).on("click", "a[data-toggle]", function(event) {
        location.hash = this.getAttribute("href");
    });
});
$(window).on('popstate', function() {
    var anchor = location.hash || $("a[data-toggle=tab]").first().attr("href");
    $('a[href=' + anchor + ']').tab('show');
});*/

/*触发a标签*/
 