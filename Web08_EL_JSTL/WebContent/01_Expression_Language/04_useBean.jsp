<%@page import="edu.web.el01.Point"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL useBean</title>
</head>
<body>
	<h1>EL useBean 활용</h1>
	<jsp:useBean id="point1" class="edu.web.el01.Point" scope="page"/>
	<jsp:setProperty property="x" name="point1" value="0.0"/>
	<jsp:setProperty property="y" name="point1" value="0.0"/>
	<p>point1의 x, y 좌표값 : ${point1.x }, ${point1.y }</p>
	<p>point1의 x, y 좌표값 : ${pageScope.point1.x }, ${pageScope.point1.y }</p>
	
	<jsp:useBean id="point2" class="edu.web.el01.Point" scope="request"/>
	<jsp:setProperty property="x" name="point2" value="1.1"/>
	<jsp:setProperty property="y" name="point2" value="2.2"/>
	<p>point2의 x, y 좌표값 : ${point2.x }, ${point2.y }</p>
	<p>point2의 x, y 좌표값 : ${requestScope.point2.x }, ${requestScope.point2.y }</p>
	
	<jsp:useBean id="point3" class="edu.web.el01.Point" scope="session"/>
	<jsp:setProperty property="x" name="point3" value="1.1"/>
	<jsp:setProperty property="y" name="point3" value="2.2"/>
	<p>point3의 x, y 좌표값 : ${point3.x }, ${point3.y }</p>
	<p>point3의 x, y 좌표값 : ${sessionScope.point3.x }, ${sessionScope.point3.y }</p>
	
	<%-- el 메소드 표기법 --%>
	<%
	 Point point = new Point(1.1, 2.2);
	%>
	<%= point.getX() %>
	
	<p>point1과 point2의 거리 :  ${point1.distance(point2.x, point2.y) }</p>
	<p>point1의 좌표 : ${point1.toString() }</p>
	
</body>
</html>