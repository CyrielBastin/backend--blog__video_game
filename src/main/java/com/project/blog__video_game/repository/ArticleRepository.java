package com.project.blog__video_game.repository;

import com.project.blog__video_game.entity.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface ArticleRepository extends JpaRepository<Article, Integer>
{
    List<Article> findAllByUserId (Integer userId);

    List<Article> findAllByArticleTypeId (Integer id);

    List<Article> findAllByVideoGameId (Integer id);
}
