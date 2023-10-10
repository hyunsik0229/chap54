<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alpha</title>
</head>
<body>
<h1>Alpha Form 실습</h1>
<hr>
<table>
	<c:forEach var="i" begin="0" end="10">
		<tbody>
			<tr>
			<c:forEach var="j" begin="0" end="39">
				${alphas[i][j]}<br>
			</c:forEach>
			</tr>
		</tbody>
	</c:forEach>
</table>
<table>
	<tbody>
	<c:forEach var="row" items="${alphas }">
		<tr>
			<c:forEach var="alpha" items="${row }">
				<td>${alpha.ch }</td>
			</c:forEach>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>