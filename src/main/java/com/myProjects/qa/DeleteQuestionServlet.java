package com.myProjects.qa;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/delete-question.do")
public class DeleteQuestionServlet extends HttpServlet {
    
    private QAService qaService = new QAService();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        qaService.removeQuestion(request.getParameter("questionId"));
        response.sendRedirect("/list-qa.do");
    }
}
