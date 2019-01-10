 $(function(){
	 $(".hp_rt_input").click(function(){
		    //首先获得下拉框的节点对象；
	        var select = document.getElementsByClassName("hprt-nos-select");  
	        //1.如何获得当前选中的值？：
	        var index = 0;
	        var index1 = 0;
	        var uid = $("#hidden").val();  //用户id
	        var hoid = $("#hidden1").val(); //酒店id
			 if(uid == null || uid == ""){
				toastr.warning('请先注册或登录账号'); 
				 /*toastr.success('提交数据成功');*/
				 /*toastr.error('Error');*/
				 
				 /*toastr.info('info');*/
			 }else{ 
		        for(var i =0; i<select.length; i++ ){
		           var value = select[i].value;   
		        	  if(value != 0){ 
		        		  var rid = $($("select option:checked").get(i)).attr("id");  //获取选择的下拉框id
		        		  alert(rid);
		        		  alert(value);   
		        		  index += value;
		        	   } else {
		        		   index += value;
		        		   index1 += value;
		        	   }  
		        } 
		        if(index == index1){
		        	toastr.error('请选择一间客房！');
		        	$(".hprt-table-room-select").css("background-color","#ff8080");
		        	 
		             setTimeout(function(){
		        		$(".hprt-table-room-select").css("background-color","#FFF");
		        		$(".hprt-table-room-select").css("transition","all 0.9s");
		        	},3300); 
		        	
		        }
		  }
	 });
})