package com.project.blog__video_game.controller;

import com.project.blog__video_game.entity.Article;
import com.project.blog__video_game.entity.VideoGame;
import com.project.blog__video_game.service.JSONService;
import com.project.blog__video_game.service.VideoGameService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;


@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class VideoGameController
{
    @Resource(name = "videoGameService")
    private VideoGameService videoGameService;


    @GetMapping("/REST/video-games/{id}")
    public String getVideoGameByIdREST (@PathVariable Integer id)
    {
        VideoGame videoGame = videoGameService.getById(id);

        return JSONService.stringify(videoGame);
    }

    @GetMapping("/REST/video-games")
    public String getAllVideoGamesREST ()
    {
        List<VideoGame> list_videoGames = videoGameService.getAll();

        return JSONService.stringify(list_videoGames);
    }

    @GetMapping("/REST/video-games/{id}/articles")
    public String getAllArticlesByVideoGame (@PathVariable Integer id)
    {
        List<Article> list_articles = videoGameService.getAllArticlesByVideoGameId(id);

        return JSONService.stringify(list_articles);
    }
}
