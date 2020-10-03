package com.project.blog__video_game.controller;

import com.project.blog__video_game.entity.Article;
import com.project.blog__video_game.entity.ArticleType;
import com.project.blog__video_game.service.ArticleTypeService;
import com.project.blog__video_game.service.JSONService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class ArticleTypeController
{
    @Resource(name = "articleTypeService")
    private ArticleTypeService articleTypeService;


    @GetMapping("/REST/article-types/{id}")
    public String getArticleTypesByIdREST (@PathVariable Integer id)
    {
        ArticleType articleType = articleTypeService.getById(id);

        return JSONService.stringify(articleType);
    }

    @GetMapping("/REST/article-types")
    public String getAllArticlesTypesREST ()
    {
        List<ArticleType> list_articleTypes = articleTypeService.getAll();

        return JSONService.stringify(list_articleTypes);
    }

    @GetMapping("/REST/article-types/{id}/articles")
    public String getAllArticlesByType (@PathVariable Integer id)
    {
        List<Article> list_articles = articleTypeService.getAllArticlesByArticleType(id);

        return JSONService.stringify(list_articles);
    }
}
