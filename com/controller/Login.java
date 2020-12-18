package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Register;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String uname=request.getParameter("username");
		String pass=request.getParameter("password");
		
		
		PrintWriter pw=response.getWriter();
		if((uname.equals("admin")&& pass.equals("admin")))
			
		{
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Welcome To Admin Panel...');");
			out.println("location='AdminIndex.jsp';");
			out.println("</script>");
			
			
		}
		else if((uname.equals("instructor")&& pass.equals("instructor")))
			
		{
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Welcome To Instructor Panel...');");
			out.println("location='InstructorIndex.jsp';");
			out.println("</script>");
			
			
		}
		
		else
		{
			BLManager bl=new BLManager();
			Register r1=new Register();
			r1=bl.searchuserpass(uname, pass);
			if(r1!=null)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Welcome To Student Panel...');");
				out.println("location='StudentIndex.jsp';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Invalid Credentials, Please try again...');");
				out.println("location='index.html';");
				out.println("</script>");
				
			}
			
		}
	}

}
