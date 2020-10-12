package com.project.blog__video_game.controller;

import com.project.blog__video_game.entity.Commentary;
import com.project.blog__video_game.service.CommentaryService;
import com.project.blog__video_game.service.JSONService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;


@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class CommentaryController
{
    @Resource(name = "commentaryService")
    private CommentaryService commentaryService;


    @GetMapping("/REST/commentaries/{id}")
    public String getCommentaryByIdREST (@PathVariable Integer id)
    {
        Commentary commentary = commentaryService.getById(id);

        return JSONService.stringify(commentary);
    }

    @GetMapping("/REST/commentaries")
    public String getAllCommentariesREST ()
    {
        List<Commentary> list_commentaries = commentaryService.getAll();

        return JSONService.stringify(list_commentaries);
    }

    //====================================================================================================
    //
    //====================================================================================================

    @PostMapping("/REST/commentaries/new")
    public void postNewCommentary (@RequestBody Commentary commentary)
    {
        commentaryService.save(commentary);
    }
}
