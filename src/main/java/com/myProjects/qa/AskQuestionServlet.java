package com.myProjects.qa;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/ask-question.do")
public class AskQuestionServlet extends HttpServlet {
    
    private QAService qaService = new QAService();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.getRequestDispatcher("/WEB-INF/views/ask-question.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String questionDetails = request.getParameter("questionDetails");
        String author = request.getParameter("author");
        
        qaService.addQuestion(questionDetails, author);
        response.sendRedirect("/list-qa.do");
    }
}
