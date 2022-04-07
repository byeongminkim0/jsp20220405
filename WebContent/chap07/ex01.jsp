<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>

<%-- include directive --%>
<%-- file 속성으로 이 위치에 포함될 파일의 경로를 작성 --%>
<%@ include file="module/header01.jsp" %>

<!-- div>(h1>lorem1^p>lorem)*3 -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam explicabo doloremque quidem eos non voluptas ullam aut accusantium cupiditate itaque praesentium amet provident similique repellendus consequatur hic voluptates assumenda officiis.</p>
	<h1>Ullam!</h1>
	<p>Ullam voluptatem inventore quae reiciendis. Quisquam atque tempore sapiente eveniet expedita minima recusandae assumenda tenetur magnam eligendi voluptates fuga odio sequi sit veniam quibusdam nisi excepturi in quidem error repudiandae?</p>
	<h1>Ipsa.</h1>
	<p>Animi ullam eaque officiis totam qui magnam assumenda unde nobis omnis aperiam adipisci voluptates blanditiis aliquam. Maiores tenetur amet sint eius fuga et. Est alias eveniet deserunt sint earum voluptas!</p>
</div>

</body>
</html>