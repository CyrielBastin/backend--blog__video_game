package com.project.blog__video_game.entity;

import javax.persistence.*;
import java.util.List;


@Entity
public class Article
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private int userId;
    private int articleTypeId;
    private int videoGameId;
    private String content;
    private String postedAt;
    /*
    @OneToMany(mappedBy = "article")
    private List<Commentary> list_commentary;
    */


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getArticleTypeId() {
        return articleTypeId;
    }

    public void setArticleTypeId(int articleTypeId) {
        this.articleTypeId = articleTypeId;
    }

    public int getVideoGameId() {
        return videoGameId;
    }

    public void setVideoGameId(int videoGameId) {
        this.videoGameId = videoGameId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPostedAt() {
        return postedAt;
    }

    public void setPostedAt(String postedAt) {
        this.postedAt = postedAt;
    }

    /*
    public List<Commentary> getList_commentary() {
        return list_commentary;
    }

    public void setList_commentary(List<Commentary> list_commentary) {
        this.list_commentary = list_commentary;
    }
     */
}
