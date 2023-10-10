<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">
header > div {
	margin: 10px;

	
	border: 20px solid red;
	border-width:20px;
	border-style:dotted;
	border-color:blue;
	
	border-top:10px solid red;
	border-top-width:20px;
	border-top-style: dotted;
	border-top-color: blue;
	
	border-bottom: 10px solid red;
	border-bottom-width:20px;
	border-bottom-style: dotted;
	border-bottom-color: blue;
	
	padding: 10px;

	width: 100px;
	height: 100px;
	background: uri('media/small.png');
}

</style>
<script type="text/javascript">
window.onload = function(){
	let divs = document.querySelectorAll("header > div");
	
	divs.forEach(function(div){
		div.onmousedown = function(e){
			let clientWidth = 0;
			let offsetWidth = 0;
			
			let style = getComputedStyle(div);
			clientWidth = style.paddingLeft + style.width + style.paddingRight;
			console.log(`clientWidth = \$(clientWidth)`);
			console.log();
			
			offsetWidth = parseInt(style.borderWidth) + clientWidth;
			console.log(offsetWidth);
			
			
			e.preventDefault();
			//return false; 디폴트가 기본으로 들어가서 그럼
		}
	});
}

</script>
<style type="text/css">
header ~ div {
	padding:0px;
	width: 100px;
	height: 100px;
	background: red;
}
</style>
</head>
<body>
<header>
<div>box1</div>
<div>box2</div>
<div>box3</div>
</header>
<hr>
<div>box4</div>
<h1></h1>
</body>
</html>