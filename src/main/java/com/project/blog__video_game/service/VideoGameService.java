package com.project.blog__video_game.service;

import com.project.blog__video_game.entity.VideoGame;
import com.project.blog__video_game.repository.VideoGameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("videoGameService")
public class VideoGameService implements RESTService<VideoGame>
{
    @Autowired
    private VideoGameRepository videoGameRepository;


    @Override
    public VideoGame save(VideoGame obj) {
        return videoGameRepository.save(obj);
    }

    @Override
    public boolean delete(Integer id) {
        videoGameRepository.deleteById(id);

        return true;
    }

    @Override
    public VideoGame getById(Integer id) {
        return videoGameRepository.findById(id)
                                  .orElse(new VideoGame());
    }

    @Override
    public List<VideoGame> getAll() {
        return videoGameRepository.findAll();
    }
}
