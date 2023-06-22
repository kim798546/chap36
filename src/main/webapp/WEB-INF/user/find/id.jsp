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
<link rel="icon" href="favicon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src=/webjars/bootstrap/js/bootstrap.min.js></script>
<script src=/webjars/jquery/jquery.min.js></script>
<title>id.jsp</title>
</head>
<body>
<h1>아이디 찾기</h1>
<hr>
<form action="/user/find/id" method="post" class="container">
	<input type="text" name="name" class="form-control" placeholder="이름을 입력해주세요.">
	<input type="text" name="phoneNumber" class="form-control" placeholder="휴대전화 번호를 입력해주세요.">
	<div>*예시:000-0000-0000</div>
	<input type="submit" class="btn btn-success" value="아이디 찾기">
</form>
<hr>
<c:if test="${binding.hasErrors()}">
	<h2>*알림</h2>
</c:if>
<c:forEach var="g" items="${binding.globalErrors}">
	<div>${g.defaultMessage}</div>
</c:forEach>
<c:forEach var="f" items="${binding.fieldErrors}">
	<div>${f.defaultMessage}</div>	
</c:forEach>
</body>
</html>