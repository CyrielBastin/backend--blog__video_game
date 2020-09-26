package com.project.blog__video_game.service;

import com.project.blog__video_game.entity.Commentary;
import com.project.blog__video_game.repository.CommentaryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commentaryService")
public class CommentaryService implements RESTService<Commentary>
{
    @Autowired
    private CommentaryRepository commentaryRepository;


    @Override
    public Commentary save(Commentary obj) {
        return commentaryRepository.save(obj);
    }

    @Override
    public boolean delete(Integer id) {
        commentaryRepository.deleteById(id);

        return true;
    }

    @Override
    public Commentary getById(Integer id) {
        return commentaryRepository.findById(id)
                                   .orElse(new Commentary());
    }

    @Override
    public List<Commentary> getAll() {
        return commentaryRepository.findAll();
    }
}
