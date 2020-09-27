package com.project.blog__video_game.entity;

import javax.persistence.*;

@Entity
public class Commentary
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int user_id;
    private int article_id;
    private String comment;
    private String posted_at;
    /*
    @ManyToOne
    @JoinColumn(name = "article_id", nullable = false, insertable = false, updatable = false)
    private Article article;
     */


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getArticle_id() {
        return article_id;
    }

    public void setArticle_id(int article_id) {
        this.article_id = article_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getPosted_at() {
        return posted_at;
    }

    public void setPosted_at(String posted_at) {
        this.posted_at = posted_at;
    }
}
