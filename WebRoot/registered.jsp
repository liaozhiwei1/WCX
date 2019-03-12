<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>注册</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/css/signin.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">

  </head>

  <body>
	<div class="jumbotron">
    <div class="container">
        <form class="form-signin" action="registered" method="post">
        <h1 class="form-signin-heading" >注册</h1>
        <div class="alert alert-warning alert-dismissible" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <strong><span class="glyphicon glyphicon-info-sign"></span>注意!</strong> 本系统暂时只支持QQ邮箱注册
		</div>
        <label for="inputEmail" class="sr-only">邮箱</label>
        <input type="email" id="inputEmail" name="username"  class="form-control" placeholder="Email address" required autofocus>
        <button type="button" id="b1" class="btn btn-default" aria-label="Left Align" onclick="sendY()">
		  <span class="glyphicon glyphicon-envelope"  aria-hidden="true">发送验证码</span>
		</button>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <input type="text" class="form-control" placeholder="验证码" name="yzm" id="yzm" size="10%" required/>
        <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
        <a href="<c:url value="/login"/>">返回登陆</a>
      </form></br>
      <h5 style="color: red;margin-bottom: 10px;text-align: center;">${msg }</h5>
    </div>
    </div>
	<div class="modal fade bs-example-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
		  <div class="modal-dialog modal-sm"  role="document">
			  <div class="modal-content">
				  <div class="modal-body">
				      	<div class="alert alert-danger" role="alert">
				      	<span class="glyphicon glyphicon-remove-sign">
				      	</span>邮件地址有问题！！！！！   请查正</div>
			      </div>
		      	 <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			</div>
		  </div>
	</div>
	<script type="text/javascript" src="<c:url value="/js/jquery-3.3.1.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/bootstrap.js"/>"></script>
    <script>
    	  function sendY(){
    	  	var email=$("#inputEmail").val();
    		var re= new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");;
    	  	if(email==""||!re.test(email)){
    	  		$("#myModal").modal('show');
    	  	}else{
    	  		$.get("<c:url value='sendregistered'/>",{ email: email});
    	  		$("#b1").attr("disabled",true);
    	  		setTimeout(function() {
    	  			$("#b1").attr("disabled",false);
    	  		}, 10000)
    	  	};
    	  }
    </script>
  </body>
</html>
