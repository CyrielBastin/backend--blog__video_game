package com.project.blog__video_game.repository;

import com.project.blog__video_game.entity.VideoGame;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface VideoGameRepository extends JpaRepository<VideoGame, Integer>
{
    List<VideoGame> findAllByGenreId (Integer id);

    List<VideoGame> findAllByPlatformId (Integer id);
}
