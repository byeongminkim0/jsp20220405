<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
<%
Car car1 = new Car();
Car car2 = new Car();
List<String> o1 = new ArrayList<>();
o1.add("cha");
o1.add("son");

car1.setOwners(o1);
car2.setOwners(o1);

pageContext.setAttribute("aCar", car1);
pageContext.setAttribute("bCar", car2);
%>

<p>${aCar.owners[1] }</p> <%-- son --%>
<p>${bCar.owners[0] }</p> <%-- cha --%>

</body>
</html>