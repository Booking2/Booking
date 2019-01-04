$(function(){
	var delParent;
	var defaults = {
		fileType         : ["jpg","png","PNG","bmp","jpeg"],   // 上传文件的类型
		fileSize         : 1024 * 1024 * 10                  // 上传文件的大小 10M
	};
	var curFiles = [];//更新后的数组
		/*点击图片的文本框*/
	$(".file").change(function(){	 
		var idFile = $(this).attr("id");
		var file = document.getElementById(idFile);//图片对象
		var imgContainer = $(this).parents(".z_photo"); //存放图片的父亲元素
		var fileList = file.files; //获取的图片文件
		console.log(fileList);
		var input = $(this).parent();//文本框的父亲元素
		var imgArr = [];
		//遍历得到的图片文件
		var numUp = imgContainer.find(".up-section").length;//当前图片数量
		var totalNum = numUp + fileList.length;  //总的数量
		
		var files = this.files;
		if (files && files.length) {
		// 原始FileList对象不可更改，所以将其赋予curFiles提供接下来的修改
		Array.prototype.push.apply(curFiles, files);
		}
		if(fileList.length >20 || totalNum > 20 ){
			alert("上传图片数目不可以超过20个，请重新选择");  //一次选择上传超过5个 或者是已经上传和这次上传的到的总数也不可以超过5个
		}
		else if(numUp < 21){
			var fileList = validateUp(fileList);
			for(var i = 0;i<fileList.length;i++){
			 var imgUrl = window.URL.createObjectURL(fileList[i]);
			     imgArr.push(imgUrl);
			 var $section = $("<section class='up-section fl loading'>");
			     imgContainer.prepend($section);
			 var $span = $("<span class='up-span'>");
			     $span.appendTo($section);
			
		     var $img0 = $("<img class='close-upimg'>").on("click",function(event){
				    event.preventDefault();
					event.stopPropagation();
					$(".works-mask").show();
					delParent = $(this).parent();
					var val = $(this).parent().children("p").text();
					$(".wsdel-ok").unbind();
					$(".wsdel-ok").click(function(){
						$(".works-mask").hide();
						var numUp = delParent.siblings().length;
						if(numUp < 26){
							delParent.parent().find(".z_file").show();
							// 去除该文件并更新数组
							curFiles = fileList.filter(function(file) {
								delete fileList[val];
								 
								return fileList;
							});
							var $p = $("<p class='img-name-p'>");
							$p.html(i).appendTo($section);
							console.log(curFiles)
						}
						 delParent.remove();
					});
				});   
				$img0.attr("src","../img/a7.png").appendTo($section);
		     var $img = $("<img class='up-img up-opcity'>");
		         $img.attr("src",imgArr[i]);
		         $img.appendTo($section);
		     var $p = $("<p class='img-name-p'>");
		     $p.html(i).appendTo($section);
		     var $input = $("<input id='taglocation' name='taglocation' value='' type='hidden'>");
		         $input.appendTo($section);
		     var $input2 = $("<input id='tags' name='tags' value='' type='hidden'/>");
		         $input2.appendTo($section);
		   }   
		}
		
		$("#emnu3").click(function(){
			var fd = new FormData(); // 使用某个表单作为初始项
			for (var i = 0, j = curFiles.length; i < j; ++i) {
				fd.append('imgs', curFiles[i]);
			}
			$.ajax({
			url: "/bk_hotel/imgs",
			type: "POST",
			data: fd,
			processData: false, // 告诉jQuery不要去处理发送的数据
			contentType: false // 告诉jQuery不要去设置Content-Type请求头
			});
		})
		
		setTimeout(function(){
             $(".up-section").removeClass("loading");
		 	 $(".up-img").removeClass("up-opcity");
		 },450);
		 numUp = imgContainer.find(".up-section").length;
		if(numUp >= 20){
			$(this).parent().hide();
		}
	});
	
	
   
    $(".z_photo").delegate(".close-upimg","click",function(){
     	  $(".works-mask").show();
     	  delParent = $(this).parent();
	});
	
	$(".wsdel-no").click(function(){
		$(".works-mask").hide();
	});
	
	//判断上传文件的合理性
	function validateUp(files){
		var arrFiles = [];//替换的文件数组
		for(var i = 0, file; file = files[i]; i++){
			//获取文件上传的后缀名
			var newStr = file.name.split("").reverse().join("");
			if(newStr.split(".")[0] != null){
					var type = newStr.split(".")[0].split("").reverse().join("");
					console.log(type+"===type===");
					if(jQuery.inArray(type, defaults.fileType) > -1){
						// 类型符合，可以上传
						if (file.size >= defaults.fileSize) {
							alert(file.size);
							alert('您这个"'+ file.name +'"文件大小过大');	
						} else {
							// 在这里需要判断当前所有文件中
							arrFiles.push(file);	
						}
					}else{
						alert('您这个"'+ file.name +'"上传类型不符合');	
					}
				}else{
					alert('您这个"'+ file.name +'"没有类型, 无法识别');	
				}
		}
		return arrFiles;
	}
		
})
