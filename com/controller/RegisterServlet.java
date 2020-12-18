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


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   BLManager bl=new BLManager();
   Register r=new Register();
   
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		out.print("<script type=\"text/javascript\">");
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		
		String pass=request.getParameter("pass");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String uname=request.getParameter("user");
		
		r.setFname(fname);
		r.setLname(lname);
		
		r.setUsername(uname);
	    r.setPassword(pass);
	    r.setEmail(email);
	    r.setContact(contact);
		
		bl.saveRegister(r);
		
		
	
		out.print("alert('Register successfully');");
		out.print("location='index.html';");
		out.print("</script>");
	}

}
