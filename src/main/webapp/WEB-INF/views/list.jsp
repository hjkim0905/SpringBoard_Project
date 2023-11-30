<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<table>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">글수정</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<button type="button" onclick="location.href='add'">새글쓰기</button>

<script>
    function delete_ok(id) {
        var confirmCheck = confirm("정말로 삭제하시겠습니까?");
        if(confirmCheck) {
            location.href='deleteok/' + id;
        }
    }
</script>
</body>

