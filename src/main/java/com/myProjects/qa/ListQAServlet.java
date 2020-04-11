package com.myProjects.qa;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/list-qa.do")
public class ListQAServlet extends HttpServlet {
    
    private QAService qaService = new QAService();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.setAttribute("questions", qaService.getQuestions());
        request.getRequestDispatcher("/WEB-INF/views/list-qa.jsp").forward(request, response);
    }

}
