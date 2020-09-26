package com.project.blog__video_game.service;

import com.project.blog__video_game.entity.ArticleType;
import com.project.blog__video_game.repository.ArticleTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("articleTypeService")
public class ArticleTypeService implements RESTService<ArticleType>
{
    @Autowired
    ArticleTypeRepository articleTypeRepository;

    @Override
    public ArticleType save(ArticleType obj) {
        return articleTypeRepository.save(obj);
    }

    @Override
    public boolean delete(Integer id) {
        articleTypeRepository.deleteById(id);

        return true;
    }

    @Override
    public ArticleType getById(Integer id) {
        return articleTypeRepository.findById(id)
                                    .orElse(new ArticleType());
    }

    @Override
    public List<ArticleType> getAll() {
        return articleTypeRepository.findAll();
    }
}
