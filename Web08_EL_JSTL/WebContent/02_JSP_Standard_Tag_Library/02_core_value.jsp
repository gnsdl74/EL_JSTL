<%@page import="edu.web.jstl01.ContactVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core</title>
</head>
<body>
	<%--
	 * <c:set> 태그
	  - EL 변수 생성에 사용
	  - 객체의 프로퍼티 값 설정
	  - <c:set var="변수명" value="값" [scope="영역"] />
	  - 속성의 의미
	    var : 값을 지정할 EL 변수의 이름
	    value : 변수에 들어갈 값. 표현식, EL, 정적텍스트(문자열)을 사용하여 값을 지정할 수 있음
	    scope : 변수를 지정할 영역을 정의. 생략 가능. (page, request, session, application. 기본값 : page)	
	--%>
	
	<%
	 ContactVO vo = new ContactVO("test", "010-3333-7777", "test@test.com");
	%>
	<h2>JSTL Core 연습1</h2>
	<c:set var="name1" value="아이언맨"/>
	<p>name1의 값 : ${name1 }</p>
	
	<c:set var="name2" value="<%=vo.getName() %>"/>
	<p>name2의 값 : ${name2 }</p>
	
	<c:set var="name3" value="${name2 }"/>
	<p>name3의 값 : ${name3 }</p>
	
	<%--
	 * <C:remove> 태그
	  - set 태그로 지정한 변수를 삭제할 때 사용
      - scope 영역을 지정하지 않으면 동일한 이름의 변수를 모두 삭제 
	--%>
	<c:remove var="name1"/>
    <p>name1의 값 : ${name1 }</p>
</body>
</html>