package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.model.*;

import java.util.Date;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.activation.*;
import javax.mail.Message.RecipientType;
import com.model.BLManager;
import com.pojo.Message;


@WebServlet("/MsgServlet")
public class MsgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  Message m=new Message();
  BLManager bl=new BLManager();
 
    public MsgServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String msg=request.getParameter("msg");
		Date date=new Date();
		
		m.setName(name);
		m.setEmail(email);
		m.setMsg(msg);
		m.setMsgdate(date);
		
		bl.saveMessage(m);	
		 out.print("<script type=\"text/javascript\">");
		 out.print("alert('Send Message successfully');");
		 out.print("location='StudentIndex.jsp';");
		 out.println("</script>");
	}

}
