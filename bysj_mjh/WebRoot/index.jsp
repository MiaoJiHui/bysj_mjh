<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- <link rel = "Shortcut Icon" href=static/img/qian.ico> -->
<base href="<%=basePath%>">

<title>欢迎登陆企业进销存系统</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="static/jquery-1.7.2.js"></script>
<style type="text/css">
body {
	background: url('static/img/motianlun.jpg');
}

div.login {
	margin: 180px;
	width: 380px;
	height: 250px;
	background-color: rgba(255, 255, 255, 0.5);
	
}

.middle .input1 {
	width: 320px;
	height: 32px;
	line-height: 32px;
	margin-bottom: 20px;
	background-image: url('static/img/bgs.gif');
	background-repeat: no-repeat;
	padding-left: 28px;
	border: 1px solid #ccc;
}

div.bottom {
	width: 350px;
	height: 80px;
}

.submit-div {
	width: 80px;
	height: 30px;
	line-height: 30px;
	background-color: #3385FF;
	color: white;
	cursor: pointer;
	margin-top: -5px;
	margin-left: 45px;
}

h2 {
	font-size: 20px;
	padding-top: 15px;
	background-position: 0px 4px;
	line-height: 32px;
	text-align: left;
	text-indent: 5em;
	margin-bottom: 30px;
}

.input1:focus { /* border: 2px solid green; */
	/* 	border-color:#099544; */
	border: 1px solid #099544;
	outline: 0;
	box-shadow: 0 0 3px 1px #099544;
	transition: 0.5s;
}

span.tishi {
	display: none;
	font-size: 12px;
	color: black;
	padding-left: 30px;
	margin-top: 15px;
	color: #171614;
}
</style>
<script type="text/javascript">
    function denglu(){
        $("#userForm").submit();
    }
</script>
</head>

<body>
	<center>
	    <h3 style="color:rgba(255,255,255,0.5);text-aligh:center;">Going against the wind is more suitable for flying </h3>
		<div class="login">
			<form action="index/login_index" id="userForm" method="post"
				onsubmit="return check()">
				<h2>企业进销存系统登录</h2>
				<div class="middle">
					<input type="text" name="username" id="username"
						value="${username}" class="input1"
						style="background-position:6px -109px;z-index:10;" />
				</div>
				<div class="middle" style="margin-bottom:15px;">
					<input type="password" name="password" id="password"
						value="${password }" class="input1"
						style="background-position:5px -168px;z-index:10;" />
				</div>
				<div style="float:left;">
					<div style="float:left;margin-left:30px;">
						<div
							style="float:left;width:50px;height:22px;line-height:22px;background-color:#099544;">
							<span style="font-weight:bold;font-size:12px;color:white;">验证码</span>
						</div>
						<div style="float:left;margin-right:3px;">
							<input type="text" name="validateCode" id="code"
								style="width:70px;height:22px;" />
						</div>
						<img id="imgObj" alt="点击更换" src="" onclick="changeCode()"
							title="点击更换" />
						<!--    <a href="#" onclick="changeImg()">换一张</a>  -->
					</div>
					<div class="submit-div" id="denglu"
						style="float:left;text-align:center;" onclick="denglu()">登录</div>
					<br> <span id="nameerr" class="tishi"></span> <span
						id="pwderr" class="tishi"></span> <span id="codeerr"
						class="tishi"></span>
				</div>
			</form>
		</div>
	</center>
	<script type="text/javascript">
	    var errorInfo = "${errorInfo}";
 /*  	    与controller交互 */
		$(document).ready(function(){
		        changeCode();
		        $("#imgObj").bind("click",changeCode);
		        if(errorInfo!=""){

		           if(errorInfo.indexOf("验证码")>=1){
		               $("#nameerr").css("display","none");
		               $("#pwderr").css("display","none");
		               $("#codeerr").css("display","block");

		               $("#codeerr").html(errorInfo);
		               $("#code").focus();
		           }else{
		               $("#nameerr").css("display","block");
		               $("#pwderr").css("display","none");
		               $("#coderr").css("display","none");
		               $("#nameerr").html(errorInfo);
		               $("#codeerr").focus();
		           }
		        }
		    
		});
		function resetErr(){
		     $("nameerr").css("display","none");
		     $("nameerr").html("");
		     $("pwderr").css("display","none");
		     $("pwderr").html("");
		     $("codeerr").css("display","none");
		     $("codeerr").html("");
		     
		}
		function check(){
		    resetErr();
		    if($("#username").val()==""){
		      $("#nameerr").css("display","block");
		      $("#nameerr").html("用户名不得为空！");
		      $("#username").focus();
		      return false;
		    }else{
		      $("#username").val(jQuery.trim($('#username').val()));
		    }
		    if($("#password").val()==""){
		      $("#nameerr").css("display","none");
		      $("#pwderr").css("display","block");
		      $("#pwderr").html("密码不得为空！");
		      $("#password").focus();
		      return false;
		    }
		    if($("#code").val()==""){
		      $("#codeerr").css("display","block");
		      $("#pwderr").css("display","none");
		      $("#codeerr").html("验证码不得为空！");
		      $("#code").focus();
		      return false;
		    }
		    return true;
		}
		function genTimeStamp(){
		   var time = new Date();
		   return time.getTime();
		}
		function changeCode(){
		   $("#imgObj").attr("src","xuan/verifyCode?code="+genTimeStamp());
		}
		//jquery 键盘事件
		// 当页面执行 onkeydown 事件（键盘点击事件）的时候，执行方法 function(e){}
        $(document).keydown(function(e){
        if(!e) var e = window.event;  
        if(e.keyCode==13){
            $("#userForm").submit();
        }
       });
	</script>
</body>
</html>
