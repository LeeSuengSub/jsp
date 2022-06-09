<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><!-- 함수를 사용하려면 있어야 한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Study!</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
	<button type="button" onclick="doLogOut()">LogOut</button>

	<h1>${userId}님 환영합니다.</h1>
	<input id="userNo" type="hidden" value="${userNo}"/>
	<!-- 문제. 테이블에 데이터 넣기  -->
	<table>
		<thead>
			<tr>
			    <th>Company</th>
			    <th>Contact</th>
			    <th>Country</th>
	 		</tr>
		</thead>
	 	<tbody>
	 	<c:choose>
	 		<c:when test="${fn:length(data.list) > 0}"> <!-- 길이가 0이상이라면의 조건식${fn:length(data.list)}함수를 사용한다. -->
	 		<c:forEach items="${data.list}" var="map">
		 		<tr>
				    <td>${map.Company}</td>
				    <td>${map.Contact}</td>
				    <td>${map.Country}</td>
  				</tr>
			</c:forEach>
	 		</c:when>
	 		<c:otherwise>
	 			<td colspan="3" style="text-align:center">데이터가 없습니다.</td>
	 		</c:otherwise>
	 	</c:choose>
	 		
	 	</tbody>
	</table>
	<script type="text/javascript">
	function doLogOut(){
		location.href = "/logout";
	}
	</script>
</body>
</html>