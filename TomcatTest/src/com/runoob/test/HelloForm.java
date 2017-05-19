package com.runoob.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.soap.AddressingFeature.Responses;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

/**
 * Servlet implementation class HelloForm
 */
@WebServlet("/HelloForm")
public class HelloForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 为名字和姓氏创建 Cookie
		Cookie name = new Cookie("name", URLEncoder.encode(request.getParameter("name"), "UTF-8"));	  //中文转码
		Cookie url = new Cookie("url", request.getParameter("url"));

		// 设置Cookie过期日期
		name.setMaxAge(60 * 60 * 24);
		url.setMaxAge(60 * 60 * 24);
		
		// 在响应头中添加Cookie
		response.addCookie(name);
		response.addCookie(url);

		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		String title = "设置 Cookie 实例";
		
		// Chinese stuff
		String docType = "<!DOCTYPE html> \n";
		out.println(docType +
				"<html>\n" +
				"<head><meta charset=\"UTF-8\">\n" +
				"<title>" + title + "</title></head>\n" +
				"<body bgcolor=\"#f0f0f0\">\n" +
				"<h1 align=\"center\">" + title + "</h1>\n" +
				"<ul>\n" + 
				"  <li><b>站点名</b>:"
				+ request.getParameter("name") + "\n</li>" +
				"  <li><b>网址</b>:"
				+ request.getParameter("url") + "\n</li>" +
				"</ul>\n" +
				"</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
