package com.project.blog__video_game.controller;

import com.project.blog__video_game.entity.Article;
import com.project.blog__video_game.service.ArticleService;
import com.project.blog__video_game.service.JSONService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;


@RestController
public class ArticleController
{
    @Resource(name = "articleService")
    private ArticleService articleService;


    @GetMapping("/REST/article/{id}")
    public String getArticleByIdREST (@PathVariable Integer id)
    {
        Article article = articleService.getById(id);

        return JSONService.stringify(article);
    }

    @GetMapping("/REST/article")
    public String getAllArticlesREST ()
    {
        List<Article> list_articles = articleService.getAll();

        return JSONService.stringify(list_articles);
    }

//=============================================================================================================
//=============================================================================================================
//=============================================================================================================

    @GetMapping("/article/{id}")
    public String getArticleById (@PathVariable Integer id)
    {
        Article article = articleService.getById(id);

        return "<pre>" + JSONService.stringify(article) + "</pre>";
    }

    @GetMapping("/article")
    public String getAllArticles ()
    {
        List<Article> list_articles = articleService.getAll();

        return "<pre>" + JSONService.stringify(list_articles) + "</pre>";
    }
}
