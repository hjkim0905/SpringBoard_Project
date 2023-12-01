<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Add Post</title>
  <style>
  button:hover {cursor: pointer;}
  </style>
</head>
<body>

<form action="addok" method="post">
  <table id="edit">
    <tr>
      <td>카테고리:</td>
      <td><input type="text" name="category"/></td>
    </tr>
    <tr>
      <td>제목:</td>
      <td><input type="text" name="title"/></td>
    </tr>
    <tr>
      <td>작성자:</td>
      <td><input type="text" name="writer"/></td>
    </tr>
    <tr>
      <td>내용:</td>
      <td><textarea cols="50" rows="5" name="content"></textarea></td>
    </tr>
  </table>
  <button type="button" onclick="location.href='list'">목록으로</button>
  <button type="submit">제출</button>
</form>

</body>
</html>