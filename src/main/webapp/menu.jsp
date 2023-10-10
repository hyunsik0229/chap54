<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
<style type="text/css">

</style>
<script type="text/javascript">
</script>
<style type="text/css">
ul{
	list-style: none;
}

li > a{
	text-decoration: inherit;
}

li{
	border:1px solid red;
	padding: 10px;
	width: 100px;
	
	float: left;
	text-align: center;
}
/*
li:first-child{
	border-radius: 10px 50px 0px 0px;
}

li:last-child{
	border-radius: 0px 00px 50px 10px;
}
*/
li:nth-child(2n) {
	background: #D000000;	
}

li:nth-child(2n+1) {
	background: #00FF00;	
}
</style>
</head>
<body>
<a href="/alpha/generator">alpha</a>
<ul>
	<li><a href="/alpha/generator">alpha</a></li>
	<li><a href="/alpha/rect">rect</a></li>
	<li><a href="/dept/list">dept</a></li>
	<li><a href="/emp/list">emp</a></li>
	<li><a href="/salgrade/list">salgrade</a></li>
	<li><a href="/city/list">city</a></li>
	<li><a href="/country/list">country</a></li>
	<li><a href="/language/list">language</a></li>	
</ul>
<hr>
<div style="width: 100px; height: 100px; border: 1px solid red;">box1</div>
<div style="width: 100pt; height: 100pt; border: 1px solid red;">box2</div>
<div style="width: 100%; height: 100%; border: 1px solid red;">box3</div>
<div style="width: 1em; height: 1em; border: 1px solid red; font-size: 100px">box4</div>

</body>
</html>