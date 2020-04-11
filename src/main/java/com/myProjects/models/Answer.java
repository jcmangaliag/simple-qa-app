package com.myProjects.models;

public class Answer {
    
    private String id;
    private String details;
    private String author;
    
    public Answer(String id) {
        super();
        this.id = id;
    }
    
    public Answer(String id, String answer, String author) {
        super();
        this.id = id;
        this.details = answer;
        this.author = author;
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
        Answer other = (Answer) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        return true;
    } 
}
