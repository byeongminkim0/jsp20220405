<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String s = "singer";
List<String> list = new ArrayList();
list.add("jimin");
list.add("rm");
list.add("jhope");

request.setAttribute("job", s);
request.setAttribute("names", list);
%>

<jsp:forward page="ex06to.jsp" />