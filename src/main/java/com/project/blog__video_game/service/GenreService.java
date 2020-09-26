package com.project.blog__video_game.service;

import com.project.blog__video_game.entity.Genre;
import com.project.blog__video_game.repository.GenreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("genreService")
public class GenreService implements RESTService<Genre>
{
    @Autowired
    private GenreRepository genreRepository;


    @Override
    public Genre save(Genre obj) {
        return genreRepository.save(obj);
    }

    @Override
    public boolean delete(Integer id) {
        genreRepository.deleteById(id);

        return true;
    }

    @Override
    public Genre getById(Integer id) {
        return genreRepository.findById(id)
                              .orElse(new Genre());
    }

    @Override
    public List<Genre> getAll() {
        return genreRepository.findAll();
    }
}
