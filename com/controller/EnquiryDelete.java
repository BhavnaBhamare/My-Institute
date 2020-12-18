package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Admission;
import com.pojo.Enquiry;

/**
 * Servlet implementation class EnquiryDelete
 */
@WebServlet("/EnquiryDelete")
public class EnquiryDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	BLManager bl=new BLManager();
	 Enquiry eq=new Enquiry();
	 Admission adm=new Admission();
    public EnquiryDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
	
		String eid=request.getParameter("enqid");
		int admid1=Integer.parseInt(eid);
		eq=bl.searchByEnqId(admid1);
	     String fname=eq.getFname();
	     
	     String lname=eq.getLname();
	     System.out.println(fname+" "+lname);
		adm=bl.searchByName(fname, lname);

		response.setContentType("text/html; charset=UTF-8");
	
	
		if(adm!=null)
		{
			   out.println("<meta http-equiv='refresh' content='2;URL=enquiry.jsp'>");//redirects after 3 seconds
			   out.println("<center><br/><br/><br/><h1 style='color:green; align:middle;'>This entry having admission, You can't delete this entry!</h1></center>");
		}
		else
		{
		    
		   bl.deleteEnquiry(eq);
		   
	    	    out.print("<script type=\"text/javascript\">");
	            out.print("alert('Enquiry Deleted Successfully');");
	      		out.print("location='enquiry.jsp';");
	      		out.print("</script>");
	              
	      // response.sendRedirect("");
	
		}
	

	}

	

}
