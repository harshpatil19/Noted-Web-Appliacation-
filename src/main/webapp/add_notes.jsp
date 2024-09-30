<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %> 
</head>
<body>
<div class="container-fluid p-0 m-0"> 
<%@include file="Navbar.jsp" %> 
<!-- This is add form  taken from bootstrap which takes email and password as input-->
<form action= "SaveNoteServlet"  method="post">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input  name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp"  placeholder="Enter Here" >
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Note Content</label>
<textarea  name="content" id="Content" placeholder="Enter your content here" class="form-control" style="height:300px"></textarea>
  </div>
<div class="container text-center">
  <button type="submit" class="btn btn-primary">Add </button>
</div>
</form>
</body>
</html>