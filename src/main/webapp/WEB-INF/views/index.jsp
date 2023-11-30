<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello world!</h1>
<p>The time on the server is ${serverTime}.</p>
<p><a href="list">게시판으로 이동</a></p>
</body>
</html>
