<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <title>Edit Form</title>
</head>
<body>

<%--@elvariable id="u" type="com"--%>
<form:form modelAttribute="u" method="POST" action="../editok">
  <form:hidden path="seq"/>
  <table id="edit">
    <tr>
      <td>카테고리:</td>
      <td><form:input path="category"/></td>
    </tr>
    <tr>
      <td>제목:</td>
      <td><form:input path="title"/></td>
    </tr>
    <tr>
      <td>작성자:</td>
      <td><form:input path="writer"/></td>
    </tr>
    <tr>
      <td>내용:</td>
      <td><form:textarea path="content" cols="50" rows="5"/></td>
    </tr>
  </table>
  <input type="submit" value="수정하기"/>
  <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>
