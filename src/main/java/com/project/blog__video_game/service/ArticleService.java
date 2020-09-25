package com.project.blog__video_game.service;

import com.project.blog__video_game.entity.Article;
import com.project.blog__video_game.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("articleService")
public class ArticleService implements RESTService<Article>
{
    @Autowired
    private ArticleRepository articleRepository;


    @Override
    public Article save(Article obj) {
        return articleRepository.save(obj);
    }

    @Override
    public boolean delete(Integer id) {
        articleRepository.deleteById(id);
        return true;
    }

    @Override
    public Article getById(Integer id) {
        return articleRepository.findById(id)
                                .orElse(new Article());
    }

    @Override
    public List<Article> getAll() {
        return articleRepository.findAll();
    }
}
