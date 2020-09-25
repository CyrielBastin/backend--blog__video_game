package com.project.blog__video_game.repository;

import com.project.blog__video_game.entity.VideoGame;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VideoGameRepository extends JpaRepository<VideoGame, Integer>
{}
