<%@page import="person.PersonDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<PersonDTO> list = (List<PersonDTO>)application.getAttribute("list");

	if(list == null) {
		list = new ArrayList<>();
		application.setAttribute("personList", list);
	}
	request.setAttribute("list", list);
	request.getRequestDispatcher("list-show.jsp").forward(request, response);
%>
</body>
</html>