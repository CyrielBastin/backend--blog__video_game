package com.project.blog__video_game.controller;

import com.project.blog__video_game.entity.Article;
import com.project.blog__video_game.entity.Commentary;
import com.project.blog__video_game.service.ArticleService;
import com.project.blog__video_game.service.JSONService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;


@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class ArticleController
{
    @Resource(name = "articleService")
    private ArticleService articleService;


    @GetMapping("/REST/articles/{id}")
    public String getArticleByIdREST (@PathVariable Integer id)
    {
        Article article = articleService.getById(id);

        return JSONService.stringify(article);
    }

    @GetMapping("/REST/articles")
    public String getAllArticlesREST ()
    {
        List<Article> list_articles = articleService.getAll();

        return JSONService.stringify(list_articles);
    }

    @GetMapping("/REST/articles/desc")
    public String getAllArticlesByPostedAtDescREST ()
    {
        List<Article> list_articles = articleService.getAllByPostedAtDesc();

        return JSONService.stringify(list_articles);
    }

    @GetMapping("/REST/articles/{id}/commentaries")
    public String getAllCommentariesByArticle (@PathVariable Integer id)
    {
        List<Commentary> list_commentaries = articleService.getAllCommentariesByArticleId(id);

        return JSONService.stringify(list_commentaries);
    }

    @GetMapping("/REST/articles/{id}/commentaries/desc")
    public String getAllCommentariesByArticleDesc (@PathVariable Integer id)
    {
        List<Commentary> list_commentaries = articleService.getAllCommentariesByArticleIdDesc(id);

        return JSONService.stringify(list_commentaries);
    }
}
