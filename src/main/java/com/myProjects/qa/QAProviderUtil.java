package com.myProjects.qa;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import com.myProjects.models.Answer;
import com.myProjects.models.Question;

public class QAProviderUtil {
    
    private QAProviderUtil() { 
        // prevents instantiating Utility class
    }
    
    public static List<Question> generateData() {
        List<Question> questions = new ArrayList<>();
        
        Question question1 = new Question(generateId(), 
                "What is the capital of Thailand?", "markEric01");
        question1.includeAnswer(new Answer(generateId(), 
                "BangCock!", "thomas_Angelo"));
        
        Question question2 = new Question(generateId(), 
                "How to create a web application using Java?", "hacker_101");
        
        Question question3 = new Question(generateId(), 
                "Who is the greatest programmer of all time?", "markEric01");
        question3.includeAnswer(new Answer(generateId(), 
                "Bill Gates period.", "techie"));
        question3.includeAnswer(new Answer(generateId(), 
                "Steve Jobs :D", "anne_25"));
        question3.includeAnswer(new Answer(generateId(), 
                "Lol what are u saying. Mark Zuckerberg is the greatest ever. "
                + "He created the most famous social media in the world which is "
                + "Facebook.", "hacker_101"));

        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        
        return questions;
    }
    
    public static String generateId() {
        return UUID.randomUUID().toString();
    }
    
    
}
