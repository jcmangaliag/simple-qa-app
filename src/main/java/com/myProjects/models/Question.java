package com.myProjects.models;

import java.util.ArrayList;
import java.util.List;

public class Question {
    
    private String id;
    private String details;
    private String author;
    private List<Answer> answers;
    
    public Question(String id) {
        super();
        this.id = id;
    }
    
    public Question(String id, String question, String author) {
        super();
        this.id = id;
        this.details = question;
        this.author = author;
        answers = new ArrayList<>();
    }
    
    public void includeAnswer(Answer answer) {
        answers.add(answer);
    }
    
    public void deleteAnswer(Answer answer) {
        answers.remove(answer);
    }

    public String getId() {
        return id;
    }

    public String getDetails() {
        return details;
    }

    public String getAuthor() {
        return author;
    }
    
    public List<Answer> getAnswers() {
        return answers;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Question other = (Question) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        return true;
    }
}
