<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src=/webjars/bootstrap/js/bootstrap.min.js></script>
<script src=/webjars/jquery/jquery.min.js></script>
<title>login.jsp</title>

</head>
<body>
<h1>Login 로그인</h1>
<hr>
<a href="/">HOME</a>
<section class="container">
	<form action="/user/login" method="post">
		<input class="form-control" name="username" value="${param.username}"/>
		<hr>
		<input class="form-control" name="password" type="password" value="${param.password}"/>
		<hr>
		<input class="btn btn-primary" type="submit" value="로그인"/>	
		<input name="remember-me" type="checkbox" checked="checked"><span> 자동 로그인</span>
	</form>
	<div class="mt-2 mb-2 row">
		<a class="col-2 border text-secondary ms-3 text-decoration-none text-center" href="/user/create">회원가입</a>
		<a class="col-2 border text-secondary text-decoration-none text-center" href="/user/find/id">아이디 찾기</a>
		<a class="col-3 border text-secondary text-decoration-none text-center" href="/user/find/pw">비밀번호 찾기</a>
	</div>
	<c:if test="${exception ne null}">
		<span>*회원정보가 일치하지 않습니다.</span>
	</c:if>
</section>

</body>
</html>