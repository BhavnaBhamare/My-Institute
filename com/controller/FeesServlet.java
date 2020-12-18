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
import com.pojo.Fees;


@WebServlet("/FeesServlet")
public class FeesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  Fees f=new Fees();
  BLManager bl=new BLManager();
	Admission a1=new Admission();
	
    public FeesServlet() {
        super();
      
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.print("<script type=\"text/javascript\">");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String tfees=request.getParameter("tfees");
		int tf=Integer.parseInt(tfees);
		String finst=request.getParameter("finst");
		int fin=Integer.parseInt(finst);
		String fdate=request.getParameter("fdate");
		String sinst=request.getParameter("sinst");
		int s=Integer.parseInt(sinst);
		String sdate=request.getParameter("sdate");
		String tinst=request.getParameter("tinst");
		int  t=Integer.parseInt(tinst);
		String tdate=request.getParameter("tdate");
		
		String balance=request.getParameter("balance");
		int b=Integer.parseInt(balance);
		
		a1=bl.searchByName(fname,lname);
	
		
	  f.setFname(fname);
	  f.setLname(lname);
	  f.setTotalfees(tf);
      f.setFinst(fin);
      f.setFdate(fdate);
      f.setSinst(s);
      f.setSdate(sdate);
      f.setTinst(t);
      f.setTdate(tdate);
      f.setRbalance(b);
      f.setAdmission(a1);
      bl.saveFees(f);
		
        out.print("alert('Data save successfully');");
		out.print("location='ViewStudent.jsp';");
		out.print("</script>");

	}

}
