package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Placement;


@WebServlet("/PlaceServlet")
public class PlaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
  Placement p=new Placement();
  BLManager bl=new BLManager();
    public PlaceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.print("<script type=\"text/javascript\">");
		String name=request.getParameter("fname");
		String company=request.getParameter("cname");
		String pkg=request.getParameter("package");
		String profile=request.getParameter("profile");
		
		p.setName(name);
		p.setCompany(company);
		p.setProfile(profile);
		p.setPackage_(pkg);
		
		bl.savePlacement(p);

		out.print("alert('Data Save successfully');");
	out.print("location='place.jsp';");
	out.print("</script>");
	
	   
	}

}
