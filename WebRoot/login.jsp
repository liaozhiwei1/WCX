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

    <title>登陆</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/css/signin.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">

  </head>

  <body>
	<div class="jumbotron">
	    <div class="container">
	        <form class="form-signin" action="login" method="post">
	        <h1 class="form-signin-heading" >登陆</h1>
	        <label for="inputEmail" class="sr-only">邮箱</label>
	        <input type="email" name="username" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
	        <label for="inputPassword" class="sr-only">密码</label>
	        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
	        <input type="text" class="form-control" placeholder="验证码" name="yzm" id="yzm" size="10%" required/><img border=0 id="img" src='<c:url value='/yzm'/>' style='cursor:pointer' alt="验证码"></img>
	        <button class="btn btn-lg btn-primary btn-block"type="submit">登陆</button>
	       <a href="<c:url value="/registered.jsp"/>">进入注册</a>
	      </form></br>
	      <h5 style="color: red;margin-bottom: 10px;text-align: center;">${msg }</h5>
	      <script type="text/javascript" src="<c:url value="/js/jquery-3.3.1.js"/>"></script>
	    </div>
    </div>
    <script>
    	  $("#img").click(function(){
   			$(this).prop("src","<c:url value='/yzm'/>?time="+new Date().getTime());	
   			});
    </script>
  </body>
</html>
