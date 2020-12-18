package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Admission;


@WebServlet("/AdmServlet")
public class AdmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    BLManager bl=new BLManager();
    Admission ad=new Admission();
    public AdmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
	
		
		
		String aid=request.getParameter("id");
		int id=Integer.parseInt(aid);
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String intern=request.getParameter("intern");
		
		String batchtime=request.getParameter("batchtime");

		String bcode=request.getParameter("bcode");

		String tfees=request.getParameter("tfees");
        int total=Integer.parseInt(tfees);
		
		String finst=request.getParameter("finst");
		int fin=Integer.parseInt(finst);
		String admdate=request.getParameter("admdate").toString();
        
		
		String photo=request.getParameter("pic");
		
		ad.setAddid(id);
		ad.setFname(fname);
		ad.setLname(lname);
		ad.setEmail(email);
		ad.setContact(contact);
		ad.setInternship(intern);
        ad.setBatchtime(batchtime);
        ad.setBatchcode(bcode);
        ad.setTotalfees(total);
        ad.setFinst(fin);
      
        ad.setPhoto(photo);
   
       ad.setAdmdate(admdate);
        
       bl.saveAdmission(ad);
        
    	out.print("<script type=\"text/javascript\">");
           out.print("alert('Data save successfully');");
      		out.print("location='AdmDetails.jsp';");
      		out.print("</script>");
              
	}

}
