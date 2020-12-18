package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Grade;


@WebServlet("/SaveGrade")
public class SaveGrade extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  BLManager bl=new BLManager();
  Grade g=new Grade();
    public SaveGrade() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.print("<script type=\"text/javascript\">");
		 String fname=request.getParameter("name");
		String course=request.getParameter("course");
		
		 String tmarks=request.getParameter("tm");
		 int tm=Integer.parseInt(tmarks);
		 
		 String omarks=request.getParameter("om");
		 int om=Integer.parseInt(omarks);
		 String status=request.getParameter("status");
	   
		g.setName(fname);
        g.setCourse(course);
		g.setTmarks(tm);
        g.setOmarks(om);
	    g.setStatus(status);
		
		bl.saveAllGrades(g);
		 out.print("alert('Data save successfully');");
			out.print("location='ExamDetails.jsp';");
			out.print("</script>");
		
		
	}

	
}
