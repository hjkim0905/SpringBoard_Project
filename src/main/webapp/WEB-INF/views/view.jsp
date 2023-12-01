<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<body>
<h2>${board.title}</h2>
<p>작성자: ${board.writer}</p>
<p>카테고리: ${board.category}</p>
<p>작성일: ${board.regdate}</p>
<p>내용: ${board.content}</p>
<button type="button" onclick="location.href='../list'">목록으로</button>
</body>