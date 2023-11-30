<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Add Post</title>
</head>
<body>

<form action="addok" method="post">
  <table id="edit">
    <tr>
      <td>Category:</td>
      <td><input type="text" name="category"/></td>
    </tr>
    <tr>
      <td>Title:</td>
      <td><input type="text" name="title"/></td>
    </tr>
    <tr>
      <td>Writer:</td>
      <td><input type="text" name="writer"/></td>
    </tr>
    <tr>
      <td>Content:</td>
      <td><textarea cols="50" rows="5" name="content"></textarea></td>
    </tr>
  </table>
  <button type="button" onclick="location.href='list'">List</button>
  <button type="submit">Submit</button>
</form>

</body>
</html>