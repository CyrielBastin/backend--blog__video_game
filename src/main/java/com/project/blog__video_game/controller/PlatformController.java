package com.project.blog__video_game.controller;

import com.project.blog__video_game.entity.Platform;
import com.project.blog__video_game.entity.VideoGame;
import com.project.blog__video_game.service.JSONService;
import com.project.blog__video_game.service.PlatformService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;


@RestController
public class PlatformController
{
    @Resource(name = "platformService")
    private PlatformService platformService;


    @GetMapping("/REST/platforms/{id}")
    public String getPlatformByIdREST (@PathVariable Integer id)
    {
        Platform platform = platformService.getById(id);

        return JSONService.stringify(platform);
    }

    @GetMapping("/REST/platforms")
    public String getAllPlatformsREST ()
    {
        List<Platform> list_platforms = platformService.getAll();

        return JSONService.stringify(list_platforms);
    }

    @GetMapping("/REST/platforms/{id}/video-games")
    public String getAllVideoGamesByPlatform (@PathVariable Integer id)
    {
        List<VideoGame> list_videoGames = platformService.getAllVideoGamesByPlatformId(id);

        return JSONService.stringify(list_videoGames);
    }
}
