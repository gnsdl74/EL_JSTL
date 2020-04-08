<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연산자</title>
</head>
<body>
	<%
	String nullStr = null;
	String emptyStr = "";
	String[] zeroArray = new String[0];
	ArrayList<String> emptyList = new ArrayList<>();
	
	pageContext.setAttribute("nulStr", nullStr);
	pageContext.setAttribute("emptyStr", emptyStr);
	pageContext.setAttribute("zeroArray", zeroArray);
	pageContext.setAttribute("emptyList", emptyList);
	%>
	
	<%--
	 EL 연산자
	 - 기본적인 연산자는 자바와 동일
	 - '/'와  div는 동일한 연산자
	--%>
	<h1>EL 연산자</h1>
	<h2>산술 연산자</h2>
	더하기 : ${ 20 + 10 } <br>
	빼기 : ${ '20' - '10' } <br>
	몫 : ${ '40' div '6' } <br>
	나머지 : ${ 40 mod 6 } <br>
	<hr>
	
	<h2>비교 연산자</h2>
	같은가? : ${'10' eq '10' }<br>
	다른가? : ${'10' ne '10' }<br>
	작은가? : ${'10' lt '10' }<br>
	큰가? : ${'10' gt '10' }<br>
	작거나 같은가? : ${'10' le '10' }<br>
	크거나 같은가? : ${'10' ge '10' }<br>
	
	<h2>논리 연산자</h2>
	논리곱 : ${true and false }<br>
	논리합 : ${true or false }<br>
	논리 부정 : ${not true }<br>
	
	<h2>empty 연산자</h2>
	<%--
		값이 null이거나, 빈 문자열, 길이가 0인 배열 또는 콜렉션인 경우 true를 반환
		나머지 경우 false를 반환 
	--%>
	null : ${empty nullStr }<br>
	빈 문자열 : ${empty emptyStr }<br>
	길이가 0인 배열 : ${empty zeroArray }<br>
	빈 ArrayList(collection) : ${empty emptyLsit }<br>
	나머지 경우 : ${empty "문자열" }<br>
	not null : ${not empty nullStr } <br>
</body>
</html>