package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BLManager;
import com.pojo.Admission;
import com.pojo.Fees;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   BLManager bl=new BLManager();
   Fees f=new Fees();
   Admission a1=new Admission();
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		
        f=bl.searchById(id);
		
		HttpSession s=request.getSession();
		s.setAttribute("list",f);
		
		response.sendRedirect("FeesUpdate.jsp");
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
      bl.updateFessRecord(f);
      
      out.print("alert('Data Updated successfully');");
      
      response.sendRedirect("ViewStudent.jsp");
	}

}
