

<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes: Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list)
				//for each loop will print all the result so that result should hava scriptlet tag  because we want to print in CARD format we took from bootstrap so the result in the loop will be in card format
				{
				%>

				<div class="card mt-3" ;">
					<img style="max-width:100px"src="img/note-book.png"  class="card-img-top m-4" alt="...">
					<div class="card-body">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text"><%=note.getContent() %></p> 
						<p><b class="text-primary"> <%= note.getAddedDate()%></b></p>
						<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?note_id=<%= note.getId() %> "class="btn btn-primary">Update</a>
		
					</div>
				</div>

				<%
				}
				s.close();
				%>
			</div>
		</div>
</body>
</html>