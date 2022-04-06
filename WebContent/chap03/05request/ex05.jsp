<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- num1, num2 파라미터의 값을 더해서 출력하는 코드 작성 -->
<!-- num1이나 num2 파라미터가 없다면 입력해달라는 메세지 출력 -->

<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
String greeting = "";
if((num1 == null)&&(num2 == null)) {
	greeting = "num1, num2 값을 입력해주세요.";
} else if(num1 == null){
	greeting = "num1 값을 입력해주세요.";
} else if(num2 == null){
	greeting = "num2 값을 입력해주세요.";
} else{
	greeting = num1 + " + " + num2 + " = " + Integer.toString(Integer.parseInt(num1) + Integer.parseInt(num2));
}
%>

<h1><%= greeting %></h1>

</body>
</html>