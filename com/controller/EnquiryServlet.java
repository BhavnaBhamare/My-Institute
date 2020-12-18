package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Enquiry;

/**
 * Servlet implementation class EnquiryServlet
 */
@WebServlet("/EnquiryServlet")
public class EnquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   Enquiry enq=new Enquiry();
   
   BLManager bl=new BLManager();
    public EnquiryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		out.print("<script type=\"text/javascript\">");
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		
		String intern=request.getParameter("intern");
		String contact=request.getParameter("contact");
		String qualification=request.getParameter("qualification");
		String pyear=request.getParameter("pyear");
		int p=Integer.parseInt(pyear);
		String pic=request.getParameter("pic");
		
		enq.setFname(fname);
		enq.setLname(lname);
		enq.setEmail(email);
		enq.setInternship(intern);
	    enq.setContact(contact);
	    enq.setGraduation(qualification);
        enq.setYearofpass(p);
        enq.setPhoto(pic);
        
        bl.saveEnquiry(enq);
        out.print("alert('Data save successfully');");
		out.print("location='enquiry.html';");
		out.print("</script>");
        
        
        
		
		
		
		
		
	}

}
