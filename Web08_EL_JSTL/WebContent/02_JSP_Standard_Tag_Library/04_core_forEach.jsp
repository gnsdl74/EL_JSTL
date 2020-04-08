<%@ page import="edu.web.jstl01.ContactVO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL forEach</title>
</head>
<body>
	<h1>JSTL forEach</h1>
	<%--
	 * <c:forEach> 태그
	  - 자바의 for문, for-each문의 형태
	  - 배열, 컬렉션, Map 등에 저장되어 있는 값을 순차적으로 처리
	  - 기본 형태
	  	<c:forEach var="변수" items="아이템" begin="시작값" end="끝값" step="증가값">
	  		${변수}
	  	</c:forEach>
	  - items : array, collection, Map 등을 저장
	  - begin : 초기값
	  - end : 끝값
	  - step : 증가값
	  - 주의) Iterator, Enumeration, Map의 경우 삽입한 순서와 읽어오는 순서가 일치하지 않을 수 있기 때문에
	  	begin, end, step 속성을 잘 사용하지 않음
	--%>
	<h2>1부터 100까지의 홀수의 합</h2>
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum + i }"></c:set>
	</c:forEach>
	<p>합 : ${sum }</p>

	<hr>
	<h2>구구단</h2>
	<c:forEach var="i" begin="2" end="9" step="1">
		<p>${i }단</p>
		<c:forEach var="j" begin="1" end="9" step="1">
			${i } X ${j } = ${i*j }<br>
		</c:forEach>
		<hr>
	</c:forEach>

	<%
		String[] sports = { "스쿼시", "농구", "등산" };
	
		ArrayList<ContactVO> list = new ArrayList<>();
		ContactVO vo = null;

		for (int i = 0; i < 5; i++) {
			String name = "학생 " + (i + 1);
			String phone = "010-1111-000" + (i + 1);
			String email = "test" + (i + 1) + "@test.com";
			vo = new ContactVO(name, phone, email);
			list.add(vo);
		}
	%>

	<h2>배열 2번째값부터 2개만 출력</h2>
	<c:forEach var="sports" items="<%=sports%>" begin="1" end="2" varStatus="status">
		현재 인덱스 값 : ${status.index} <br>
		문자열 값 : ${sports }<br>
		루프 실행 횟수 : ${status.count }<br>
		begin 값 : ${status.begin }<br>
		end 값 : ${status.end }<br>
		step 값 : ${status.step }<br>
		<c:if test="${status.index == 1 }">
			status 인덱스가 1입니다.<hr>
		</c:if>
	</c:forEach>

	<c:set var="contactList" value="<%=list%>" />
	<c:forEach var="vo" items="${contactList }">
		<p>이름 : ${vo.name }</p>
		<p>연락처 : ${vo.phone }</p>
		<p>이메일 : ${vo.email }</p>
	</c:forEach>
	
	<%
		for(ContactVO vo2 : list) {
			vo2.getName();
		}
	%>
</body>
</html>