package com.myProjects.qa;

import java.util.List;

import com.myProjects.models.Answer;
import com.myProjects.models.Question;

public class QAService {
    
    private static List<Question> questions = QAProviderUtil.generateData();
    
    public void addQuestion(String questionDetails, String author) {
       questions.add(new Question(QAProviderUtil.generateId(), questionDetails, author));
    }
    
    public void removeQuestion(String questionId) {
        questions.remove(new Question(questionId));
    }
    
    public List<Question> getQuestions() {
        return questions;
    }
    
    public void addAnswer(String questionId, String answerDetails, String author) {
        Question question = getQuestionById(questionId);
        question.includeAnswer(new Answer(QAProviderUtil.generateId(), answerDetails, author));
    }
    
    public void removeAnswer(String questionId, String answerId) {
        Question question = getQuestionById(questionId);
        question.deleteAnswer(new Answer(answerId));
    }
    
    public Question getQuestionById(String questionId) {        
        return questions.stream()
                .filter(question -> questionId.equals(question.getId()))
                .findAny()
                .orElse(null);
    }
}
