package com.project.blog__video_game.controller;

import com.project.blog__video_game.entity.User;
import com.project.blog__video_game.service.JSONService;
import com.project.blog__video_game.service.UserService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;


@RestController
public class UserController
{
    @Resource(name = "userService")
    private UserService userService;


    @GetMapping("/REST/users/{id}")
    public String getUserByIdREST (@PathVariable Integer id)
    {
        User user = userService.getById(id);

        return JSONService.stringify(user);
    }

    @GetMapping("/REST/users")
    public String getAllUsersREST ()
    {
        List<User> list_users = userService.getAll();

        return JSONService.stringify(list_users);
    }
}
