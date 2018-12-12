<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头部</title>
<script src="js/jquery-1.8.3.js"></script>
    <script>
     $(function(){
    	$(".Head_total_img2 img").mouseenter(function(){
    		$("#Head_total_img2_div").css("visibility","visible");
    		//获取box1
            var box1 = document.getElementById("Head_total_img2_div");
            //绑定鼠标移动事件
            document.onmousemove = function(event){
                
                //解决兼容问题
                event = event || window.event;
                
                //获取滚动条滚动的距离
                /*
                 * chrome认为浏览器的滚动条是body的，可以通过body.scrollTop来获取
                 * 火狐等浏览器认为浏览器的滚动条是html的，
                 */
                var st = document.body.scrollTop || document.documentElement.scrollTop;
                var sl = document.body.scrollLeft || document.documentElement.scrollLeft;
                //var st = document.documentElement.scrollTop;
                //获取到鼠标的坐标
                /*
                 * clientX和clientY
                 *  用于获取鼠标在当前的可见窗口的坐标
                 * div的偏移量，是相对于整个页面的
                 * 
                 * pageX和pageY可以获取鼠标相对于当前页面的坐标
                 *  但是这个两个属性在IE8中不支持，所以如果需要兼容IE8，则不要使用
                 */
                var left = event.clientX;
                var top = event.clientY;
                
                //设置div的偏移量
                box1.style.left = left + sl + "px";
                box1.style.top = top + st + "px";
                
            };  
    	}) 
    	
     });
     $(function(){
    	 $(".Head_total_img2").mouseleave(function(){  //鼠标移出
    		 $("#Head_total_img2_div").css("visibility","hidden");
          });
    	 //注册特效
    	 $(".Head_total_rigth_register").mouseenter(function(){
    		 $(this).css("color","#00688B");
    	 })
    	 $(".Head_total_rigth_register").mouseleave(function(){
    		 $(this).css("color","#000000");
    	 })
    	 //登录特效
    	 $(".Head_total_rigth_login").mouseenter(function(){
    		 $(this).css("color","#00688B");
    	 })
    	 $(".Head_total_rigth_login").mouseleave(function(){
    		 $(this).css("color","#000000");
    	 })
    	 //上线我的住宿特效
    	 $(".Head_total_rigth_lease").mouseenter(function(){
    		 $(this).css("background-color","#00688B");
    	 })
    	 $(".Head_total_rigth_lease").mouseleave(function(){
    		 $(this).css("background-color","#000080");
    	 })
     })
    </script> 
<style type="text/css">
       *{
            margin: 0;
            padding: 0;
     } 
   .Head_total{
      width: 100%;
      height: 120px;
      background-color: #000080;
   }
   .Head_total_img1 img{
      height:35px;
      padding-left: 142px;
      padding-top: 10px;
   }
   .Head_total_stay{
      margin-left: 142px;
      margin-top: 25px;
      color: #ffffff; 
      cursor: pointer;
   }
   .Head_total_stay_span{
      border: 1px solid;
      width: 10px;
      height:50px; 
      border-color: #104E8B;
      background-color: #104E8B;
      padding: 8px;
      border-radius:5px 5px 5px 5px; /* 设置四角形状 */ 
   } 
   .Head_total_img2{
     border: 1px solid #000080;
     width: 50px;
     height: 50px;
   }
   .Head_total_img2 img{
      position: absolute;
      width: 30px; 
      cursor: pointer;    /* 手指状态   */
      margin-left:735px; 
      padding-top: 17px; 
   }  
   .Head_total_rigth{
      float: right; 
      padding-top: 18px;
      padding-right:142px; 
   }    
   .Head_total_rigth_register{
      border: 1px solid;  
      border-color: #ffffff;
      background-color: #ffffff;
      color: #000000; 
      padding: 8px;
      border-radius:5px 5px 5px 5px;  
      cursor: pointer;
      margin-left: 15px;
      
   }
   .Head_total_rigth_login{
      border: 1px solid; 
      border-color: #ffffff;
      background-color: #ffffff;
      color: #000000;  
      padding: 8px;
      border-radius:5px 5px 5px 5px; 
      cursor: pointer;
      margin-left: 15px;
   }
   .Head_total_rigth_lease{ 
      border: 1px solid; 
      border-color: #ffffff; 
      color: #ffffff; 
      padding: 8px;
      cursor: pointer;
      border-radius:5px 5px 5px 5px;
   }
  .Head_total_img2_div{
      width: 0;
      height: 0;
      border-left: 10px solid green;
      border-right: 10px solid red;
      border-top: 10px solid yellow;
      border-bottom: 10px solid blue;
      border-radius: 100px;
      position: absolute;
      left: 0;
      top: 0;
    } 
   #Head_total_img2_div{ 
      position: absolute; 
      visibility: hidden;
      border: 1px solid; 
      border-color: #FFE4B5;
      background-color: #FFE4B5;
      width:180px;
      height:200px;
      border-radius:5px 5px 5px 5px;
      text-align: center; 
      padding:10px; 
      font-size: 11px;
   } 
    #Head_total_img2_div img{
      text-align: center;
      margin:10px;
      width: 130px;
      height: 130px;
    }
</style>
</head>
<body>
   <div class="Head_total"> 
       <div class="Head_total_img"> 
          <span class="Head_total_img1"><img src="img/857e24d682e37e1643fb09b3d17c4af26c4caec0.png"></span>
          <span class="Head_total_img2"><img src="img/微信.png"></span>
          <span class="Head_total_rigth">
            <span class="Head_total_rigth_lease">上线我的住宿</span>
            <span class="Head_total_rigth_register">注册</span>
            <span class="Head_total_rigth_login">登录</span> 
          </span> 
            <div id="Head_total_img2_div"><p id="Head_total_img2_div_follow">关注BooKing.com官方微信号</p><img src="img/二维码.PNG"><p id="Head_total_img2_div_follow2">全省特价酒店应有尽有</p></div>
       </div>
       <div class="Head_total_stay"><span class="Head_total_stay_span">住宿</span></div>
    </div>
    <%@ include file = "BK_ReturnTop.jsp" %> 
</body>
</html>