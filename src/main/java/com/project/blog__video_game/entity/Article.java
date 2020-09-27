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
    private int user_id;
    private int article_type_id;
    private int video_game_id;
    private String content;
    private String posted_at;
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

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getArticle_type_id() {
        return article_type_id;
    }

    public void setArticle_type_id(int article_type_id) {
        this.article_type_id = article_type_id;
    }

    public int getVideo_game_id() {
        return video_game_id;
    }

    public void setVideo_game_id(int video_game_id) {
        this.video_game_id = video_game_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPosted_at() {
        return posted_at;
    }

    public void setPosted_at(String posted_at) {
        this.posted_at = posted_at;
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
