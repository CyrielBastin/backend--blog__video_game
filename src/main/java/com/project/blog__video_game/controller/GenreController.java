package com.project.blog__video_game.controller;

import com.project.blog__video_game.entity.Genre;
import com.project.blog__video_game.entity.VideoGame;
import com.project.blog__video_game.service.GenreService;
import com.project.blog__video_game.service.JSONService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class GenreController
{
    @Resource(name = "genreService")
    private GenreService genreService;


    @GetMapping("/REST/genres/{id}")
    public String getGenreByIdREST (@PathVariable Integer id)
    {
        Genre genre = genreService.getById(id);

        return JSONService.stringify(genre);
    }

    @GetMapping("/REST/genres")
    public String getAllGenresREST ()
    {
        List<Genre> list_genres = genreService.getAll();

        return JSONService.stringify(list_genres);
    }

    @GetMapping("/REST/genres/{id}/video-games")
    public String getAllVideoGamesByGenre (@PathVariable Integer id)
    {
        List<VideoGame> list_videoGames = genreService.getAllVideoGamesByGenreId(id);

        return JSONService.stringify(list_videoGames);
    }
}
