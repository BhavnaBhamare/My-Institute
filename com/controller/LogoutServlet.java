package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 response.setContentType("text/html");  
         PrintWriter out=response.getWriter();  
           
         request.getRequestDispatcher("index.html").include(request, response);  
           
         HttpSession session=request.getSession();  
         session.invalidate();  
         out.print("<script type=\"text/javascript\">");
         out.print("alert('You have successfully logout');");  
     	out.print("location='index.html';");
		 out.println("</script>");

         out.close();  
 
		
		
	}

	

}
