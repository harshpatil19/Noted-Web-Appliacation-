<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %> 
</head>
<body>
<div class="container-fluid p-0 m-0"> 
<%@include file="Navbar.jsp" %> 
<%
int noteId=Integer.parseInt(request.getParameter("note_id").trim());
Session s= FactoryProvider.getFactory().openSession();
Note note=(Note)s.get(Note.class, noteId);

%>
<form action= "UpdateServlet"  method="post">
<input value="<%= note.getId() %>" name="noteId" type="hidden"/>
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input  name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp"  placeholder="Enter Here"  value=" <%= note.getTitle() %>"  >
  <!-- value= note.gettitle when you click on any update and then that certain form page will open so this will show the content that it is holding already so that we can cancel it and rewrite it again -->
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Note Content</label>
<textarea  name="content" id="Content" placeholder="Enter your content here" class="form-control" style="height:300px;"> <%= note.getContent()%>  </textarea>
  </div>
<div class="container text-center">
  <button type="submit" class="btn btn-success">Save</button>
</div>
</form>
</body>
</html>