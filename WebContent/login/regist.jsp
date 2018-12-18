<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
 	<link rel="stylesheet" href="regist.css">
 	<link rel="stylesheet" href="assets/css/jquery.dialogbox.css">
 	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
 	<script src="assets/js/jquery.dialogBox.js"></script>
</head>
<body>
<div id="loginDiv">
        <div id="form">
            <h1>REGESTER</h1>
            <p>用户姓名:<input id="userName" type="text" autofocus required pattern="^[a-zA-Z0-9]{1,10}$"><label id="name_trip"></label></p>

            <p>用户密码:<input id="password" type="password" required><label id="password_trip"></label></p>

            <p>确认密码:<input id="surePassword" type="password" required><label id="surePassword_trip"></label></p>

            <p>
                用户类型:
                <select name="type" id="uesrType">
                    <option value="0">请选择</option>
                    <option value="1">普通类型</option>
                    <option value="2">VIP类型</option>
                </select>
                <label id="type_trip"></label>
            </p>

            <div class="sexDiv">
                用户性别:
                <input class="userSex" name="sex" value="0" type="radio">男
                <input class="userSex" name="sex" value="1" type="radio">女
                <label id="sex_trip"></label>
            </div>

            <p>
                出生日期:
                <input id="date" type="date">
                <label id="date_trip"></label>
            </p>

            <p class="hobby">
                兴趣爱好:
                <input type="checkbox" name="hobby" value="阅读">阅读
                <input type="checkbox" name="hobby" value="音乐">音乐
                <input type="checkbox" name="hobby" value="运动">运动
                <label id="hobby_trip"></label>
            </p>

            <p>
                电子邮件:
                <input id="email" type="email" required>
                <label id="emil_trip"></label>
            </p>


            <p> 自我介绍:</p>
            <div class="introduce">
                <textarea name="introduce" cols="20" id="comment" required rows="10"></textarea>
                <label id="introduce_trip"></label>
            </div>

            <p style="text-align: center;">
                <input type="button" class="button" onclick="checkForm()" value="提交">
                <input type="reset" class="button" value="重置">
            </p>
        </div>
    </div>
    <div id="mask-dialogBox"></div>
</body>
<script>
    function trip(obj, trip) {
        document.getElementById(obj).innerHTML = "<b>" + trip + "</b>";
        
    }
    function checkSex() {
	       let $sex = $('input:radio[name="sex"]:checked').val();
	       if($sex == null)
	       	return false;
	       return $sex;
	   }
	
	   function checkHobby() {
	      let $hobbyArray = new Array();
	      $.each($('input:checkbox:checked'),function(i){
	   	   $hobbyArray[i] = $(this).val();
	      });
	      let $hobby = $hobbyArray.join(",");
	       if ($hobby == "") {
	           return false;
	       }else{
	       	return $hobby;
	       }
	   }
	
	   function checkType() {
	       var $userType = $("#uesrType").find("option:selected").val();
	       if ($userType == "0") {
	           return false;
	       }else{
	       	return $userType;
	       }
	   }
	
	   function checkName(){
	   	 //获取用户名输入项
	       let $userName = $("#userName").val();
	       if ($userName.length < 1 || $userName.length > 10) {
	           return false;
	       }else{
	       	return $userName;
	       }	 
	   }
	   
	   function checkPassword(){
	   	  //密码长度大于6 和确认必须一致 
	       let $password = $("#password").val();
	       let $surePassword = $("#surePassword").val();
	       if ($password.length > 10 || $password.length < 6  || $password != $surePassword){
	       	return false;
	       }else{
	       	return $password;
	       }
	   }
	   
	   function checkIntroduce(){ 
	       let $introduce = $("#comment").val();
	       if ($introduce.length < 1 || $introduce.length > 30) {
	           return false;
	       }else{
	       	return $introduce;
	       }	 
	   }
	   
	   function checkEmail(){
		    let $email = $("#email").val();
	        if (!(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/.test($email))) {
	            return false;
	        }
	        return $email;
	   }
	   
	   function checkDate(){
		   let $date = $('#date').val();
			if($date == null){
				return false;	
			}
		   return $date;
	   }
	   
	  
	   function checkForm() {
		   if(!checkName()){
			   trip("name_trip","用户名为1-10位的数字或字符");
		   		return false;
		   	}
		   if(!checkPassword()){
		   		trip("password_trip","密码需两次一致且6-10位！！");
		   		trip("surePassword","密码需两次一致且6-10位！！");
		   		return false;
		   	}
		   if(!checkType()){
		   		trip("type_trip","请选择用户类型！！");
		   		return false;
		   	}
			if(!checkSex()){
				trip("sex_trip","请选择性别！！");
		   		return false;
			}
			if(!checkDate()){
				trip("date_trip","请选择你的生日！！");
				return false
			}
			if(!checkHobby()){
				trip("hobby_trip","请选择爱好！！");
				alert(checkHobby());
				return false;
			}
			
			if(!checkEmail()){
				trip("emil_trip","请填写正确的email！！");
				return false
			}
			if(!checkIntroduce()){
				trip("introduce_trip","请完善你的描述！！");
				return false;
			}
			
			let $userName = checkName();
			let $password = checkPassword();
			let $type = checkType(); 
			let $sex = checkSex();
			let $hobby = checkHobby();
			let $introudce = checkIntroduce();
			let $email = checkEmail();
			let $date = checkDate();
			
			$.ajax({
				url:'${pageContext.request.contextPath}/AddUserSevlet',
				type:"POST",
				dataType:"json",
				data:{userName:$userName, password:$password, type:$type, sex:$sex, hobby:$hobby, introudce:$introudce, email:$email, date:$date},
				success:function(data){
					if(data == 1){
						   let $time = setInterval(jump,1000);
						   let $second = 1;
						   $('#mask-dialogBox').dialogBox({
								hasClose: true,
								hasMask: true,
								title: '提示信息',
								content: '恭喜您，注册成功！！'
							});
						   function jump(){
							   if($second == 0){
								   window.location="login.jsp";
							   	   clearInterval($time);
							   }
							   $second --;
						   }    
					}
				},
				error:function(data){
					$('#mask-dialogBox').dialogBox({
						hasClose: true,
						hasMask: true,
						title: '提示信息',
						content: '注册失败！！'
					});
					console.log("error"+data);
				}
			});
	   }
</script>
</html>