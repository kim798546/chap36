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
<title>create.jsp</title>
</head>
<body>
<h1>Country Create(국가 추가)</h1>
<hr>
<a href="/">Home</a>
<hr>
<a href="/country/list">/country/list</a>
<hr>
<section class="container">
	<form action="/country/create" method="post">
		<div class="mb-3">
			<label class="form-lable mb-2" for="code">code<span>*</span></label>
			<input class="form-control"    id="code" name="code" placeholder="국가 코드를 입력하세요." value="${country.code}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="name">name<span>*</span></label>
			<input class="form-control"    id="name"  name="name"  placeholder="국가 이름을 입력하세요." value="${country.name}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="continent">continent</label>
			<input class="form-control"    id="continent"    name="continent"    placeholder="대륙 이름을 입력하세요." value="${country.continent}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="region">region</label>
			<input class="form-control"    id="region"    name="region"    placeholder="지역 이름을 입력하세요." value="${country.region}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="surfaceArea">surfaceArea</label>
			<input class="form-control"    id="surfaceArea"    name="surfaceArea"    placeholder="표면적을 입력하세요." value="${country.surfaceArea}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="indepYear">indepYear</label>
			<input class="form-control"    id="indepYear"    name="indepYear"    placeholder="indepYear을 입력하세요." value="${country.indepYear}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="population">population</label>
			<input class="form-control"    id="population"    name="population"    placeholder="인구 수를 입력하세요." value="${country.population}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="lifeExpectancy">lifeExpectancy</label>
			<input class="form-control"    id="lifeExpectancy"    name="lifeExpectancy"    placeholder="수명을 입력하세요." value="${country.lifeExpectancy}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="gnp">gnp</label>
			<input class="form-control"    id="gnp"    name="gnp"    placeholder="GNP를 입력하세요." value="${country.gnp}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="gnpOld">gnpOld</label>
			<input class="form-control"    id="gnpOld"    name="gnpOld"    placeholder="GNP old를 입력하세요." value="${country.gnpOld}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="localName">localName</label>
			<input class="form-control"    id="localName"    name="localName"    placeholder="localName을 입력하세요." value="${country.localName}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="governmentForm">governmentForm</label>
			<input class="form-control"    id="governmentForm"    name="governmentForm"    placeholder="governmentForm을 입력하세요." value="${country.governmentForm}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="headOfState">headOfState</label>
			<input class="form-control"    id="headOfState"    name="headOfState"    placeholder="headOfState를 입력하세요." value="${country.headOfState}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="capital">capital</label>
			<input class="form-control"    id="capital"    name="capital"    placeholder="수도를 입력하세요." value="${country.capital}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="code2">code2</label>
			<input class="form-control"    id="code2"    name="code2"    placeholder="code2를 입력하세요." value="${country.code2}"/>
		</div>
		<button class="btn btn-primary" type="submit">Submit</button>
	</form>
</section>
<c:if test="${binding.hasErrors()}">
	<h2>Error Message</h2>
</c:if>
<c:forEach var="g" items="${binding.globalErrors}">
	<div>${g.code}</div>
	<div>${g.defaultMessage}</div>
</c:forEach>
<c:forEach var="f" items="${binding.fieldErrors}">
	<div>${f.field}</div>
	<div>${f.defaultMessage}</div>	
</c:forEach>

</body>
</html>