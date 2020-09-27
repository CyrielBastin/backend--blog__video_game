package com.project.blog__video_game.repository;

import com.project.blog__video_game.entity.Commentary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface CommentaryRepository extends JpaRepository<Commentary, Integer>
{
    List<Commentary> findAllByUserId (Integer id);

    List<Commentary> findAllByArticleId (Integer id);
}
