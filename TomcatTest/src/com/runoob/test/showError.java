package com.runoob.test;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.util.*;

@WebServlet("/showError")
// 扩展HttpServlet类
/**
 * showError
 */
public class showError extends HttpServlet {

    public showError () {
        super();
    }
    
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) 
                      throws ServletException, IOException {
        // 设置错误代码和原因
        response.sendError(407, "Need authentication!!!");
    }

    public void doPost(HttpServletRequest request,
                       HttpServletResponse response) 
                       throws ServletException, IOException {
        doGet(request, response);
    }
}