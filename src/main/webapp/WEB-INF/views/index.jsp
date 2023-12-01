<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>환영</title>
</head>
<body>
<h1>안녕하세요!</h1>
<p id="time">현재 서버 시간은: </p>
<p><a href="list">게시판으로 이동</a></p>

<script>
    function updateTime() {
        var now = new Date();
        var time = now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds();
        document.getElementById('time').innerHTML = "현재 서버 시간은: " + time;
    }
    setInterval(updateTime, 1000);
</script>
</body>
</html>
