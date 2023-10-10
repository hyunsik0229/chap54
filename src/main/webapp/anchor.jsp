<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>anchor.jsp</title>
<style type="text/css">
a:link {
	color: red;
}
a:visited {
	color: black;
	text-decoration: none;
}
p::first-letter, li::first-letter {
	font-size: 2em;
	color: blue;
}
p::first-line {
	text-decoration: overline;
	font-size: 1.5em;
}
p::selection{
	color: red;
	text-decoration: line-through;
}
li::before {
	content: "^";
}
li::after {
	content: "#";
}
</style>
</head>
<body">
<h1>a href 실습</h1>
<hr>
<a href="http://www.soen.kr">www.soen.kr</a>
<a href="http://www.nate.kr">www.nate.kr</a>
<a href="http://www.naver.kr">www.naver.kr</a>
<a href="http://www.google.kr">www.google.kr</a>
</body>
</html>