<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table, th, td {
  border-style: ${param.boardStyle};
  border-color: ${param.boardColor};
  border-width : 1px;
  font-size : ${param.fontSize};
  color : ${param.fontColor}
}
</style>
<meta charset="UTF-8">
<title>${param.title }</title>
</head>
<body>
  <h2>${param.title }</h2>
  <table>
    <thead>
      <tr>
        <th>번호</th>
        <th>링크 주소</th>
        <th>비고</th>
      </tr>
    </thead>
    <tbody>
    <%--
     - JSP 태그(<% %>)외 EL 태그는 혼용해서 사용하기 어려움
     - JSP 태그와 HTML을 같이 사용하면 가독성이 떨어짐
     - EL 태그는 제어문이 없기 때문에 JSTL을 이용하여 반복문 사용
    --%>
	    <%-- <% String[] linkList = request.getParameterValues("link"); %>
	    <% for (int i = 0; i < linkList.length; i++) { %>
	      <tr>
	        <td><%=i + 1 %></td>
	        <td><a href="<%=linkList[i] %>"><%=linkList[i] %></a></td>
	        <td>-</td>
	      </tr>
	    <%} %> --%>
      
      	<%-- linkList 값이 null인 경우 05_input_board_style.jsp로 이동 --%>
      	<%-- JSTL을 사용하여 linkList의 값을 표로 출력	 --%>
      	<!-- 배열을 받아올 때는 값을 여러 개 저장할 수 있는 paramValues로 받아옴 -->
	  	<c:set var="linkList" value="${paramValues.link }"/>
	  	
	  	<!-- linkList가 null일 경우 -->
		<c:if test="${empty linkList }">
      		<c:redirect url="05_input_board_style.jsp"/>
      	</c:if>
      	
      	<!-- linkList가 값이 있다면 -->
      	<c:forEach var="list" items="${linkList }" varStatus="status">
      		<tr>
      			<td>${status.count }</td>
      			<td><a href="${list }">${list }</a></td>
      			<td>-</td>
      		</tr>
      	</c:forEach>
    </tbody>
  </table>
</body>
</html>