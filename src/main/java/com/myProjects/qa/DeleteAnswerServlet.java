package com.myProjects.qa;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/delete-answer.do")
public class DeleteAnswerServlet extends HttpServlet {
    
    private QAService qaService = new QAService();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String questionId = request.getParameter("questionId");
        String answerId = request.getParameter("answerId");
        
        qaService.removeAnswer(questionId, answerId);
        response.sendRedirect("/list-qa.do");
    }
}
