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
<title>success.jsp</title>
</head>
<body>
<h1>Success Page(성공)</h1>
<hr>
<a href="/">Home</a>
<hr>
<a class="btn btn-success" href="/user/login">로그인 페이지로 이동</a>
<c:choose>
	<c:when test="${param.create ne null}"><h1>회원 가입에 성공했습니다.</h1></c:when>
	<c:when test="${param.update ne null}"><h1>회원 정보 수정이 완료되었습니다.</h1></c:when>
	<c:when test="${param.delete ne null}"><h1>계정 삭제가 완료되었습니다.</h1></c:when>
	<c:otherwise></c:otherwise>
</c:choose>
</body>
</html>