package com.myProjects.qa;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myProjects.models.Question;

@WebServlet(urlPatterns = "/answer-question.do")
public class AnswerQuestionServlet extends HttpServlet {
    
    private QAService qaService = new QAService();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        Question question = qaService.getQuestionById(request.getParameter("questionId"));
        request.setAttribute("question", question);
        request.getRequestDispatcher("/WEB-INF/views/answer-question.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String questionId = request.getParameter("questionId");
        String answerDetails = request.getParameter("answerDetails");
        String author = request.getParameter("author");
        
        qaService.addAnswer(questionId, answerDetails, author);
        response.sendRedirect("/list-qa.do");
    }
}
