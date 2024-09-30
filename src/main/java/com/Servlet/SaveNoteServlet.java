package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		String title= request.getParameter("title");
		String content= request.getParameter("content");
		Note note= new Note(title,content,new Date()); //This will take input of title,content and it will give new Date() with  random id will be created automatically.
		//System.out.println(note.getId()+":"+note.getTitle());  this will give ID input on console
		Session s= FactoryProvider.getFactory().openSession();
		Transaction tx= s.beginTransaction();
		s.save(note);
		tx.commit();
		s.close();
		//this will save the data permanently inside Database
		response.setContentType("text/html ");
		PrintWriter out= response.getWriter();
		out.println("<h1 style='text-align:center;'>Note Added Successfully</h1>"); //If we wanted to print on console
		out.print("<h1 style='text-align:center'><a href='all_notes.jsp'>View all notes<a/></h1>");
		//to give the result output on web page (html format) instead of console
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}

	}

}
