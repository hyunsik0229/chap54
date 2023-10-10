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
<form action="/alpha2">
	<fieldset>
		<legend>Position</legend>
		<label>line</label>
		<input name="line" type="number" value="${empty param.line ? 10 : param.line}" min="1" max="20">
		<label>column</label>
		<input name="column" type="number" value="${empty param.column ? 20 : param.column}" min="1" max="40">
	</fieldset>
	<fieldset>
		<legend>Character</legend>
		<c:forEach var="ch" items="${chs}" >
			<lable>${ch}</lable>
			<c:choose>
				<c:when test="${empty param.ch and ch=='A' }">
					<input type="radio" value="${ch}" checked="checked">
				</c:when>
				<c:when test="${!empty param.ch and param.ch==ch }">
					<input type="radio" value="${ch}" checked="checked">
				</c:when>
				<c:otherwise>
					<input type="radio" value="${ch}">
				</c:otherwise>
			</c:choose>
			<input type="radio" value="${ch}">
		</c:forEach>
	</fieldset>
	<fieldset>
		<legend>Color</legend>
		<lable>fg</lable>
		<select>
			<c:forEach var="color" items="${colors}">
			<option value="${color}">${color}</option>
			</c:forEach>
		</select>
		<lable>bg</lable>
		<select>
			<c:forEach var="color" items="${colors}">
			<option value="${color}">${color}</option>
			</c:forEach>
		</select>
	</fieldset>
	<fieldset>
		<input type="reset">
		<input type="submit">
		<input type="image" src="http://via.placeholder.com/50x50">
	</fieldset>
	<fieldset>
		<legend>Other</legend>
		<label for="java">java</label>
		<input id="java" type="checkbox" name="lang" value="java">
		<label for="python">python</label>
		<input id="python" type="checkbox" name="lang" value="python">
		<label for="cpp">c/c++</label>
		<input id=""cpp"" type="checkbox" name="lang" value=""cpp"">
	</fieldset>
	<fieldset>
		<legend>Other</legend>
		<input type="date" name="birthday">
		<input type="time" name="starday">
		<input type="color" name="rgb">
	</fieldset>	
	<fieldset>
		<legend>commet</legend>
		<textarea rows="10" cols="20"></textarea>
	</fieldset>
</form>
<hr>
<table>
	<tbody>
	<c:forEach var="row" items="${alphas }">
		<tr>
			<c:forEach var="alpha" items="${row }">
				<td style="color:${alpha.fg} ; background: ${alpha.bg };">${alpha.ch }</td>
			</c:forEach>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>